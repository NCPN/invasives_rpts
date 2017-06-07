Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    TabularFamily =124
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =8580
    DatasheetFontHeight =9
    ItemSuffix =11
    Left =135
    Right =8715
    Bottom =5745
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x81b16fedaecae340
    End
    Caption ="Exotic Invasives Reports"
    DatasheetFontName ="Arial"
    PrtMip = Begin
        0x6801000068010000680100006801000000000000201c0000e010000001000000 ,
        0x010000006801000000000000a10700000100000001000000
    End
    OnActivate ="[Event Procedure]"
    OnGotFocus ="[Event Procedure]"
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
        Begin Section
            Height =5760
            BackColor =12902115
            Name ="Detail"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =1440
                    Top =360
                    Width =5760
                    Height =420
                    FontSize =16
                    FontWeight =700
                    Name ="Label0"
                    Caption ="Invasive Plant Report Menu"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3360
                    Top =1020
                    Width =1740
                    FontSize =10
                    FontWeight =700
                    Name ="btnLink"
                    Caption ="Link Data Tables"
                    OnClick ="[Event Procedure]"

                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =1620
                    Top =1740
                    Width =2370
                    Height =300
                    TabIndex =1
                    Name ="btnInfestation"
                    Caption ="Infestation Report"
                    OnClick ="[Event Procedure]"

                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4440
                    Top =1740
                    Width =2370
                    Height =300
                    TabIndex =2
                    Name ="btnInfestRoute"
                    Caption ="Infestations by Route"
                    OnClick ="[Event Procedure]"

                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3840
                    Top =4740
                    Width =1035
                    Height =300
                    TabIndex =3
                    Name ="btnClose"
                    Caption ="Close Form"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =3840
                    LayoutCachedTop =4740
                    LayoutCachedWidth =4875
                    LayoutCachedHeight =5040
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =1620
                    Top =2280
                    Width =2370
                    Height =300
                    TabIndex =4
                    Name ="btnInfestSize"
                    Caption ="Infestations by Size Class"
                    OnClick ="[Event Procedure]"

                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4440
                    Top =2280
                    Width =2370
                    Height =300
                    TabIndex =5
                    Name ="btnInfestGrowth"
                    Caption ="Infestations by Growth Stage"
                    OnClick ="[Event Procedure]"

                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =1620
                    Top =2820
                    Width =2370
                    Height =300
                    TabIndex =6
                    Name ="btnMonitoringTransect"
                    Caption ="Monitoring Transect Data"
                    OnClick ="[Event Procedure]"

                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4440
                    Top =2820
                    Width =2370
                    Height =300
                    TabIndex =7
                    Name ="btnSpeciesCoover"
                    Caption ="Species Cover by Route"
                    OnClick ="[Event Procedure]"

                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =1620
                    Top =3360
                    Width =2370
                    Height =300
                    TabIndex =8
                    Name ="btnTransectCount"
                    Caption ="Transect Count by Route"
                    OnClick ="[Event Procedure]"

                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4440
                    Top =3780
                    Width =2580
                    FontSize =11
                    TabIndex =9
                    ForeColor =8224125
                    Name ="btnLaunchTgtTool"
                    Caption ="Launch Tgt Species Tool >>"
                    StatusBarText ="Launch target species tool"
                    OnClick ="[Event Procedure]"
                    FontName ="Calibri"
                    ControlTipText ="Launch target species tool"
                    GridlineColor =10921638

                    LayoutCachedLeft =4440
                    LayoutCachedTop =3780
                    LayoutCachedWidth =7020
                    LayoutCachedHeight =4140
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                    UseTheme =1
                    Shape =1
                    BackColor =6750156
                    BorderColor =52377
                    ThemeFontIndex =1
                    HoverColor =3407769
                    PressedColor =52224
                    HoverForeColor =2375487
                    PressedForeColor =6750156
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =1620
                    Top =3840
                    Width =2370
                    Height =300
                    TabIndex =10
                    Name ="btnEDSW"
                    Caption ="EDSW by Park"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Display EDSW"

                    LayoutCachedLeft =1620
                    LayoutCachedTop =3840
                    LayoutCachedWidth =3990
                    LayoutCachedHeight =4140
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
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
' FORM NAME:    frm_Main_Menu
' Version:      1.04
' Description:  Standard form - main user interface
' Data source:
' Data access:  links to various forms/reports
' Pages:        -
' Functions:    none
' References:   -
' Source/date:  John R. Boetsch, May 24, 2006
' Adapted/date: -
' Revisions:    JRB, 5/24/2006 - 1.00 - initial version
'               BLC, 5/22/2015 - 1.01 - Added Form_GotFocus()
'               BLC, 6/4/2015  - 1.02 - Replaced toggle w/ EnableTargetTool
'               BLC, 6/12/2015 - 1.03 - Added Form_Activate()
'               BLC, 6/6/2017  - 1.04 - Added documentation, revised error handling
' =================================

' ---------------------------------
' SUB:          Form_Open
' Description:  open the main form
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Bonnie Campbell, May 2015 for NCPN tools
' Adapted:      -
' Revisions:    BLC - 5/22/2015 - initial version
'               BLC - 6/4/2015  - replaced toggle with EnableTargetTool
'               BLC - 6/6/2017  - revised documentation, error handling, & button naming convention (ButtonX > btnX)
' ---------------------------------
Private Sub Form_Load()
On Error GoTo Err_Handler
    
    ' Verify the back-end database connections, and enable button if connected
    VerifyConnections
    
    'enable button if connected
    EnableTargetTool btnLaunchTgtTool
    
Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Form_Load[frm_Main_Menu])"
    End Select
    Resume Exit_Handler
End Sub
    
' ---------------------------------
' SUB:          Form_GotFocus
' Description:  return focus to the main form
' Note:         handles target tool enable/disable based on connections
'               avoids Runtime Error #3044 (db is not valid path) if db connection not established
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Bonnie Campbell, May 2015 for NCPN tools
' Adapted:      -
' Revisions:    BLC - 5/22/2015 - initial version
'               BLC - 6/4/2015  - replaced toggle with EnableTargetTool
' ---------------------------------
Private Sub Form_GotFocus()
On Error GoTo Err_Handler
    
    'enable button if connected
    EnableTargetTool btnLaunchTgtTool
    
    Me.Repaint
    
Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Form_GotFocus[frm_Main_Menu])"
    End Select
    Resume Exit_Handler
End Sub
    
' ---------------------------------
' SUB:          Form_Activate
' Description:  return to the main form
' Note:         handles target tool enable/disable based on connections
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Bonnie Campbell, June 2015 for NCPN tools
' Adapted:      -
' Revisions:    BLC - 6/12/2015 - initial version
' ---------------------------------
Private Sub Form_Activate()
On Error GoTo Err_Handler
    
    'enable button if connected
    EnableTargetTool btnLaunchTgtTool
    
    Me.Repaint
    
Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Form_Activate[frm_Main_Menu])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' SUB:          btnLink_Click
' Description:  open the link tables form (frm_Connect_Tables)
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  NCPN - unknown
' Adapted:      -
' Revisions:    unknown - initial version
'               BLC - 5/28/2015 - add toggle to enable Target List Tool
'               BLC - 6/4/2015  - replaced toggle with EnableTargetTool
' ---------------------------------
Private Sub btnLink_Click()
On Error GoTo Err_Handler

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "frm_Connect_Tables"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
        
    'enable button if connected
    EnableTargetTool btnLaunchTgtTool
        
    Me.Repaint

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnLink_Click[frm_Main_Menu])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' SUB:          btnInfestation_Click
' Description:  opens frm_Select_Infest_Data form
' Note:         -
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Unknown, for NCPN tools
' Adapted:      -
' Revisions:    Unknown - unknown - initial version
'               BLC - 6/6/2017 - added documentation, revised error handling & button name
' ---------------------------------
Private Sub btnInfestation_Click()
On Error GoTo Err_Handler

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "frm_Select_Infest_Data"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnInfestation_Click[frm_Main_Menu])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' SUB:          btnInfestSize_Click
' Description:  opens frm_Select_Infest_by_Size form
' Note:         -
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Unknown, for NCPN tools
' Adapted:      -
' Revisions:    Unknown - unknown - initial version
'               BLC - 6/6/2017 - added documentation, revised error handling & button name
' ---------------------------------
Private Sub btnInfestSize_Click()
On Error GoTo Err_Handler

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "frm_Select_Infest_by_Size"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnInfestSize_Click[frm_Main_Menu])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' SUB:          btnMonitoringTransect_Click
' Description:  opens frm_Monitoring_Transect form
' Note:         -
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Unknown, for NCPN tools
' Adapted:      -
' Revisions:    Unknown - unknown - initial version
'               BLC - 6/6/2017 - added documentation, revised error handling & button name
' ---------------------------------
Private Sub btnMonitoringTransect_Click()
On Error GoTo Err_Handler

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "frm_Monitoring_Transect"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnMonitoringTransect_Click[frm_Main_Menu])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' SUB:          btnTransectCount_Click
' Description:  opens frm_Select_Transect_Counts form
' Note:         -
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Unknown, for NCPN tools
' Adapted:      -
' Revisions:    Unknown - unknown - initial version
'               BLC - 6/6/2017 - added documentation, revised error handling & button name
' ---------------------------------
Private Sub btnTransectCount_Click()
On Error GoTo Err_Handler

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "frm_Select_Transect_Counts"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnTransectCount_Click[frm_Main_Menu])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' SUB:          btnInfestRoute_Click
' Description:  opens frm_Select_Infest_Route form
' Note:         -
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Unknown, for NCPN tools
' Adapted:      -
' Revisions:    Unknown - unknown - initial version
'               BLC - 6/6/2017 - added documentation, revised error handling & button name
' ---------------------------------
Private Sub btnInfestRoute_Click()
On Error GoTo Err_Handler

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "frm_Select_Infest_by_Route"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnInfestRoute_Click[frm_Main_Menu])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' SUB:          btnEDSW_Click
' Description:  open the EDSW park/year selection form
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Bonnie Campbell, December 3, 2015 - for NCPN tools
' Adapted:      -
' Revisions:
'   BLC - 12/3/2015 - initial version
' ---------------------------------
Private Sub btnEDSW_Click()
On Error GoTo Err_Handler

'SELECT tbl_EDSW.Unit_Code, Year([GPS_Date]) AS Visit_Year, Min(tbl_EDSW.EDSW_m) AS Min_EDSW, Max(tbl_EDSW.EDSW_m) AS Max_EDSW
'FROM tbl_EDSW
'GROUP BY tbl_EDSW.Unit_Code, Year([GPS_Date])
'HAVING (((tbl_EDSW.Unit_Code) = [Park Code]) And ((Year([GPS_Date])) = [Visit Year]))
'ORDER BY tbl_EDSW.Unit_Code, Year([GPS_Date]);

    Dim oArgs As String, rpt As String
    
    'parse open args ( MsgBox.Title = lblTitle.caption )
    'Report Name | Me.Caption | lblTitle.caption | lbxYear.RowSource | Park | Year
    rpt = "rpt_EDSW_By_Park"
    oArgs = rpt & " | Park EDSW Data | Park EDSW Data | SELECT DISTINCT Visit_Year FROM qry_EDSW_by_Park ORDER BY Visit_Year DESC;"

    DoCmd.OpenForm "frm_Select_Park_Year", acNormal, , , , acWindowNormal, oArgs
    
Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnEDSW_Click[frm_Main_Menu])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' SUB:          btnInfestGrowth_Click
' Description:  opens frm_Select_Infest_by_Growth form
' Note:         -
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Unknown, for NCPN tools
' Adapted:      -
' Revisions:    Unknown - unknown - initial version
'               BLC - 6/6/2017 - added documentation, revised error handling & button name
' ---------------------------------
Private Sub btnInfestGrowth_Click()
On Error GoTo Err_Handler

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "frm_Select_Infest_by_Growth"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnInfestGrowth_Click[frm_Main_Menu])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' SUB:          btnSpeciesCover_Click
' Description:  opens frm_Species_Cover_by_Route form
' Note:         -
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Unknown, for NCPN tools
' Adapted:      -
' Revisions:    Unknown - unknown - initial version
'               BLC - 6/6/2017 - added documentation, revised error handling & button name
' ---------------------------------
Private Sub btnSpeciesCover_Click()
On Error GoTo Err_Handler

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "frm_Species_Cover_by_Route"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnSpeciesCover_Click[frm_Main_Menu])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' SUB:          btnLaunchTgtTool_Click
' Description:  open the species target list tool
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Bonnie Campbell, April 2015 for NCPN tools
' Adapted:      -
' Revisions:    BLC - 4/21/2015 - initial version
' ---------------------------------
Private Sub btnLaunchTgtTool_Click()
On Error GoTo Err_Handler

    'minimize main form
    DoCmd.Minimize

    DoCmd.OpenForm "frm_Tgt_List_Tool", acNormal
    
Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnLaunchTgtTool_Click[frm_Main_Menu])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' SUB:          btnClose_Click
' Description:  closes frm_Main_Menu form
' Note:         -
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/date:  Unknown, for NCPN tools
' Adapted:      -
' Revisions:    Unknown - unknown - initial version
'               BLC - 6/6/2017 - added documentation, revised error handling & button name
' ---------------------------------
Private Sub btnClose_Click()
On Error GoTo Err_Handler

   CloseFormsReports

    DoCmd.Close

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - btnClose_Click[frm_Main_Menu])"
    End Select
    Resume Exit_Handler
End Sub
