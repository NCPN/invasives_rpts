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
    Left =705
    Top =3285
    Right =7650
    Bottom =6615
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x3d34192b53bbe340
    End
    Caption ="Infestation by Growth Stage"
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
                    Left =1335
                    Top =240
                    Width =4545
                    Height =420
                    FontSize =16
                    FontWeight =700
                    Name ="Label3"
                    Caption ="Infestation by Growth Stage"
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
                    Caption ="Open Query"
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
' MODULE:       frm_Select_Infest_by_Growth
' Level:        Form module
' Version:      1.01
' Description:  Transect count related functions & subroutines
'
' Source/date:  Unknown
' Adapted:      Bonnie Campbell, June 2017
' Revisions:    Unknown        - 1.00 - initial version
'               BLC, 5/10/2017 - 1.01 - documentation, added Form_Open(), Visit_Year_AfterUpdate()
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

    'initialize (year & query button disabled until park selection)
    Me.Visit_Year.Enabled = False
    Me.btnReport.Enabled = False

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Form_Open[frm_Select_Infest_by_Growth form])"
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
    Me!Visit_Year = "" 'clear value
    Me!btnReport.Enabled = False
    Me.Refresh
  End If

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Park_Code_AfterUpdate[frm_Select_Infest_by_Growth form])"
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
            "Error encountered (#" & Err.Number & " - Visit_Year_AfterUpdate[frm_Select_Infest_by_Growth form])"
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

    Dim stQryName As String

    If IsNull(Me!Park_Code) Or IsNull(Me!Visit_Year) Then
      MsgBox "You must select both park and year.", , "Infestation by Growth Stage"
      Exit Sub
    End If
    stQryName = "qry_Infest_by_Growth_Stage"
    DoCmd.OpenQuery stQryName

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnReport_Click[frm_Select_Infest_by_Growth form])"
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
            "Error encountered (#" & Err.Number & " - btnClose_Click[frm_Select_Infest_by_Growth form])"
    End Select
    Resume Exit_Handler
End Sub
