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
    Width =5760
    DatasheetFontHeight =9
    ItemSuffix =14
    Left =135
    Top =6435
    Right =5895
    Bottom =9720
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x3d34192b53bbe340
    End
    Caption =" Park EDSW Data "
    DatasheetFontName ="Arial"
    PrtMip = Begin
        0x6801000068010000680100006801000000000000201c0000e010000001000000 ,
        0x010000006801000000000000a10700000100000001000000
    End
    OnLoad ="[Event Procedure]"
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
            Height =3300
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =660
                    Top =240
                    Width =4335
                    Height =420
                    FontSize =16
                    FontWeight =700
                    Name ="lblTitle"
                    Caption =" Park EDSW Data "
                    LayoutCachedLeft =660
                    LayoutCachedTop =240
                    LayoutCachedWidth =4995
                    LayoutCachedHeight =660
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3780
                    Top =2580
                    Width =1350
                    Height =299
                    Name ="btnClose"
                    Caption ="Close Form"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =3780
                    LayoutCachedTop =2580
                    LayoutCachedWidth =5130
                    LayoutCachedHeight =2879
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
                    Left =2040
                    Top =1080
                    Width =2520
                    TabIndex =1
                    Name ="lbxPark"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT tlu_Parks.ParkCode, tlu_Parks.ParkName FROM tlu_Parks INNER JOIN"
                        " tbl_EDSW ON tbl_EDSW.Unit_Code = tlu_Parks.ParkCode; "
                    ColumnWidths ="576;2592"
                    AfterUpdate ="[Event Procedure]"

                    LayoutCachedLeft =2040
                    LayoutCachedTop =1080
                    LayoutCachedWidth =4560
                    LayoutCachedHeight =1320
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =780
                            Top =1080
                            Width =1140
                            Height =245
                            FontWeight =700
                            Name ="lblPark"
                            Caption ="Select Park:"
                            LayoutCachedLeft =780
                            LayoutCachedTop =1080
                            LayoutCachedWidth =1920
                            LayoutCachedHeight =1325
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    ListWidth =720
                    Left =2040
                    Top =1680
                    Width =1200
                    TabIndex =2
                    Name ="lbxYear"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT Year(GPS_Date) FROM tbl_EDSW WHERE [Unit_Code] = 'CURE' ORDER BY"
                        " Year(GPS_Date); "
                    ColumnWidths ="2820"

                    LayoutCachedLeft =2040
                    LayoutCachedTop =1680
                    LayoutCachedWidth =3240
                    LayoutCachedHeight =1920
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =600
                            Top =1680
                            Width =1320
                            Height =245
                            FontWeight =700
                            Name ="lblYear"
                            Caption ="Select Year:"
                            LayoutCachedLeft =600
                            LayoutCachedTop =1680
                            LayoutCachedWidth =1920
                            LayoutCachedHeight =1925
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =420
                    Top =2580
                    Width =1350
                    Height =299
                    TabIndex =3
                    Name ="btnReportOpen"
                    Caption ="Preview Report"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =420
                    LayoutCachedTop =2580
                    LayoutCachedWidth =1770
                    LayoutCachedHeight =2879
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2100
                    Top =2580
                    Width =1350
                    Height =300
                    TabIndex =4
                    Name ="btnQueryOpen"
                    Caption ="Run as Query"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =2100
                    LayoutCachedTop =2580
                    LayoutCachedWidth =3450
                    LayoutCachedHeight =2880
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
' FORM NAME:    frm_Select_Park_Year
' Description:  Standard form for opening reports/queries
' Data source:  varies
' Data access:  -
' Pages:        none
' Functions:    none
' References:   -
' Source/date:  Bonnie Campbell, December 3, 2015 - for NCPN tools
' Adapted:      -
' Revisions:    BLC, 12/3/2015 - initial version
' =================================

' ---------------------------------
' SUB:          Form_Load
' Description:  Actions for when form loads
' Assumptions:  -
' Parameters:   -
' Returns:      N/A
' Throws:       none
' References:   none
' Source/date:  Bonnie Campbell, December 3, 2015 - for NCPN tools
' Adapted:      -
' Revisions:
'   BLC - 12/3/2015 - initial version
' ---------------------------------
Private Sub Form_Load()
On Error GoTo Err_Handler
        
    Dim oArgs() As String, strWhere As String, strSQL As String
        
    'check for info
    If IsNull(Me.OpenArgs) Then GoTo Exit_Sub
    
    'parse open args ( MsgBox.Title = lblTitle.caption )
    'Report Name | Me.Caption | lblTitle.caption | lbxYear.RowSource | Park | Year
    oArgs = Split(Me.OpenArgs, "|")
        
    Me.Caption = oArgs(1)
    lblTitle.Caption = oArgs(1)

    lbxYear.RowSource = oArgs(3)
    
Exit_Sub:
    Exit Sub
    
Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Form_Load[Form_frm_Select_Park_Year])"
    End Select
    Resume Exit_Sub
End Sub

' ---------------------------------
' SUB:          Park_Code_AfterUpdate
' Description:  actions after the update of park dropdown
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Bonnie Campbell, December 3, 2015 - for NCPN tools
' Adapted:      -
' Revisions:
'   BLC - 12/3/2015 - initial version
' ---------------------------------
Private Sub lbxPark_AfterUpdate()
On Error GoTo Err_Handler

  If Not IsNull(Me!lbxPark) Then
    
    Me!lbxYear.RowSource = "SELECT DISTINCT Year(GPS_Date) FROM tbl_EDSW WHERE [Unit_Code] = '" & Me!lbxPark & "' ORDER BY Year(GPS_Date)"
     
    Me.Refresh
  End If

Exit_Sub:
    Exit Sub
    
Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - lbxPark_AfterUpdate[frm_Select_Park_Year])"
    End Select
    Resume Exit_Sub
End Sub

' ---------------------------------
' SUB:          btnReportOpen_Click
' Description:  open the desired report
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Bonnie Campbell, December 3, 2015 - for NCPN tools
' Adapted:      -
' Revisions:
'   BLC - 12/3/2015 - initial version
' ---------------------------------
Private Sub btnReportOpen_Click()
On Error GoTo Err_Handler

    Dim oArgs As String, rpt As String, aryArgs() As String
    Dim iResult As Integer

    'parse open args ( MsgBox.Title = lblTitle.caption )
    'Report Name | Me.Caption | lblTitle.caption | lbxYear.RowSource | Park | Year
    rpt = "rpt_EDSW_By_Park"
    oArgs = rpt & " | Park EDSW Data | Park EDSW Data | SELECT * FROM qry_EDSW_by_Park | " & Me!lbxPark & " | " & Me!lbxYear
    aryArgs = Split(oArgs, "|")

    If IsNull(Me.OpenArgs) Then GoTo Exit_Sub

    If IsNull(Me!lbxPark) Or IsNull(Me!lbxYear) Then
        iResult = MsgBox("Please select both park and year unless you wish to view all parks/years." & vbCrLf & vbCrLf & _
                            "To view " & vbCrLf & _
                            "     All parks/years --> click 'OK'. " & vbCrLf & _
                            "     One park/year   --> click 'Cancel' to return to the previous form. ", vbOKCancel, aryArgs(1))
                
        If iResult = vbCancel Then GoTo RedisplayForm
    End If
        
    'open report
    DoCmd.OpenReport rpt, acViewReport, , , , oArgs

Exit_Sub:
    Exit Sub

RedisplayForm:
    Me.SetFocus
    GoTo Exit_Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnReportOpen_Click[frm_Select_Park_Year])"
    End Select
    Resume Exit_Sub
End Sub

' ---------------------------------
' SUB:          btnQueryOpen_Click
' Description:  opens the query
' Parameters:   -
' Returns:      -
' Throws:       -
' References:
'   Simon Sheppard, unknown
'   http://ss64.com/access/setfilter.html
' Source/date:  Bonnie Campbell, December 3, 2015 - for NCPN tools
' Adapted:      -
' Revisions:
'   BLC - 12/3/2015 - initial version
' ---------------------------------
Private Sub btnQueryOpen_Click()
On Error GoTo Err_Handler

'SELECT tbl_EDSW.Unit_Code, Year([GPS_Date]) AS Visit_Year, Min(tbl_EDSW.EDSW_m) AS Min_EDSW, Max(tbl_EDSW.EDSW_m) AS Max_EDSW
'FROM tbl_EDSW
'GROUP BY tbl_EDSW.Unit_Code, Year([GPS_Date])
'HAVING (((tbl_EDSW.Unit_Code) = [Park Code]) And ((Year([GPS_Date])) = [Visit Year]))
'ORDER BY tbl_EDSW.Unit_Code, Year([GPS_Date]);

'SELECT tbl_EDSW.Unit_Code, Year([GPS_Date]) AS Visit_Year, Min(tbl_EDSW.EDSW_m) AS Min_EDSW, Max(tbl_EDSW.EDSW_m) AS Max_EDSW
'FROM tbl_EDSW
'GROUP BY tbl_EDSW.Unit_Code, Year([GPS_Date])
'ORDER BY tbl_EDSW.Unit_Code, Year([GPS_Date]);

'SELECT tbl_EDSW.Unit_Code, Year(tbl_EDSW.GPS_Date) AS Visit_Year, Min(tbl_EDSW.EDSW_m) AS Min_EDSW, Max(tbl_EDSW.EDSW_m) AS Max_EDSW
'FROM tbl_EDSW
'GROUP BY tbl_EDSW.Unit_Code, Year(tbl_EDSW.GPS_Date)
'ORDER BY tbl_EDSW.Unit_Code, Year(tbl_EDSW.GPS_Date);

'qry_EDSW_by_Park_Filtered
'SELECT * FROM qry_EDSW_by_Park
'WHERE Unit_Code = 'COLM' AND Visit_Year = 2013;

    Dim oArgs As String, qry As String, aryArgs() As String, strWhere As String
    Dim iResult As Integer

    'parse open args ( MsgBox.Title = lblTitle.caption )
    'Report Name | Me.Caption | lblTitle.caption | lbxYear.RowSource | Park | Year
    qry = "qry_EDSW_By_Park_Filtered"
    oArgs = qry & " | Park EDSW Data | Park EDSW Data | SELECT * FROM qry_EDSW_by_Park | " & Me!lbxPark & " | " & Me!lbxYear
    aryArgs = Split(oArgs, "|")

    If IsNull(Me!lbxPark) Or IsNull(Me!lbxYear) Then
        iResult = MsgBox("Please select both park and year unless you wish to view all parks/years." & vbCrLf & vbCrLf & _
                            "To view " & vbCrLf & _
                            "All parks/years --> click 'OK'. " & vbCrLf & _
                            "One park/year   --> click 'Cancel' to return to the previous form. ", vbOKCancel, aryArgs(1))
                
        If iResult = vbCancel Then GoTo RedisplayForm
    End If
    
    'prepare where clause for filtering by park & year
    strWhere = ""
    If Len(Trim(aryArgs(4))) > 0 Then
        strWhere = "WHERE Unit_Code = '" & Trim(aryArgs(4)) & "'"
    End If
    
    If Len(Trim(aryArgs(5))) > 0 Then
        If Len(strWhere) > 0 Then
            strWhere = strWhere & " AND Visit_Year = " & CInt(aryArgs(5))
        Else
            strWhere = "WHERE Visit_Year = " & CInt(aryArgs(5))
        End If
    End If
         
    DoCmd.OpenQuery qry, , acReadOnly
    
    'clear fields
    Me.lbxPark = ""
    Me.lbxYear = ""
    
    'apply filter if park/year selected --> apply filter requires qry, valid WHERE clause w/o the WHERE
    If Len(strWhere) > 0 Then DoCmd.ApplyFilter qry, Replace(strWhere, "WHERE ", "")
        
Exit_Sub:
    Exit Sub

RedisplayForm:
    Me.SetFocus
    GoTo Exit_Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnQueryOpen_Click[frm_Select_Park_Year])"
    End Select
    Resume Exit_Sub
End Sub

' ---------------------------------
' SUB:          btnClose_Click
' Description:  open the desired report
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Bonnie Campbell, December 3, 2015 - for NCPN tools
' Adapted:      -
' Revisions:
'   BLC - 12/3/2015 - initial version
' ---------------------------------
Private Sub btnClose_Click()
On Error GoTo Err_Handler

    DoCmd.Close

Exit_Sub:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnClose_Click[frm_Select_Park_Year])"
    End Select
    Resume Exit_Sub
End Sub
