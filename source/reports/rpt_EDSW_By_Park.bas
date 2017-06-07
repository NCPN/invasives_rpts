Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =11412
    DatasheetFontHeight =11
    ItemSuffix =50
    Left =1296
    Top =756
    Right =13068
    Bottom =8988
    DatasheetGridlinesColor =14806254
    OnNoData ="[Event Procedure]"
    RecSrcDt = Begin
        0x3343e4d9b0ace440
    End
    RecordSource ="qry_EDSW_by_Park"
    Caption ="EDSW by Park"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Calibri"
    PrtMip = Begin
        0x6a01000068010000680100006801000000000000942c0000a201000001000000 ,
        0x010000006801000000000000a10700000100000001000000
    End
    FilterOnLoad =255
    FitToPage =1
    DisplayOnSharePointSite =1
    AllowLayoutView =0
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    RibbonName ="Export"
    FitToScreen =1
    DatasheetBackThemeColorIndex =1
    BorderThemeColorIndex =3
    ThemeFontIndex =1
    ForeThemeColorIndex =0
    AlternateBackThemeColorIndex =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            FontSize =11
            FontName ="Calibri"
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =0
            BorderTint =50.0
            ForeThemeColorIndex =0
            ForeTint =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Rectangle
            BorderLineStyle =0
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Line
            BorderLineStyle =0
            BorderThemeColorIndex =0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            BorderLineStyle =0
            LabelX =-1800
            FontSize =11
            FontName ="Calibri"
            AsianLineBreak =1
            ShowDatePicker =0
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            KeepTogether =2
            ControlSource ="Unit_Code"
        End
        Begin BreakLevel
            SortOrder = NotDefault
            KeepTogether =2
            ControlSource ="Visit_Year"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =600
            BackColor =15849926
            Name ="ReportHeader"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =2
            BackTint =20.0
            Begin
                Begin Label
                    Left =60
                    Top =60
                    Width =8160
                    Height =528
                    FontSize =20
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="lblReportHdr"
                    Caption ="Invasives EDSW by Park"
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =60
                    LayoutCachedWidth =8220
                    LayoutCachedHeight =588
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =9000
                    Top =60
                    Width =2340
                    Height =540
                    ColumnOrder =0
                    FontSize =20
                    BorderColor =10921638
                    ForeColor =8355711
                    Name ="tbxYear"
                    StatusBarText ="Park and year for list"
                    GridlineColor =10921638

                    LayoutCachedLeft =9000
                    LayoutCachedTop =60
                    LayoutCachedWidth =11340
                    LayoutCachedHeight =600
                    ForeTint =50.0
                End
            End
        End
        Begin PageHeader
            Height =1335
            Name ="PageHeaderSection"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Rectangle
                    OldBorderStyle =0
                    Width =11412
                    Height =480
                    BackColor =15849926
                    BorderColor =10921638
                    Name ="rectPageHdr"
                    GridlineColor =10921638
                    LayoutCachedWidth =11412
                    LayoutCachedHeight =480
                    BackThemeColorIndex =2
                    BackTint =20.0
                End
                Begin Label
                    TextAlign =2
                    Left =3180
                    Top =960
                    Width =1812
                    Height =300
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="lblEDSWmin"
                    Caption ="Min"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =3180
                    LayoutCachedTop =960
                    LayoutCachedWidth =4992
                    LayoutCachedHeight =1260
                End
                Begin Label
                    TextAlign =2
                    Left =5220
                    Top =960
                    Width =2004
                    Height =300
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="lblEDSWmax"
                    Caption ="Max"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =5220
                    LayoutCachedTop =960
                    LayoutCachedWidth =7224
                    LayoutCachedHeight =1260
                End
                Begin Label
                    TextAlign =1
                    Left =1380
                    Top =960
                    Width =1200
                    Height =300
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="lblVisitYear"
                    Caption ="Visit Year"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =1380
                    LayoutCachedTop =960
                    LayoutCachedWidth =2580
                    LayoutCachedHeight =1260
                End
                Begin Label
                    TextAlign =2
                    Left =2880
                    Top =600
                    Width =4668
                    Height =300
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="lblEDSW"
                    Caption ="Effective Detection Swath Width (EDSW) in meters"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =2880
                    LayoutCachedTop =600
                    LayoutCachedWidth =7548
                    LayoutCachedHeight =900
                End
                Begin Line
                    Left =3000
                    Top =900
                    Width =4475
                    Name ="lnSpecies"
                    GridlineColor =10921638
                    LayoutCachedLeft =3000
                    LayoutCachedTop =900
                    LayoutCachedWidth =7475
                    LayoutCachedHeight =900
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =0
                    TextAlign =1
                    BackStyle =0
                    IMESentenceMode =3
                    Left =1379
                    Top =60
                    Width =5940
                    Height =312
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="tbxDate"
                    ControlSource ="=Format(Now(),\"mmmm d\"\", \"\"yyyy h:nn ampm\")"
                    Format ="Long Date"
                    GridlineColor =10921638

                    LayoutCachedLeft =1379
                    LayoutCachedTop =60
                    LayoutCachedWidth =7319
                    LayoutCachedHeight =372
                    Begin
                        Begin Label
                            Left =120
                            Top =60
                            Width =1320
                            Height =300
                            BorderColor =8355711
                            ForeColor =4210752
                            Name ="lblPrinted"
                            Caption ="Printed:"
                            GridlineColor =10921638
                            LayoutCachedLeft =120
                            LayoutCachedTop =60
                            LayoutCachedWidth =1440
                            LayoutCachedHeight =360
                            ForeTint =75.0
                        End
                    End
                End
                Begin Line
                    BorderWidth =2
                    Left =36
                    Top =1320
                    Width =11376
                    Name ="lnHeader"
                    GridlineColor =10921638
                    LayoutCachedLeft =36
                    LayoutCachedTop =1320
                    LayoutCachedWidth =11412
                    LayoutCachedHeight =1320
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =6240
                    Top =60
                    Width =5040
                    Height =312
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="tbxPage"
                    ControlSource ="=\"Page \" & [Page] & \" of \" & [Pages]"
                    GridlineColor =10921638

                    LayoutCachedLeft =6240
                    LayoutCachedTop =60
                    LayoutCachedWidth =11280
                    LayoutCachedHeight =372
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =480
            BackColor =12835293
            Name ="ParkGroupHeader"
            AlternateBackColor =12835293
            AlternateBackThemeColorIndex =3
            AlternateBackShade =90.0
            BackThemeColorIndex =3
            BackShade =90.0
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =120
                    Width =1800
                    Height =435
                    FontSize =16
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="tbxPark"
                    ControlSource ="Unit_Code"
                    StatusBarText ="Target Species name (ITIS species name from tlu_NCPN_Plants.Master_Species)"
                    GridlineColor =10921638

                    LayoutCachedLeft =120
                    LayoutCachedWidth =1920
                    LayoutCachedHeight =435
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =0
                    TextAlign =1
                    BackStyle =0
                    IMESentenceMode =3
                    Left =10500
                    Top =84
                    Width =540
                    Height =345
                    FontSize =12
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =8355711
                    Name ="tbxSumParkYears"
                    ControlSource ="=IIf(IsNull([Visit_Year]),\"-\",Count(*))"
                    StatusBarText ="Number of years visited"
                    GridlineColor =10921638

                    LayoutCachedLeft =10500
                    LayoutCachedTop =84
                    LayoutCachedWidth =11040
                    LayoutCachedHeight =429
                    ForeTint =50.0
                End
                Begin Label
                    FontItalic = NotDefault
                    TextAlign =3
                    Left =9060
                    Top =108
                    Width =1317
                    Height =299
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="lblSumYearsVisited"
                    Caption ="Years Visited:"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =9060
                    LayoutCachedTop =108
                    LayoutCachedWidth =10377
                    LayoutCachedHeight =407
                End
                Begin Label
                    FontItalic = NotDefault
                    TextAlign =3
                    Left =5520
                    Top =120
                    Width =1497
                    Height =299
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="lblLastVisited"
                    Caption ="Last Visit:"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =5520
                    LayoutCachedTop =120
                    LayoutCachedWidth =7017
                    LayoutCachedHeight =419
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =0
                    TextAlign =1
                    BackStyle =0
                    IMESentenceMode =3
                    Left =7080
                    Top =120
                    Width =1800
                    Height =297
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =8355711
                    Name ="tbxLastVisited"
                    ControlSource ="=IIf(IsNull([Visit_Year]),\"-\",Max([Visit_Year]))"
                    StatusBarText ="Last invasives visit to park"
                    GridlineColor =10921638

                    LayoutCachedLeft =7080
                    LayoutCachedTop =120
                    LayoutCachedWidth =8880
                    LayoutCachedHeight =417
                    ForeTint =50.0
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =418
            Name ="Detail"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Width =11400
                    Height =418
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="tbxDetail"
                    GridlineColor =10921638

                    LayoutCachedWidth =11400
                    LayoutCachedHeight =418
                End
                Begin TextBox
                    OldBorderStyle =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =2400
                    Top =60
                    Width =1800
                    Height =312
                    FontSize =9
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="tbxEDSWmin"
                    ControlSource ="Min_EDSW"
                    StatusBarText ="Minimum EDSW"
                    GridlineColor =10921638

                    LayoutCachedLeft =2400
                    LayoutCachedTop =60
                    LayoutCachedWidth =4200
                    LayoutCachedHeight =372
                End
                Begin TextBox
                    OldBorderStyle =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =4440
                    Top =60
                    Width =1980
                    Height =312
                    ColumnWidth =1170
                    FontSize =9
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="tbxEDSWmax"
                    ControlSource ="Max_EDSW"
                    StatusBarText ="Maximum EDSW"
                    GridlineColor =10921638

                    LayoutCachedLeft =4440
                    LayoutCachedTop =60
                    LayoutCachedWidth =6420
                    LayoutCachedHeight =372
                End
                Begin TextBox
                    OldBorderStyle =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =240
                    Top =60
                    Width =1800
                    Height =312
                    FontSize =9
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="tbxVisitYear"
                    ControlSource ="Visit_Year"
                    StatusBarText ="Minimum EDSW"
                    GridlineColor =10921638

                    LayoutCachedLeft =240
                    LayoutCachedTop =60
                    LayoutCachedWidth =2040
                    LayoutCachedHeight =372
                End
                Begin Label
                    Visible = NotDefault
                    TextAlign =2
                    Left =660
                    Top =60
                    Width =10080
                    Height =300
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="lblNoData"
                    Caption ="Sorry, no data was found for this park/year."
                    Tag ="DetachedLabel"
                    ControlTipText ="No data returned"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =660
                    LayoutCachedTop =60
                    LayoutCachedWidth =10740
                    LayoutCachedHeight =360
                End
            End
        End
        Begin PageFooter
            Height =0
            Name ="PageFooterSection"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =900
            Name ="ReportFooter"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Line
                    BorderWidth =2
                    Left =36
                    Width =11376
                    Name ="lnPageFooter"
                    GridlineColor =10921638
                    LayoutCachedLeft =36
                    LayoutCachedWidth =11412
                End
                Begin Label
                    Visible = NotDefault
                    Left =1080
                    Top =120
                    Width =1350
                    Height =300
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="lblPunchMargin"
                    Caption ="|<< .75margin"
                    GridlineColor =10921638
                    LayoutCachedLeft =1080
                    LayoutCachedTop =120
                    LayoutCachedWidth =2430
                    LayoutCachedHeight =420
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
' MODULE:       rpt_EDSW_By_Park
' Description:  EDSW reported by park & year
'
' Source/date:  Bonnie Campbell, 12/3/2015
' Revisions:    BLC - 12/3/2015 - initial version
' =================================

' ---------------------------------
' SUB:          Report_Open
' Description:  Actions for when reports open
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
Private Sub Report_Open(Cancel As Integer)
On Error GoTo Err_Handler
        
    Dim oArgs() As String, strSQL As String, strWhere As String
        
    'check for info
    If IsNull(Me.OpenArgs) Then GoTo Exit_Sub
    
    'parse open args ( MsgBox.Title = lblTitle.caption )
    'Report Name | Me.Caption | lblTitle.caption | lbxYear.RowSource | Park | Year
    oArgs = Split(Me.OpenArgs, "|")
        
    'prepare where clause for filtering by park & year
    strWhere = ""
    If Len(Trim(oArgs(4))) > 0 Then
        strWhere = "WHERE Unit_Code = '" & Trim(oArgs(4)) & "'"
    End If
    
    If Len(Trim(oArgs(5))) > 0 Then
        If Len(strWhere) > 0 Then
            strWhere = strWhere & " AND Visit_Year = " & CInt(oArgs(5))
        Else
            strWhere = "WHERE Visit_Year = " & CInt(oArgs(5))
        End If
    End If
    
    strSQL = oArgs(3) & strWhere & ";"
    
    Me.RecordSource = strSQL
    
Exit_Sub:
    Exit Sub
    
Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Report_Open[Report_rpt_Tgt_Species_List_By_Park])"
    End Select
    Resume Exit_Sub
End Sub

' ---------------------------------
' SUB:          Report_NoData
' Description:  Actions for when report query returns no data
' Assumptions:  -
' Parameters:   -
' Returns:      N/A
' Throws:       none
' References:   none
' Source/date:  Bonnie Campbell, December 10, 2015 - for NCPN tools
' Adapted:      -
' Revisions:
'   BLC - 12/10/2015 - initial version
' ---------------------------------
Private Sub Report_NoData(Cancel As Integer)
On Error GoTo Err_Handler

    Dim oArgs() As String
    
    'header automatically adjusts
    oArgs = Split(Me.OpenArgs, "|")
    Me.tbxYear = Trim(oArgs(4)) & " - " & oArgs(5)
    
    'hide normal controls
    Me.tbxVisitYear.visible = False
    Me.tbxEDSWmin.visible = False
    Me.tbxEDSWmax.visible = False
    
    'expose message
    Me.lblNoData.visible = True

Exit_Sub:
    Exit Sub
    
Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Report_Open[Report_rpt_Tgt_Species_List_By_Park])"
    End Select
    Resume Exit_Sub
End Sub
