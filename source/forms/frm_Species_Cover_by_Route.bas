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
    Left =735
    Top =4710
    Right =7935
    Bottom =7590
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
                    Name ="Park_Code"
                    RowSourceType ="Table/Query"
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
                    RowSource ="SELECT Distinct Visit_Year FROM Select_Cover_Year WHERE [Unit_Code] = 'DINO' ORD"
                        "ER BY Visit_Year"
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
' Version:      1.09
' Description:  File and directory related functions & subroutines
'
' Source/date:  Unknown
' Adapted:      Bonnie Campbell, May 2017
' Revisions:    Unknown        - 1.00 - initial version
'               BLC, 5/10/2017 - 1.01 - documentation, added Form_Open(), Visit_Year_AfterUpdate()
'               BLC, 6/15/2017 - 1.02 - revised to pull year from Select_Cover_Year vs qry_sel_cover_year
'               BLC, 6/20/2017 - 1.03 - cleared form fields after click
'               BLC, 6/22/2017 - 1.04 - revised to construct result from queries (Route_SpeciesCover_Crosstab_*,
'                                       where * = TCount, PctCover, SE)
'               BLC, 6/25/2017 - 1.05 - move tables to RESULT TABLE group
'               BLC, 6/26/2017 - 1.06 - added REMOVE_RESULT_TABLES to control if TCount, PctCover, SE,
'                                       SpeciesCover_by_Route are removed or not (see mod_App_Settings)
'               BLC, 6/27/2017 - 1.07 - set park code rowsource
'               BLC, 6/27/2017 - 1.08 - run Create_temp_Route_Transect_AverageCover() to shift to
'                                       temp table vs. query & avoid Error 3048: Cannot open any more databases
'                                       when running Route_AverageCover_Deviations off Route_Transect_AverageCover
'                                       including 0 species transects
'               BLC, 6/29/2017 - 1.09 - run Create_temp_Route_TransectsDetected
'
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
'               BLC - 6/27/2017 - set park code rowsource
' ---------------------------------
Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Handler

    'initialize park rowsource
    'was: SELECT tlu_Parks.ParkCode, tlu_Parks.ParkName FROM tlu_Parks;
    Me.Park_Code.RowSource = "SELECT ParkCode, ParkName FROM MonitoredParks;"

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
'               BLC - 6/15/2017 - revised to pull year from Select_Cover_Year vs qry_sel_cover_year
' ---------------------------------
Private Sub Park_Code_AfterUpdate()
On Error GoTo Err_Handler

  If Not IsNull(Me!Park_Code) Then
    Me!Visit_Year.Enabled = True
    Me!Visit_Year.RowSource = "SELECT Distinct Visit_Year FROM Select_Cover_Year WHERE [Unit_Code] = '" & Me!Park_Code & "' ORDER BY Visit_Year"
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
' References:
'   elliotgr  July 14, 2011
'   https://access-programmers.co.uk/forums/showthread.php?t=212702
' Source/date:  Russ DenBleyker - January 2010
' Adapted:      Bonnie Campbell, May 2017 - initial version
' Revisions:    RDB - 1/2010    - initial version
'               BLC - 5/10/2017 - added documentation, removed error message for Visit_Year (revised
'                                 to be disabled instead)
'               BLC - 6/20/2017 - cleared form fields after click
'               BLC - 6/22/2017 - revised to construct result from queries (Route_SpeciesCover_Crosstab_*,
'                                       where * = TCount, PctCover, SE)
'               BLC - 6/25/2017 - moved tables to RESULTS TABLE group
'               BLC - 6/26/2017 - added REMOVE_RESULT_TABLES to control if TCount, PctCover, SE,
'                                 SpeciesCover_by_Route are removed or not (see mod_App_Settings)
'               BLC - 6/27/2017 - run Create_temp_Route_Transect_AverageCover() to shift to
'                                 temp table vs. query & avoid Error 3048: Cannot open any more databases
'                                 when running Route_AverageCover_Deviations off Route_Transect_AverageCover
'                                 including 0 species transects
'               BLC - 6/29/2017 - added Create_temp_Route_TransectsDetected to shift to temp
'                                 table vs. query (avoids Error 3048)
' ---------------------------------
Private Sub btnReport_Click()
On Error GoTo Err_Handler

    If IsNull(Me!Park_Code) Or IsNull(Me!Visit_Year) Then
      MsgBox "You must select both park and year.", , "Monitoring Transect Data"
      Exit Sub
    End If

    Dim db As DAO.Database
    Dim qdf As DAO.QueryDef
    Dim tbl As DAO.TableDef
    Dim strFilter As String
    Dim strWHERE As String
    Dim origSQL As String
    Dim strSQL As String
    Dim strQuery As String
    Dim qry As Variant
    Dim strTableSQL As String
    Dim strComponent As String
    Dim strNewTable As String
    Dim strTable As String
    Dim strResult As String
    Dim strResultOld As String
    Dim ary As Variant
    Dim i As Integer
    
    'prepare table name component
    strComponent = Me!Park_Code & "_" & Me!Visit_Year & "_"

    'notify user system is busy
    DoCmd.Hourglass True
    Dim msg As String
    msg = "Generating " & Me.Park_Code & " " & Me.Visit_Year & " results..."
    SysCmd acSysCmdSetStatus, msg
    
    'prepare db
    Set db = CurrentDb
    
    msg = "Generating temp tables..."
    SysCmd acSysCmdSetStatus, msg
    
    'prepare the temp_Route_TransectsDetected temp table
    If TableExists("temp_Route_TransectsDetected") Then
        DoCmd.DeleteObject acTable, "temp_Route_TransectsDetected"
    End If
    
    'hide warnings
    DoCmd.SetWarnings False
    
    msg = "Generating " & Me.Park_Code & " " & Me.Visit_Year & " temp_Route_TransectsDetected"
    SysCmd acSysCmdSetStatus, msg
    
    'run the create query that creates temp table
    DoCmd.OpenQuery "Create_temp_Route_TransectsDetected"
    
    'prepare the temp_Route_Transect_AverageCover temp table
    If TableExists("temp_Route_Transect_AverageCover") Then
        DoCmd.DeleteObject acTable, "temp_Route_Transect_AverageCover"
    End If
    
    msg = "Generating " & Me.Park_Code & " " & Me.Visit_Year & " temp_Route_Transect_AverageCover"
    SysCmd acSysCmdSetStatus, msg
    
    'run the query that creates temp table (temp_Route_Transect_AverageCover)
    DoCmd.OpenQuery "Create_temp_Route_Transect_AverageCover"
    
    'run the query that creates temp table (temp_Update_Table)
    '------------------------------------------------------------
    ' NOTE: necessary to avoid "must use updatable query" errors
    '       avoids 1:many issues by populating a table w/ one record
    '       per transect in temp_Route_Transect_AverageCover
    '       which can be joined with to generate a new table
    '       that includes all records from temp_Route_Transect_AverageCover
    '       and their associated TransectsDetected values
    '------------------------------------------------------------
    DoCmd.OpenQuery "Create_temp_Update_Table"
    
    'run query that adds TransectsDetected
    DoCmd.OpenQuery "Create_temp_Route_Transect_AverageCover_NEW"
        
    'delete the original & rename the new table
    If TableExists("temp_Route_Transect_AverageCover") Then _
        DoCmd.DeleteObject acTable, "temp_Route_Transect_AverageCover"
    
    DoCmd.Rename "temp_Route_Transect_AverageCover", acTable, _
                    "temp_Route_Transect_AverageCover_NEW"
    
'    'set array
'    ary = Array("Route_Transect_AverageCover", "Route_Transect_AverageCover_Deviations", _
'                "Route_TransectsDetected", "Update_Table")
'
'    For i = 0 To UBound(ary)
'        strTable = "temp_" & ary(i)
'
'        'move tables to TEMP TABLES group
'        SetNavGroup "TEMP TABLES", strTable, "table"
'    Next
    
'    'DDL statement for adding TransectsDetected (AFTER statement fails in Access)
'    strSQL = "ALTER TABLE temp_Route_Transect_AverageCover " & _
'                "ADD COLUMN TransectsDetected INT;" 'AFTER TransectsSampled;"
'    db.Execute strSQL, dbFailOnError
'
'    'run the update query that adds TransectsDetected data < Error: operation must use updatable query
'    DoCmd.SetWarnings False
'    DoCmd.OpenQuery "Update_temp_Route_Transect_AverageCover"
'    DoCmd.SetWarnings True
    
    'prepare the temp_Route_Transect_AverageCover_Deviations temp table
    If TableExists("temp_Route_Transect_AverageCover_Deviations") Then
        DoCmd.DeleteObject acTable, "temp_Route_Transect_AverageCover_Deviations"
    End If
    
    'run the query that creates temp table
    DoCmd.OpenQuery "Create_temp_Route_Transect_AverageCover_Deviations"

    'display warnings
    DoCmd.SetWarnings True
    
    'set array
    ary = Array("Route_Transect_AverageCover", "Route_Transect_AverageCover_Deviations", _
                "Route_TransectsDetected", "Update_Table")
    
    For i = 0 To UBound(ary)
        strTable = "temp_" & ary(i)
Debug.Print strTable
        'move tables to TEMP TABLES group
        SetNavGroup "TEMP TABLES", strTable, "table"
    Next
    
    'prepare filter clause
    strFilter = " WHERE sc.Unit_Code = '" & Me!Park_Code & _
                "' AND sc.Visit_Year = " & Me!Visit_Year & " "
            
    'set array
    ary = Array("TCount", "PctCover", "SE")
    
    For Each qry In ary
        
        msg = "Generating " & Me.Park_Code & " " & Me.Visit_Year & " " & qry & "..."
        SysCmd acSysCmdSetStatus, msg
        
        'construct query, table names
        strQuery = "Route_SpeciesCover_Crosstab_" & qry
        strNewTable = strComponent & qry
        
        'use the existing queries, but filter based on Unit_Code & Visit_Year
        Set qdf = db.QueryDefs(strQuery)
        
        'save original SQL
        origSQL = qdf.SQL
        
        'remove any existing WHERE clause (in case user saved query w/ park & year filter)
        '& reset the query def to the original SQL w/o this filtering clause
        If InStr(origSQL, "WHERE") Then
            origSQL = ReplaceTextBetween(origSQL, "WHERE", "GROUP")
            qdf.SQL = origSQL
        End If
                
        'add filter
        strSQL = Replace(Replace(qdf.SQL, ";", ""), "GROUP", strFilter & "GROUP") & ";"
        qdf.SQL = strSQL
        
        'delete table if it exists
        If TableExists(strNewTable) Then _
            DoCmd.DeleteObject acTable, strNewTable
        
        'save query to table
        strTableSQL = "SELECT * INTO " & strComponent & qry & _
                       " FROM " & strQuery & ";"
        
        DoCmd.SetWarnings False
        db.Execute strTableSQL
        DoCmd.SetWarnings True
        
        'move table to RESULT TABLES group
        SetNavGroup "RESULT TABLES", strNewTable, "table"
        
        'DoCmd.OpenQuery strQuery, acViewNormal, acReadOnly
        
        msg = "Combining " & Me.Park_Code & " " & Me.Visit_Year & " results ..."
        SysCmd acSysCmdSetStatus, msg
        
        'add the table to the overall species table
        strTable = strComponent & "SpeciesCover_by_Route"
        strResult = strTable & "_Result"
        strResultOld = strResult & "_OLD"
        
        If Not TableExists(strTable) Then
            'copy the table to new table
            DoCmd.CopyObject , strTable, acTable, strNewTable
            
            'move to RESULT TABLES group
            SetNavGroup "RESULT TABLES", strTable, "table"
        Else
            'delete only on the 1st (TCount) iteration
            If qry = "TCount" Then
                'remove existing prior results table of same name
                If TableExists(strResult) Then _
                    DoCmd.DeleteObject acTable, strResult
                
                'add table to existing table
                db.Execute CombineTableSQL(strTable, strNewTable, strResult)
                
                'move table to RESULT TABLES group
                SetNavGroup "RESULT TABLES", strResult, "table"

            Else
                'create the result table if it does not exist
                If Not TableExists(strResult) Then _
                    DoCmd.CopyObject , strResult, acTable, strTable
                
                'remove any previous "OLD" table
                'If TableExists(strResultOld) Then DoCmd.DeleteObject acTable, strResultOld
                
                'rename strResult to strResultOld
                DoCmd.Rename strResultOld, acTable, strResult
                
                'add table to existing table
                db.Execute CombineTableSQL(strResultOld, strNewTable, strResult)
                
                'remove old result
                DoCmd.DeleteObject acTable, strResultOld
            End If
            
        End If
        
        If TableExists(strResult) Then
            'move table to RESULT TABLES group
            SetNavGroup "RESULT TABLES", strResult, "table"
        End If
        
        'remove the filter (revert to original SQL) for the next iteration
        qdf.SQL = origSQL
        
    Next
    
    'cleanup & clear memory
    Set ary = Nothing
    Set qdf = Nothing
    Set tbl = Nothing
    Set db = Nothing
    
    msg = "Shifting " & Me.Park_Code & " " & Me.Visit_Year & " results columns..."
    SysCmd acSysCmdSetStatus, msg
    
    'definitions
    Dim tdf As DAO.TableDef
    Dim col As DAO.field
    Dim strCol As String
    Dim strRoute As String
    Dim strPrevRoute As String
    Dim strTCount As String, strPctCover As String, strSE As String
    
    Set db = CurrentDb
    Set tdf = db.TableDefs(strResult)
    strPrevRoute = ""
    
    With tdf
    'order result columns (fields)
    For Each col In tdf.Fields
    
        'get column name
        strCol = col.Name
        strRoute = Left(strCol, InStr(col.Name, ") ") + 1)
        
        'ignore 1-5 (static Park, Year, Species, Master Common Name, IsDead)
        If col.OrdinalPosition > 5 Then
        
            'if the routes differ we're onto another set to move
            If strRoute <> strPrevRoute Then
                strTCount = strRoute & "TCount"
                strPctCover = strRoute & "PctCover"
                strSE = strRoute & "SE"
                
                'move route's PctCover after TCount, SE after PctCover
                SetColumnOrdinalPosition tdf, strPctCover, strTCount
                SetColumnOrdinalPosition tdf, strSE, strPctCover
            
                strPrevRoute = strRoute
            End If
            
        End If
    Next
    End With

    msg = "Collapsing " & Me.Park_Code & " " & Me.Visit_Year & " results rows..."
    SysCmd acSysCmdSetStatus, msg
    
    'collapse rows of the result table
    CollapseRows tdf
    

    Me.Refresh
    
    'final version of species cover by route
    strNewTable = strComponent & "SpeciesCover_by_Route_Result_NEW"
   
    'cleanup if desired
    If REMOVE_RESULT_TABLES Then

        ary = Array("TCount", "PctCover", "SE", "SpeciesCover_by_Route", "SpeciesCover_by_Route_Result")
        For i = 0 To UBound(ary)
            If TableExists(strComponent & ary(i)) Then
                DoCmd.DeleteObject acTable, strComponent & ary(i)
            End If
        Next

    End If
        
    Dim strNewTableName As String
    strNewTableName = strComponent & "SpeciesCover_by_Route_Result"
    
    'check for existing table
    If TableExists(strNewTableName) Then
        'exists skip rename
        strNewTableName = strNewTable
    Else
        'rename results table
        DoCmd.Rename strNewTableName, acTable, strNewTable
    End If
    
    Me.Refresh
    
    'shift table to RESULT TABLES after renaming
    If TableExists(strNewTableName) Then
        'move table to RESULT TABLES group
        SetNavGroup "RESULT TABLES", strNewTableName, "table"
    End If
    
    'open results table (Park_YYYY_SpeciesCover_by_Route_Result)
    DoCmd.OpenTable strNewTableName, acViewNormal, acReadOnly

    msg = Me.Park_Code & " " & Me.Visit_Year & " results complete..."
    SysCmd acSysCmdSetStatus, msg
    
Exit_Procedure:
    'clear fields
    Me.Park_Code = ""
    Me.Visit_Year = ""

    'clear notification
    DoCmd.Hourglass False
    SysCmd acSysCmdClearStatus
    
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

' ---------------------------------
' SUB:          CollapseRows
' Description:  Collapses TCount, PctCover, SE for one species/IsDead into one row
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
'   R.Hicks, Sept 15, 2002
'   http://www.utteraccess.com/forum/copy-table-structure-vb-t117555.html
' Source/date:  Bonnie Campbell, June 22 2017
' Adapted:      -
' Revisions:    BLC - 6/22/2017 - initial version
' ---------------------------------
Public Sub CollapseRows(tdf As TableDef) 'tbl As TableDef)
On Error GoTo Err_Handler

    Dim db As DAO.Database
    Dim col As field
    Dim rs As DAO.Recordset
    Dim strNewTable As String, strSQL As String, strRoute As String
    Dim Park As String, VisitYear As String, Species As String, CommonName As String, _
        IsDead As String, Route As String
    Dim TCount As Integer, iCounter As Integer
    Dim AvgCover As Double
    Dim PctCover As String
    Dim SE As Double
    Dim retVal As Long

    strNewTable = tdf.Name & "_NEW"

    Set db = CurrentDb

    Set rs = db.OpenRecordset(tdf.Name)
    rs.MoveLast
    rs.MoveFirst
        
    'Initialize the Progress Meter, set Maximum Value = intNoOfRecs
    'Show the progress bar
     SysCmd acSysCmdInitMeter, "working...", rs.RecordCount

    'create empty table w/ same columns to fill into
    DoCmd.TransferDatabase acExport, "Microsoft Access", db.Name, acTable, tdf.Name, strNewTable, True

    'populate w/ park, visit year, species, master common name, isdead ([Alive?])
    strSQL = "INSERT INTO " & strNewTable & " SELECT DISTINCT Unit_Code, Visit_Year, " & _
                "Species, Master_Common_Name, [Alive?] " & _
                "FROM " & tdf.Name & " ;"

    DoCmd.SetWarnings False
    DoCmd.RunSQL strSQL
    DoCmd.SetWarnings True

    With tdf
                
        'iterate through ALL
        Do While Not rs.EOF

        iCounter = iCounter + 1
        
        'Update the Progress Meter to (iCounter/intNoOfRecs)%
        SysCmd acSysCmdUpdateMeter, iCounter

            'order result columns (fields)
            For Each col In tdf.Fields

                'get park, visit year, species, common name & isdead
                If col.OrdinalPosition = 1 Then Park = rs(col.Name)
                If col.OrdinalPosition = 2 Then VisitYear = rs(col.Name)
                If col.OrdinalPosition = 3 Then Species = rs(col.Name)
                If col.OrdinalPosition = 4 Then CommonName = rs(col.Name)
                If col.OrdinalPosition = 5 Then IsDead = rs(col.Name)

                'ignore 1-5 (static Park, Year, Species, Master Common Name, IsDead)
                If col.OrdinalPosition > 5 Then

                    'get column & route name
                    Route = Left(col.Name, InStr(col.Name, ") ") + 1)

                    If Not IsNull(rs(col.Name)) Then
                    
                        Select Case Trim(Replace(col.Name, Route, ""))
                            Case "TCount"
                                TCount = rs(col.Name)
                            Case "AvgCover"
                                AvgCover = rs(col.Name)
                            Case "SE"
                                SE = rs(col.Name)
                        End Select
    
                        'update record
                        strSQL = "UPDATE " & strNewTable & " SET [" & col.Name & "] = " & rs(col.Name) & _
                                " WHERE Unit_Code = '" & Park & "' AND Visit_Year = " & VisitYear & _
                                " AND Species = '" & Species & "' AND [Alive?] = '" & IsDead & "';"
                        
                        DoCmd.SetWarnings False
                        DoCmd.RunSQL strSQL
                        DoCmd.SetWarnings True

                    End If

                End If

            Next

            rs.MoveNext
        Loop
    
        'Remove the Progress Meter
        SysCmd acSysCmdRemoveMeter
    
    End With

Exit_Procedure:
    'cleanup
    rs.Close
    Set rs = Nothing
    Set db = Nothing
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - CollapseRows[frm_Species_Cover_by_Route])"
    End Select
    Resume Exit_Procedure
End Sub
