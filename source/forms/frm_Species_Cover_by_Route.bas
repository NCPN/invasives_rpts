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
    Left =2580
    Top =7275
    Right =9705
    Bottom =10860
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x3d34192b53bbe340
    End
    Caption ="Species Cover"
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
                    Left =1320
                    Top =240
                    Width =4575
                    Height =420
                    FontSize =16
                    FontWeight =700
                    Name ="lblHeader"
                    Caption ="Species Cover by Route"
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
                    RowSource ="SELECT DISTINCT Visit_Year FROM qry_sel_cover_Year WHERE [Unit_Code] = 'COLM' OR"
                        "DER BY Visit_Year; "
                    ColumnWidths ="2820"
                    AfterUpdate ="[Event Procedure]"
                    OnGotFocus ="[Event Procedure]"
                    OnClick ="[Event Procedure]"
                    OnChange ="[Event Procedure]"

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
                    Caption ="Create Table"
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
' MODULE:       frm_Species_Cover_by_Route
' Level:        Form module
' Version:      1.01
' Description:  File and directory related functions & subroutines
'
' Source/date:  Unknown
' Adapted:      Bonnie Campbell, May 2017
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

    'initialize (year & create table button disabled until park selection)
    Me.Visit_Year.Enabled = False
    Me.btnReport.Enabled = False

Exit_Procedure:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Form_Open[frm_Species_Cover_by_Route form])"
    End Select
    Resume Exit_Procedure
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
    Me!Visit_Year.RowSource = "SELECT Distinct Visit_Year FROM qry_sel_cover_Year WHERE [Unit_Code] = '" & Me!Park_Code & "' ORDER BY Visit_Year"
    Me.Refresh
  End If

Exit_Procedure:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Park_Code_AfterUpdate[frm_Species_Cover_by_Route form])"
    End Select
    Resume Exit_Procedure
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

  If Not IsNull(Me!Visit_Year) Then
    Me!btnReport.Enabled = True
  End If

Exit_Procedure:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Visit_Year_AfterUpdate[frm_Species_Cover_by_Route form])"
    End Select
    Resume Exit_Procedure
End Sub

' ---------------------------------
' SUB:          btnReport_Click
' Description:  Builds work table for species cover by route
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Russ DenBleyker - January 2010
' Adapted:      Bonnie Campbell, May 2017 - initial version
' Revisions:    RDB - 1/2010    - initial version
'               BLC - 5/10/2017 - added documentation, removed error message for Visit_Year (revised
'                                 to be disabled instead)
' ---------------------------------
Private Sub btnReport_Click()
On Error GoTo Err_Handler

  Dim db As DAO.Database
  Dim tdf As TableDef
  Dim WorkOutput As DAO.Recordset
  Dim SpeciesIn As DAO.Recordset
  Dim Transects As DAO.Recordset
  Dim WorkStdDev As DAO.Recordset
  Dim Routes As DAO.Recordset
  Dim strSQL As String
  Dim PlotSave As String
  Dim SpeciesSave As String
  Dim CommonSave As String
  Dim SearchChar As String
  Dim strFieldName As String
  Dim strRouteColumnName As String
  Dim strCountColumnName As String
  Dim strCoverColumnName As String
  Dim strSEColumnName As String
  Dim RouteArray(50, 1) As String  '  Array for route names
  ' column 1 is route name
  ' column 2 is total transect count
  Dim TCount As Variant
  Dim ArrayIndex As Integer
  Dim ArrayEnd As Integer
  Dim EmptyTransects As Integer
  Dim PlotCount As Integer  ' Count of transects in which species was found
  Dim intTextLength As Integer
  Dim CoverSum As Double
  Dim CoverCalc As Double
  Dim varStandardDeviation As Variant
  
'   If IsNull(Me!Park_Code) Or IsNull(Me!Visit_Year) Then
'     MsgBox "You must select both park and year.", , "Species cover by route"
'     Exit Sub
'   End If
   
'   On Error Resume Next
   'remove existing work table (if it exists)
   DoCmd.DeleteObject acTable, "tbl_wrk_Route_Species"
   
'   On Error GoTo Err_ButtonReport_Click
   ' Copy template table
   DoCmd.CopyObject , "tbl_wrk_Route_Species", acTable, "tbl_Species_Cover_Template"

  ' Create necessary table fields
   strSQL = "SELECT Plot_ID FROM qry_Group_Cover_Route WHERE Unit_Code= '" & Me!Park_Code & _
            "' AND Visit_Year= " & Me!Visit_Year
   Set db = CurrentDb
   Set Routes = db.OpenRecordset(strSQL)
   Set tdf = db.TableDefs("tbl_wrk_Route_Species")
   
   ArrayIndex = 0
   
   'iterate through transect routes
   Do Until Routes.EOF
     strSQL = "SELECT Count(Transect) AS Transect_Count " & _
        "FROM qry_Group_Route_Transect " & _
        "GROUP BY Unit_Code, Visit_Year, Plot_ID " & _
        "HAVING Unit_Code= '" & Me!Park_Code & "' AND Plot_ID= '" & Routes!Plot_ID & _
        "' AND Visit_Year= " & Me!Visit_Year
     Set Transects = db.OpenRecordset(strSQL)
     
     'save transect count
     TCount = Transects!transect_count
     
     'cleanup
     Transects.Close
     Set Transects = Nothing
     
     strRouteColumnName = Left(Routes!Plot_ID, 48) & "(" & TCount & ")"
     strCountColumnName = strRouteColumnName & "PlotCount"
     strCoverColumnName = strRouteColumnName & "CoverPct"
     strSEColumnName = strRouteColumnName & " (SE)"
     
     'add fields to table
     With tdf
  '     .Fields.Append .CreateField(strRouteColumnName, dbText, 50)
       .Fields.Append .CreateField(strCountColumnName, dbInteger)
       .Fields.Append .CreateField(strCoverColumnName, dbDouble)
       .Fields.Append .CreateField(strSEColumnName, dbDouble)
     End With
     
     'save funky route name (RDB)
     RouteArray(ArrayIndex, 0) = strRouteColumnName
     RouteArray(ArrayIndex, 1) = TCount
     
     'save last entry index
     ArrayEnd = ArrayIndex
     ArrayIndex = ArrayIndex + 1
     
     If ArrayIndex > 49 Then
       MsgBox "Route array overflow - increase array size.", , "Load Route Names"
       Exit Sub
     End If
     
     Routes.MoveNext
   Loop
   
   'cleanup
   Routes.Close
   Set tdf = Nothing
   Set Routes = Nothing

   'calculate species cover by plot
'   strSQL = "SELECT * FROM qry_Select_Species_Cover " & _
'        "WHERE Unit_Code = '" & Me!Park_Code & "' AND Visit_Year= " & Me!Visit_Year & _
'        " ORDER BY Plot_ID, Species"
   strSQL = "SELECT * FROM Select_Species_Cover " & _
        "WHERE Unit_Code = '" & Me!Park_Code & "' AND Visit_Year= " & Me!Visit_Year & _
        " ORDER BY Plot_ID, Species"
   
   Set SpeciesIn = db.OpenRecordset(strSQL)
   SpeciesIn.MoveFirst
   PlotSave = Left(SpeciesIn!Plot_ID, 48)
   SpeciesSave = SpeciesIn!Species
   CommonSave = SpeciesIn!Master_Common_Name
   PlotCount = 0
   CoverCalc = 0
   CoverSum = 0
   SearchChar = "("
   DoCmd.SetWarnings False
   DoCmd.OpenQuery "qry_Clear_StdDev"  ' Clear Standard Deviation work table
   DoCmd.SetWarnings True
   Do Until SpeciesIn.EOF
     If PlotSave <> Left(SpeciesIn!Plot_ID, 48) Or SpeciesSave <> SpeciesIn!Species Then
       ' write output record
       strSQL = "SELECT * FROM tbl_wrk_Route_Species " & _
                "WHERE [Unit_Code]= '" & Me!Park_Code & _
                "' AND [Species] = '" & SpeciesSave & "' AND [Visit_Year] = " & Me!Visit_Year
       Set WorkOutput = db.OpenRecordset(strSQL)
       If WorkOutput.EOF Then
         WorkOutput.Close
         Set WorkOutput = db.OpenRecordset("tbl_wrk_Route_Species")
         WorkOutput.AddNew
         WorkOutput!Unit_Code = Me!Park_Code
         WorkOutput!Visit_Year = Me!Visit_Year
         WorkOutput!Species = SpeciesSave
         WorkOutput!Common_Name = CommonSave
       Else
         WorkOutput.Edit
       End If
         ArrayIndex = 0
         Do Until ArrayIndex > ArrayEnd
           intTextLength = InStr(1, RouteArray(ArrayIndex, 0), SearchChar) - 1
           If Left(RouteArray(ArrayIndex, 0), intTextLength) = PlotSave Then
             strFieldName = RouteArray(ArrayIndex, 0) & "Plotcount"
             WorkOutput(strFieldName) = PlotCount
             strFieldName = RouteArray(ArrayIndex, 0) & "CoverPct"
             WorkOutput(strFieldName) = CoverSum / RouteArray(ArrayIndex, 1)
             ' Standard deviation calculations
             If RouteArray(ArrayIndex, 1) > PlotCount Then
               EmptyTransects = RouteArray(ArrayIndex, 1) - PlotCount  ' calculate number of empty transects
               Set WorkStdDev = db.OpenRecordset("tbl_wrk_StdDev")
               Do Until EmptyTransects = 0  ' add records to StdDev work table for plots in which species was not found
                 WorkStdDev.AddNew
                 WorkStdDev!CoverPct = 0 ' zero cover for these plots
                 WorkStdDev.Update
                 EmptyTransects = EmptyTransects - 1
               Loop
               WorkStdDev.Close
               Set WorkStdDev = Nothing
             End If
             varStandardDeviation = DStDev("CoverPct", "tbl_wrk_StdDev")
             If Not IsNull(varStandardDeviation) Then
               strFieldName = RouteArray(ArrayIndex, 0) & " (SE)"
               ' WorkOutput(strFieldName) = varStandardDeviation / Sqr(PlotCount)  ' Use number of plots in which species is found
               WorkOutput(strFieldName) = varStandardDeviation / Sqr(RouteArray(ArrayIndex, 1))  ' Use total plots in route
             End If
             Exit Do
           End If
           ArrayIndex = ArrayIndex + 1
           If ArrayIndex > ArrayEnd Then
             MsgBox "Name not found in route array", , "Set route name"
             Exit Sub
           End If
         Loop
         WorkOutput.Update
         WorkOutput.Close
         Set WorkOutput = Nothing
       ' Save necessary fields
       PlotSave = Left(SpeciesIn!Plot_ID, 48)
       SpeciesSave = SpeciesIn!Species
       CommonSave = SpeciesIn!Master_Common_Name
       PlotCount = 0
       CoverCalc = 0
       CoverSum = 0
       DoCmd.SetWarnings False
       DoCmd.OpenQuery "qry_Clear_StdDev"  ' Clear Standard Deviation work table
       DoCmd.SetWarnings True
     End If
     PlotCount = PlotCount + 1
     CoverCalc = 0
     Select Case SpeciesIn!Visit_Year  ' put transect average in covercalc
       Case 2008
         If Not IsNull(SpeciesIn!Q1) + IsNull(SpeciesIn!Q2) + IsNull(SpeciesIn!Q3) = -3 Then
           If Not IsNull(SpeciesIn!Q1) Then
             CoverCalc = SpeciesIn!Q1
           End If
           If Not IsNull(SpeciesIn!Q2) Then
             CoverCalc = CoverCalc + SpeciesIn!Q2
           End If
           If Not IsNull(SpeciesIn!Q3) Then
             CoverCalc = CoverCalc + SpeciesIn!Q3
           End If
         End If
       Case 2009
         If Not IsNull(SpeciesIn!Q1_3m) + IsNull(SpeciesIn!Q2_8m) + IsNull(SpeciesIn!Q3_13m) = -3 Then
           If Not IsNull(SpeciesIn!Q1_3m) Then
             CoverCalc = SpeciesIn!Q1_3m
           End If
           If Not IsNull(SpeciesIn!Q2_8m) Then
             CoverCalc = CoverCalc + SpeciesIn!Q2_8m
           End If
           If Not IsNull(SpeciesIn!Q3_13m) Then
             CoverCalc = CoverCalc + SpeciesIn!Q3_13m
           End If
         End If
       Case Else
         If Not IsNull(SpeciesIn!Q1_hm) + IsNull(SpeciesIn!Q2_5m) + IsNull(SpeciesIn!Q3_10m) = -3 Then
           If Not IsNull(SpeciesIn!Q1_hm) Then
             CoverCalc = SpeciesIn!Q1_hm
           End If
           If Not IsNull(SpeciesIn!Q2_5m) Then
             CoverCalc = CoverCalc + SpeciesIn!Q2_5m
           End If
           If Not IsNull(SpeciesIn!Q3_10m) Then
             CoverCalc = CoverCalc + SpeciesIn!Q3_10m
           End If
         End If
     End Select
     CoverSum = CoverSum + (CoverCalc / 3) ' accumulate averages
     Set WorkStdDev = db.OpenRecordset("tbl_wrk_StdDev")  ' save averages for standard deviation calculation
     WorkStdDev.AddNew
     WorkStdDev!CoverPct = (CoverCalc / 3) ' save average for plot in standard deviation work table
     WorkStdDev.Update
     WorkStdDev.Close
     Set WorkStdDev = Nothing
     SpeciesIn.MoveNext
   Loop
     ' write last output record
       strSQL = "SELECT * FROM tbl_wrk_Route_Species " & _
                "WHERE [Unit_Code]= '" & Me!Park_Code & _
                "' AND [Species] = '" & SpeciesSave & "' AND [Visit_Year] = " & Me!Visit_Year
       Set WorkOutput = db.OpenRecordset(strSQL)
       If WorkOutput.EOF Then
         WorkOutput.Close
         Set WorkOutput = db.OpenRecordset("tbl_wrk_Route_Species")
         WorkOutput.AddNew
         WorkOutput!Unit_Code = Me!Park_Code
         WorkOutput!Visit_Year = Me!Visit_Year
         WorkOutput!Species = SpeciesSave
         WorkOutput!Common_Name = CommonSave
       Else
         WorkOutput.Edit
       End If
         ArrayIndex = 0
         Do Until ArrayIndex > ArrayEnd
           intTextLength = InStr(1, RouteArray(ArrayIndex, 0), SearchChar) - 1
           If Left(RouteArray(ArrayIndex, 0), intTextLength) = PlotSave Then
             strFieldName = RouteArray(ArrayIndex, 0) & "Plotcount"
             WorkOutput(strFieldName) = PlotCount
             strFieldName = RouteArray(ArrayIndex, 0) & "CoverPct"
             WorkOutput(strFieldName) = CoverSum / RouteArray(ArrayIndex, 1)
             ' Standard deviation calculations
             If RouteArray(ArrayIndex, 1) > PlotCount Then
               EmptyTransects = RouteArray(ArrayIndex, 1) - PlotCount  ' calculate number of empty transects
               Set WorkStdDev = db.OpenRecordset("tbl_wrk_StdDev")
               Do Until EmptyTransects = 0  ' add records to StdDev work table for plots in which species was not found
                 WorkStdDev.AddNew
                 WorkStdDev!CoverPct = 0 ' zero cover for these plots
                 WorkStdDev.Update
                 EmptyTransects = EmptyTransects - 1
               Loop
               WorkStdDev.Close
               Set WorkStdDev = Nothing
             End If
             varStandardDeviation = DStDev("CoverPct", "tbl_wrk_StdDev")
             If Not IsNull(varStandardDeviation) Then
               strFieldName = RouteArray(ArrayIndex, 0) & " (SE)"
               WorkOutput(strFieldName) = varStandardDeviation / Sqr(RouteArray(ArrayIndex, 1))  ' Use total plots in route
             End If
             Exit Do
           End If
           ArrayIndex = ArrayIndex + 1
           If ArrayIndex > ArrayEnd Then
             MsgBox "Name not found in route array", , "Set route name"
             Exit Sub
           End If
         Loop
         WorkOutput.Update
   SpeciesIn.Close
   Set SpeciesIn = Nothing
   WorkOutput.Close
   Set WorkOutput = Nothing
 '   MsgBox "Finished - results are in tbl_wrk_Route_Species.", , "Species Cover by Route"
   DoCmd.OpenQuery "qry_List_Route_Species"
    
Exit_Procedure:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnReport_Click[frm_Species_Cover_by_Route])"
    End Select
    Resume Exit_Procedure
End Sub

' ---------------------------------
' SUB:          btnClose_Click
' Description:  Form closing actions
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Russ DenBleyker - January 2010
' Adapted:      Bonnie Campbell, May 2017 - initial version
' Revisions:    RDB - 1/2010    - initial version
'               BLC - 5/10/2017 - added documentation
' ---------------------------------
Private Sub btnClose_Click()
On Error GoTo Err_Handler

    DoCmd.Close

Exit_Procedure:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnClose_Click[frm_Species_Cover_by_Route])"
    End Select
    Resume Exit_Procedure
End Sub

Private Sub Visit_Year_Change()
 Debug.Print Me.Visit_Year.RowSource
End Sub

Private Sub Visit_Year_Click()

 
End Sub

Private Sub Visit_Year_GotFocus()
 Debug.Print Me.Visit_Year.RowSource
End Sub
