Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    TabularFamily =127
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    DatasheetFontHeight =9
    ItemSuffix =13
    Left =885
    Top =6060
    Right =8085
    Bottom =9645
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x3d34192b53bbe340
    End
    Caption ="Infestations by Size Class"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
    PrtMip = Begin
        0x6801000068010000680100006801000000000000201c0000e010000001000000 ,
        0x010000006801000000000000a10700000100000001000000
    End
    AllowDatasheetView =0
    AllowPivotTableView =0
    AllowPivotChartView =0
    AllowPivotChartView =0
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            FontName ="Tahoma"
        End
        Begin CommandButton
            FontSize =8
            FontWeight =400
            ForeColor =-2147483630
            FontName ="Tahoma"
            BorderLineStyle =0
        End
        Begin ComboBox
            SpecialEffect =2
            BorderLineStyle =0
            FontName ="Tahoma"
        End
        Begin Section
            Height =3600
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =1425
                    Top =240
                    Width =4365
                    Height =420
                    FontSize =16
                    FontWeight =700
                    Name ="Label3"
                    Caption ="Infestations by Size"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4440
                    Top =2580
                    Width =1350
                    Height =299
                    Name ="btnClose"
                    Caption ="Close Form"
                    OnClick ="[Event Procedure]"

                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                End
                Begin ComboBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    ListWidth =2880
                    Left =2820
                    Top =1080
                    Width =2520
                    TabIndex =1
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"100\""
                    Name ="Park_Code"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tlu_Parks.ParkCode, tlu_Parks.ParkName FROM tlu_Parks; "
                    ColumnWidths ="0;2565"
                    AfterUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =1560
                            Top =1080
                            Width =1140
                            Height =245
                            FontWeight =700
                            Name ="Park_Code_Label"
                            Caption ="Select Park:"
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    ListWidth =720
                    Left =2820
                    Top =1680
                    Width =1200
                    TabIndex =2
                    ColumnInfo ="\"\";\"\";\"3\";\"2\""
                    Name ="Visit_Year"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT qry_sel_Infest_Year.Visit_Year FROM qry_sel_Infest_Year; "
                    ColumnWidths ="2820"
                    AfterUpdate ="[Event Procedure]"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =1380
                            Top =1680
                            Width =1320
                            Height =245
                            FontWeight =700
                            Name ="Plot_ID_Label"
                            Caption ="Select Year:"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =1440
                    Top =2580
                    Width =1350
                    Height =299
                    TabIndex =3
                    Name ="btnReport"
                    Caption ="Preview Report"
                    OnClick ="[Event Procedure]"

                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                End
            End
        End
    End
End
CodeBehindForm
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

' =================================
' MODULE:       frm_Select_Infest_by_Size
' Level:        Form module
' Version:      1.02
' Description:  Infestation data by size related functions & subroutines
'
' Source/date:  Unknown
' Adapted:      Bonnie Campbell, June 2017
' Revisions:    Unknown        - 1.00 - initial version
'               BLC, 5/10/2017 - 1.01 - documentation, added Form_Open(), Visit_Year_AfterUpdate()
'               BLC, 6/6/2017  - 1.02 - Added documentation, revised error handling
' =================================

' ---------------------------------
'  Methods
' ---------------------------------

' ---------------------------------
' SUB:          Form_Open
' Description:  Form opening actions
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Bonnie Campbell, May 2017 - initial version
' Adapted:      -
' Revisions:    BLC - 5/10/2017 - initial version
' ---------------------------------
Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Handler

    'initialize (year & report/query button disabled until park selection)
    Me.Visit_Year.Enabled = False
    Me.btnReport.Enabled = False

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Form_Open[frm_Select_Infest_by_Size form])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' SUB:          Park_Code_AfterUpdate
' Description:  Sets park code/visit yeas filtering
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  -
' Adapted:      Bonnie Campbell, May 2017 - initial version
' Revisions:    Unknown         - initial version
'               BLC - 5/10/2017 - added documentation, enabled Visit_Year
' ---------------------------------
Private Sub Park_Code_AfterUpdate()
On Error GoTo Err_Handler

  If Not IsNull(Me!Park_Code) Then
    Me!Visit_Year.Enabled = True
    Me!Visit_Year.RowSource = "SELECT DISTINCT Visit_Year FROM qry_sel_Infest_Year WHERE [Unit_Code] = '" & Me!Park_Code & "' ORDER BY Visit_Year"
    Me!Visit_Year = "" 'clear prior value if it exists
    Me!btnReport.Enabled = False
    Me.Refresh
  End If

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Park_Code_AfterUpdate[frm_Select_Infest_by_Size form])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' SUB:          Visit_Year_AfterUpdate
' Description:  Sets park code/visit yeas filtering
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Bonnie Campbell, May 2017 - initial version
' Adapted:      -
' Revisions:    BLC - 5/11/2017 - initial version
' ---------------------------------
Private Sub Visit_Year_AfterUpdate()
On Error GoTo Err_Handler

  'default
  Me!btnReport.Enabled = False

  If Not IsNull(Me!Visit_Year) Then
    Me!btnReport.Enabled = True
  End If

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Visit_Year_AfterUpdate[frm_Select_Infest_by_Size form])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' SUB:          btnReport_Click
' Description:  Runs report
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Bonnie Campbell, May 2017 - initial version
' Adapted:      -
' Revisions:    JRB - unknown - initial version
'               BLC - 6/6/2017 - added documentation, revised error handling, renamed button (ButtonX > btnX)
' ---------------------------------
Private Sub btnReport_Click()
On Error GoTo Err_Handler

    Dim stDocName As String
    Dim stWhere As String
    Dim stOpenArg As String
    Dim strSQL As String
    Dim strQueryName As String
    Dim db As DAO.Database
    Dim WorkOutput As DAO.Recordset
    Dim Infest As DAO.Recordset
    Dim SpeciesSave As String
    Dim ClassName As String
    Dim NameSave As String
    Dim InfestSum As Integer
    Dim PrioritySum As Integer
    Dim ArrayIndex As Integer
    Dim SizeArray(5) As Integer
  ' Array for the four size classes

    If IsNull(Me!Park_Code) Or IsNull(Me!Visit_Year) Then
      MsgBox "You must select both park and year.", , "Infestation by Route"
      Exit Sub
    End If

  DoCmd.SetWarnings False
  DoCmd.OpenQuery "qry_Clear_Infest_Size"
  DoCmd.SetWarnings True
  
'  Build SQL statement
  strSQL = "SELECT * FROM qry_Infest_Size WHERE Unit_Code = '" & Me!Park_Code & "' AND Visit_Year = " & Me!Visit_Year
  strSQL = strSQL & " AND [Species] Is Not Null"
  strSQL = strSQL & " AND [Species] <> ''"
  strSQL = strSQL & " ORDER BY Species"
  Set db = CurrentDb

  ' Get first infestation record
   Set Infest = db.OpenRecordset(strSQL)
   If Infest.EOF Then
     MsgBox "No valid infestation records found."
     Infest.Close
     Set Infest = Nothing
     GoTo Exit_Handler
   End If
   InfestSum = 0
   PrioritySum = 0
   Infest.MoveFirst
   SpeciesSave = Infest!Species     ' Save necessary fields
   NameSave = Infest!Master_Common_Name
   ArrayIndex = 0
   Do Until ArrayIndex > 4
     SizeArray(ArrayIndex) = 0
     ArrayIndex = ArrayIndex + 1
   Loop
   
   Set WorkOutput = db.OpenRecordset("tbl_wrk_Infest_Size")
   
   Do Until Infest.EOF
     If SpeciesSave <> Infest!Species Then  ' New plot code
       WorkOutput.AddNew
       WorkOutput!UnitCode = Me!Park_Code
       WorkOutput!Species = SpeciesSave  ' Set species
       WorkOutput!VisitYear = Me!Visit_Year  ' Set visit date
       WorkOutput!CommonName = NameSave
       WorkOutput!InfestTot = InfestSum
       WorkOutput!PriorityTot = PrioritySum
       ArrayIndex = 0
       Do Until ArrayIndex > 4
         ClassName = "Class" & (ArrayIndex + 1) ' Set the class size field name
         WorkOutput(ClassName) = SizeArray(ArrayIndex)
         SizeArray(ArrayIndex) = 0
         ArrayIndex = ArrayIndex + 1
       Loop
       WorkOutput.Update  ' Write species record
       InfestSum = 0
       PrioritySum = 0
       SpeciesSave = Infest!Species     ' Save necessary fields
       NameSave = Infest!Master_Common_Name
     End If  ' End if for new species compare
     If Infest!Priority = 1 Then
       PrioritySum = PrioritySum + 1
     End If
     InfestSum = InfestSum + 1
     If IsNumeric(Infest!Size_Class) Then
       SizeArray((Infest!Size_Class - 1)) = SizeArray((Infest!Size_Class - 1)) + 1
     End If
     Infest.MoveNext
   Loop
   
   WorkOutput.AddNew   ' Write last record
       WorkOutput!UnitCode = Me!Park_Code
       WorkOutput!Species = SpeciesSave  ' Set species
       WorkOutput!VisitYear = Me!Visit_Year  ' Set visit date
       WorkOutput!CommonName = NameSave
       WorkOutput!InfestTot = InfestSum
       WorkOutput!PriorityTot = PrioritySum
       ArrayIndex = 0
       Do Until ArrayIndex > 4
         ClassName = "Class" & (ArrayIndex + 1) ' Set the class size field name
         WorkOutput(ClassName) = SizeArray(ArrayIndex)
         ArrayIndex = ArrayIndex + 1
       Loop
   
   WorkOutput.Update  ' Write plot record
   Set WorkOutput = Nothing
   Infest.Close
   Set Infest = Nothing
    
    stOpenArg = Me!Park_Code & Me!Visit_Year
    stDocName = "rpt_Infest_by_Size"
    DoCmd.OpenReport stDocName, acPreview, , , , stOpenArg

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnReport_Click[frm_Select_Infest_by_Size form])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' SUB:          btnClose_Click
' Description:  Closes form
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Bonnie Campbell, May 2017 - initial version
' Adapted:      -
' Revisions:    JRB - unknown - initial version
'               BLC - 6/6/2017 - added documentation, revised error handling, renamed button (ButtonX > btnX)
' ---------------------------------
Private Sub btnClose_Click()
On Error GoTo Err_Handler

    DoCmd.Close

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnClose_Click[frm_Select_Infest_by_Size form])"
    End Select
    Resume Exit_Handler
End Sub
