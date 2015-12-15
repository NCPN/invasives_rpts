Option Compare Database
Option Explicit

' =================================
' MODULE:       mod_UI
' Level:        Framework module
' Version:      1.00
' Description:  User interface related functions & subroutines
'
' Source/date:  Bonnie Campbell, April 2015
' Revisions:    BLC, 4/30/2015 - 1.00 - initial version
' =================================

' ---------------------------------
'  Ribbon
' ---------------------------------
' =================================
' SUB:          GetRibbonXML
' Description:  gets ribbon UI XML specified, if found
' Assumes:      USysRibbon table exists
' Parameters:   ribbon - name of the ribbon to retrieve, RibbonName in USysRibbon (string)
' Returns:      XML of the specified ribbon
' Throws:       none
' References:   none
' Source/date:  -
' Revisions:    BLC, 5/10/2015 - initial version
' =================================
Public Function GetRibbonXML(strRibbon As String) As String
On Error GoTo Err_Handler
    
    Dim rs As DAO.Recordset
    Dim strSQL As String, strXML As String
    
    strSQL = "SELECT RibbonXML FROM USysRibbons WHERE RibbonName = '" & strRibbon & "';"
    strXML = ""
    
    Set rs = CurrentDb.OpenRecordset(strSQL)
    If Not (rs.BOF And rs.EOF) Then
        strXML = rs!RibbonXML
    End If
    
    GetRibbonXML = strXML
Exit_Function:
    Exit Function

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - GetRibbonXML[mod_UI])"
    End Select
    Resume Exit_Function
End Function

' =================================
' SUB:          RibbonOnLoad
' Description:  Callback function for ribbon customization
' Parameters:   ribbon - office ribbon control (IRibbonUI object)
' Returns:      -
' Throws:       none
' References:   none
' Source/date:  Adapted from http://www.experts-exchange.com/Database/MS_Access/Q_28470268.html
'               by Christian, 7/7/2014.
' Revisions:    BLC, 5/17/2015 - initial version
' =================================
'Public objRibbon As IRibbonUI
Public Sub RibbonOnLoad(ribbon As Office.IRibbonUI)
On Error GoTo Err_Handler
Dim prv_Ribbon As IRibbonUI

    Set prv_Ribbon = ribbon

Exit_Procedure:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - RibbonOnLoad[mod_UI])"
    End Select
    Resume Exit_Procedure
End Sub

' =================================
' SUB:          GetRibbonVisibility
' Description:
' Parameters:   ctrl - office ribbon control (IRibbonControl object)
'               visible - true (boolean)
' Returns:      -
' Throws:       none
' References:   none
' Source/date:  Adapted from http://www.access-programmers.co.uk/forums/showthread.php?t=246015
'               by Mark K., 4/26/2013.
' Revisions:    BLC, 5/10/2015 - initial version
' =================================
Public Sub GetRibbonVisibility(ctrl As Office.IRibbonControl, ByRef visible)
On Error GoTo Err_Handler

    Select Case ctrl.Id
        Case "tabExportOptions"
            visible = True
            TempVars.Add "ribbon", True
        Case Else
            visible = False
            TempVars.Add "ribbon", False
    End Select
    
Exit_Procedure:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - GetRibbonVisibility[mod_UI])"
    End Select
    Resume Exit_Procedure
End Sub

' ---------------------------------
'  Forms
' ---------------------------------

' =================================
' SUB:          SetWindowSize
' Description:  sets form size (width & height)
' Assumptions:  -
' Note:         dimensions are in twips (1 inch = 1440 twips)
' Parameters:   ctrl - office ribbon control (IRibbonControl object)
'               visible - true (boolean)
' Returns:      -
' Throws:       none
' References:   none
' Source/date:  Hasup, February 26,2014
'   http://stackoverflow.com/questions/22021802/resize-form-in-ms-access-by-changing-detail-height
' Adapted:      Bonnie Campbell, May 27, 2015 - for NCPN tools
' Revisions:    BLC, 5/27/2015 - initial version
' =================================
Public Sub SetWindowSize(ByRef frm As Form, ByRef lngHeight As Long, ByRef lngWidth As Long)
On Error GoTo Err_Handler

'    If Me.WindowHeight = 4044 Then
'        lngHeight = 8000
'    Else
'        lngHeight = 4044
'    End If
    frm.Move frm.WindowLeft, height:=lngHeight, Width:=lngWidth
    
Exit_Procedure:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - SetWindowHeight[mod_UI])"
    End Select
    Resume Exit_Procedure
End Sub

' =================================
' SUB:          PopulateSubformControl
' Description:  Set the form for a subform control
' Parameters:   ctrl - subform control to populate
'               strSubFormName - name of the subform to use in the control
' Returns:      -
' Throws:       none
' References:   none
' Source/date:  Bonnie Campbell, 5/1/2015 for NCPN tools
' Revisions:    BLC, 5/1/2015 - initial version
' =================================
Public Sub PopulateSubformControl(ctrl As SubForm, strSubFormName As String)
    On Error GoTo Err_Handler

    ctrl.SourceObject = strSubFormName 'Forms(strSubFormName)

Exit_Procedure:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - FormIsOpen[mod_UI])"
    End Select
    Resume Exit_Procedure
End Sub

' =================================
' FUNCTION:     FormIsOpen
' Description:  Indicates whether or not the specific form is open in form view
' Parameters:   none
' Returns:      True or False
' Throws:       none
' References:   none
' Source/date:  John R. Boetsch, 5/5/2006 as fxnSwitchboardIsOpen
' Adapted:      Bonnie Campbell, 4/30/2015 for NCPN tools
' Revisions:    BLC, 4/30/2015 - initial version
' =================================
Public Function FormIsOpen(strFormName As String) As Boolean
    On Error GoTo Err_Handler

    Dim frm As Form

    FormIsOpen = False    ' Default in case of error
 
    'search for form in Forms collection (all open forms)
    For Each frm In Forms
      If frm.name = strFormName Then
        'check form is in Form view: 0 - Design View, 1 - Form View, 2 - Datasheet View
        If frm.CurrentView = 1 Then
            FormIsOpen = True
            'Exit Function
        End If
      End If
    Next

Exit_Function:
    Exit Function

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - FormIsOpen[mod_UI])"
    End Select
    Resume Exit_Function
End Function

' =================================
' FUNCTION:     SwitchboardIsOpen
' Description:  Indicates whether or not the switchboard form is open in form view
' Parameters:   none
' Returns:      True or False
' Throws:       none
' References:   none
' Source/date:  John R. Boetsch, 5/5/2006
' Revisions:    JRB, 5/5/2006 - initial version
'               BLC, 4/30/2015  - moved to mod_Db framework module from mod_Custom_Functions
'               BLC, 5/18/2015 - renamed, removed fxn prefix
' =================================
Public Function SwitchboardIsOpen() As Boolean
    On Error GoTo Err_Handler

    SwitchboardIsOpen = False    ' Default in case of error

    Dim strSwitchboardName As String

    strSwitchboardName = "frm_Switchboard"

    'check for switchboard in all open forms ( AllForms.IsLoaded() )
    If CurrentProject.AllForms(strSwitchboardName).IsLoaded = True Then
        If CurrentProject.AllForms(strSwitchboardName).CurrentView = 1 Then
            SwitchboardIsOpen = True
        End If
    End If

Exit_Function:
    Exit Function

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - SwitchboardIsOpen[mod_UI])"
    End Select
    Resume Exit_Function
End Function

' =================================
' FUNCTION:     FormIsLoaded
' Description:  Returns whether the specified form is loaded in Form or Datasheet view
' Parameters:   strFormName - string for the name of the form to check
' Returns:      True if the specified form is open in Form view or Datasheet view
' Throws:       none
' References:   none
' Source/date:  From Northwind sample database, date unknown
' Revisions:    John R. Boetsch, 6/17/2009 - error trapping, documentation
'               BLC, 4/30/2015 - moved from mod_Utilities to mod_UI
'               BLC, 5/18/2015 - renamed, removed fxn prefix
' =================================
Public Function FormIsLoaded(ByVal strFormName As String) As Integer
    On Error GoTo Err_Handler
 
    ' These variables are used to test the return values of the SysCmd function
    '  and the CurrentView property of the requested form.
    Const cObjStateClosed = 0
    Const cDesignView = 0

    ' Use the SysCmd function to check the current state of the requested form.
    '  Possible states: not open or nonexistent, open, new, or changed but not saved
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> cObjStateClosed Then
        ' Checks for the current view of the requested form, assuming the previous statement
        '   found it to be open ... return True if open and not in design view
        If Forms(strFormName).CurrentView <> cDesignView Then
            FormIsLoaded = True
        End If
    End If
    
Exit_Function:
    Exit Function

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - FormIsLoaded[mod_UI])"
    End Select
    Resume Exit_Function
End Function

' ---------------------------------
' SUB:          repaintParentForm
' Description:  Repaints the control's parent(or grandparent or great grandparent...) form
' Parameters:   ctl - control whose parent form you're looking to repaint
' Returns:      -
' Throws:       none
' References:   none
' Source/date:  Bonnie Campbell August, 2014 - NCPN tools
' Adapted:      -
' Revisions:    BLC, 8/20/2014 - initial version
'               BLC, 4/30/2015 - moved from mod_Common_UI to mod_UI
' ---------------------------------
Public Sub repaintParentForm(ctl As Control)
On Error GoTo Err_Handler:
Dim parentControl As Object
        
    Set parentControl = ctl.Parent
    
    Do Until parentControl Is Nothing
      
        If TypeName(parentControl.name) = "String" Then
            'form? -> refresh the display
            If getAccessObjectType(parentControl.name) = -32768 Then
                parentControl.Repaint
                Exit Do
            End If
            Set parentControl = parentControl.Parent
        Else
            'form? -> refresh the display
            If CurrentProject.AllForms(parentControl.name).IsLoaded Then
                parentControl.Repaint
                Exit Do
            End If
        End If
    Loop
    
Exit_Procedure:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - repaintParentForm[mod_UI])"
    End Select
    Resume Exit_Procedure
End Sub

' ---------------------------------
'  Reports
' ---------------------------------

' =================================
' FUNCTION:     ReportIsLoaded
' Description:  Returns whether the specified report is loaded
' Parameters:   strReportName - string for the name of the report to check
' Returns:      True if the specified report is open, False if not
' Throws:       none
' References:   none
' Source/date:  Bonnie Campbell - 5/17/2015 - for NCPN tools
' Revisions:    BLC, 5/17/2015 - initial version
' =================================
Public Function ReportIsLoaded(ByVal strReportName As String) As Boolean
On Error GoTo Err_Handler
 
    ' Possible states returned by SysCmd & CurrentView
    Const cObjStateClosed = 0
    Const cDesignView = 0
    Const cPrintView = 5
    Const cReportView = 6
    Const cLayoutView = 7

    ' check current state - not open or nonexistent, design, print, layout, or report view
    If SysCmd(acSysCmdGetObjectState, acReport, strReportName) <> cObjStateClosed Then
        ' check current view, return True if open and not in design view
        If Reports(strReportName).CurrentView <> cDesignView Then
            ReportIsLoaded = True
        End If
    End If
    
Exit_Function:
    Exit Function

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - ReportIsLoaded[mod_UI])"
    End Select
    Resume Exit_Function
End Function

' ---------------------------------
'  Tabs
' ---------------------------------

' =================================
' SUB:          tabPageUnhide
' Description:  sets desired tab visible, all others hidden
' Parameters:   strTabName - tab page name to make visible
'               ctrl - tab control
' Returns:      -
' Throws:       none
' References:   none
' Source/date:  Adapted from Tom's post comment, 9/12/2009
'               http://www.vbdotnetforums.com/gui/36561-loop-through-tab-pages-remove.html
'               Created 06/11/2014 blc; Last modified 06/11/2014 blc.
' Adapted:      Bonnie Campbell, June 11, 2014 - initial version
' Revisions:    BLC, June 11, 2014 - initial version
'               BLC, June 9, 2015  - adjust for hiding tabs only with blnHideOnly
' =================================
Public Sub tabPageUnhide(ctrl As TabControl, strTabName As String, Optional blnHideOnly As Boolean)
On Error GoTo Err_Handler

    Dim pg As Page
    
    For Each pg In ctrl.Pages
        If pg.name = strTabName Then
            If Not blnHideOnly = True Then
                ctrl.Pages(pg.name).visible = True
            End If
        Else
            ctrl.Pages(pg.name).visible = False
        End If
    Next pg
    
Exit_Procedure:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - tabPageUnhide[mod_UI])"
    End Select
    Resume Exit_Procedure
End Sub

' ---------------------------------
'  Controls
' ---------------------------------

' =================================
' FUNCTION:     HideObject
' Description:  Changes the hidden property of an object to hide / show in the database window
' Parameters:   strObjectName - name of the object (string)
'               blnHide - True to hide, False to show (default True)
'               varType - object type (default acTable)
' Returns:      none
' Throws:       none
' References:   none
' Source/date:  John R. Boetsch, 6/25/2009
' Revisions:    JRB, 6/25/2009 - initial version
'               BLC, 4/30/2015 - move from mod_Utilities to mod_UI
'               BLC, 5/18/2015 - renamed, removed fxn prefix
' =================================
Public Function HideObject(strObjectName As String, _
    Optional blnHide As Boolean = True, Optional varType As Variant = acTable)

    On Error GoTo Err_Handler

    SetHiddenAttribute varType, strObjectName, blnHide

Exit_Function:
    Exit Function

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - HideObject[mod_UI])"
    End Select
    Resume Exit_Function
End Function

' =================================
' FUNCTION:     ControlExists
' Description:  determines if a control exists in a form
' Parameters:   ctlName - control to check for (string)
'               frm - form to check on (form)
' Returns:      boolean - true if control exists, false if not
' Throws:       none
' References:   none
' Source/date:  Adapted from http://www.tek-tips.com/viewthread.cfm?qid=1029435
'               by VBslammer, 3/22/2005.
' Revisions:    BLC, 5/12/2015 - initial version
' =================================
Function ControlExists(ByRef ctlName As String, ByRef frm As Form) As Boolean
On Error GoTo Err_Handler
  Dim ctl As Control
  
  For Each ctl In frm.Controls
    If ctl.name = ctlName Then
      ControlExists = True
      Exit For
    End If
  Next ctl
  
Exit_Function:
    Exit Function

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - ControlExists[mod_UI])"
    End Select
    Resume Exit_Function
End Function

' ---------------------------------
' SUB:          buttonHighlight
' Description:  Toggle button color to strColor or transparent if already colored
' Parameters:   btn      - name of the button to change
'                          accommodates command and label as control buttons
'               strColor - color as a string (hex)
' Returns:      -
' Throws:       none
' References:   none
' Source/date:  Bonnie Campbell May 12, 2014 - NCPN tools
' Adapted:      -
' Revisions:    BLC, 5/12/2014 - initial version
'               BLC, 4/30/2015 - moved from mod_Common_UI to mod_UI
' ---------------------------------
Public Sub buttonHighlight(btn As Control, Optional solo As Boolean, Optional Toggle As Boolean, Optional intEffect As Integer, Optional strColor As String)
' Special Effects:  0 - flat, 1 - raised, 2 - sunken, 3 - etched, 4 - shadowed, 5 - chiseled
' Colors:
'   lime                   #9EFF00
'   chartreuse 1           #7FFF00 127 255 00  65407
'   dark olive green 1     #CAFF70 202 255 112 7405514
'   mint                   #BDFCC9 189 252 201 13237437
'   light lime (like)      #E6FABF 230 250 191
'   darker lt lime         #CFF583 207 245 131
On Error GoTo Err_Handler:

    'toggle button
    If Toggle Then
        buttonUnHighlight btn, Toggle
    End If
    
    'change all others to transparent if solo
    If solo Then
        buttonUnHighlight btn
    End If
    
    With btn
        If .backstyle = 1 Then
            GoTo Transparent
        End If
        
        If (Len(strColor) <> 6) Then
            strColor = "CFF583"
        End If
    
        If intEffect > -1 Or intEffect > 6 Then
            intEffect = 0 'flat
        End If
           
        'change button background to given color
        .backstyle = 1 'Normal - required to change color
        .backcolor = HTMLConvert("#" & strColor)
        .SpecialEffect = intEffect
    End With
    
Exit_Procedure:
    Exit Sub

Transparent:
    btn.backstyle = 0 'Transparent
    GoTo Exit_Procedure

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - buttonHighlight[mod_UI])"
    End Select
    Resume Exit_Procedure
End Sub

' ---------------------------------
' SUB:          buttonUnHighlight
' Description:  Toggles all other buttons to transparent if already colored
' Parameters:   btn - name of the button control to change
'                     accommodates command and label as control buttons
' Returns:      -
' Throws:       none
' References:   none
' Source/date:  Bonnie Campbell May 12, 2014 - NCPN tools
' Adapted:      -
' Revisions:    BLC, 5/12/2014 - initial version
'               BLC, 4/30/2015 - moved from mod_Common_UI to mod_UI
' ---------------------------------
Public Sub buttonUnHighlight(btn As Control, Optional blnToggle As Boolean)
On Error GoTo Err_Handler:
Dim ctl As Control

    With btn
        'unhighlight only btn
        If blnToggle Then
            .backstyle = 0 'transparent
            .SpecialEffect = 0 'flat
            GoTo Exit_Procedure
        End If
        
        'unhighlight all other buttons
        For Each ctl In .Parent.Controls

            If ctl.name <> btn.name And _
                ctl.ControlType = acLabel Then
                With ctl
                    .backstyle = 0 'transparent
                End With
            End If

        Next
    
    End With
    
Exit_Procedure:
    'update display
    repaintParentForm btn
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - buttonUnHighlight[mod_UI])"
    End Select
    Resume Exit_Procedure
End Sub

' ---------------------------------
' SUB:          DisableControl
' Description:  Set color scheme for labels so they appear disabled
' Assumptions:  Assumes control has BackColor and ForeColor properties
' Parameters:   ctrl - control to set color scheme for
' Returns:      N/A
' Throws:       none
' References:   none
' Source/date:
' Adapted:      Bonnie Campbell, February 7, 2015 - for NCPN tools
' Revisions:
'   BLC - 2/7/2015  - initial version
'   BLC - 5/10/2015 - moved to mod_List from mod_Lists
'   BLC - 5/22/2015 - moved from mod_List to mod_UI
' ---------------------------------
Public Sub DisableControl(ctrl As Control)

On Error GoTo Err_Handler
    
    ctrl.backcolor = lngLtGray
    ctrl.forecolor = lngGray
    
    If ctrl.ControlType = acCommandButton Then
        ctrl.borderColor = lngGray
    End If

Exit_Sub:
    Exit Sub
    
Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - DisableControl[mod_UI])"
    End Select
    Resume Exit_Sub
End Sub

' ---------------------------------
' SUB:          EnableControl
' Description:  Set color scheme for labels so they appear enabled
' Assumptions:  Assumes control has BackColor and ForeColor properties
' Parameters:   ctrl - control to set color scheme for
'               backColor - long value for desired back color
'               foreColor - long value for desired fore (text) color
'               optionally for command buttons:
'               borderColor - long value for desired border color
'               hoverColor - long value for desired hover color
'               pressedColor - long value for desired pressed button color
'               hoverForeColor - long value for desired hover fore (text) color
'               pressedForeColor - long value for desired pressed button fore (text) color
' Returns:      N/A
' Throws:       none
' References:   none
' Source/date:
' Adapted:      Bonnie Campbell, February 7, 2015 - for NCPN tools
' Revisions:
'   BLC - 2/7/2015  - initial version
'   BLC - 5/10/2015 - moved to mod_List from mod_Lists
'   BLC - 5/22/2015 - moved from mod_List to mod_UI
' ---------------------------------
Public Function EnableControl(ctrl As Control, backcolor As Long, forecolor As Long, _
                                Optional borderColor As Long, _
                                Optional hoverColor As Long, _
                                Optional pressColor As Long, _
                                Optional hoverForeColor As Long, _
                                Optional pressedForeColor As Long)
On Error GoTo Err_Handler
    
    ctrl.backcolor = backcolor
    ctrl.forecolor = forecolor
    
    If ctrl.ControlType = acCommandButton Then
        ctrl.borderColor = borderColor
        ctrl.hoverColor = hoverColor
        ctrl.pressedColor = pressColor
        ctrl.hoverForeColor = hoverForeColor
        ctrl.pressedForeColor = pressedForeColor
    End If

Exit_Function:
    Exit Function
    
Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - EnableControl[mod_UI])"
    End Select
    Resume Exit_Function
End Function

' ---------------------------------
' SUB:          ToggleControl
' Description:  Toggles control font (fore) color & enables/disables
' Parameters:   frmName - name of parent form (string)
'               btnName - name of the button control to change
'                     accommodates command and label as control buttons (string)
'               color - optional color value (long)
' Returns:      -
' Throws:       none
' References:   none
' Source/date:  Bonnie Campbell May 12, 2014 - NCPN tools
' Adapted:      -
' Revisions:    BLC, 5/12/2014 - initial version
'               BLC, 4/30/2015 - moved from mod_Common_UI to mod_UI
' ---------------------------------
Public Sub ToggleControl(frmName As String, btnName As String, Optional color As Variant = Null)
On Error GoTo Err_Handler:
    
    Dim ctrl As Control
    Set ctrl = Forms(frmName).Controls(btnName)
    
    'invert enabled value (change true -> false, false -> true) & change color
    With ctrl
    
        'enable/disable control (includes acCommandButton, acComboBox, acListBox, acTextBox, acToggleButton)
        If Not ctrl.ControlType = acLabel Then
            .Enabled = Not .Enabled
        End If
        
        If Not IsNull(color) Then
            ' change font color for appropriate controls with text
            Select Case ctrl.ControlType
                Case acCommandButton, acComboBox, acLabel, acListBox, acTextBox, acToggleButton
                    .forecolor = color
                Case Else
            End Select
        End If
    End With
    
Exit_Procedure:
    'update display
    repaintParentForm Forms(frmName).Controls(btnName)
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - ToggleControl[mod_UI])"
    End Select
    Resume Exit_Procedure
End Sub


' ---------------------------------
'  Text
' ---------------------------------

' =================================
' FUNCTION:     CrumbsToArray
' Description:  Prepares breadcrumb elements from Me.OpenArgs values
' Parameters:   strCrumbs - Me.OpenArgs values from form open subs
'               delimiter - delimiter used for separating string values, default = | (pipe)
' Returns:      aryCrumbs - array of breadcrumb values
' Throws:       none
' References:   none
' Source/date:
'               Created 06/12/2014 blc; Last modified 06/12/2014 blc.
' Revisions:    BLC, 6/12/2014 - initial version
'               BLC, 4/30/2015 - moved from mod_Common_UI to mod_UI
'               BLC, 5/18/2015 - renamed, removed fxn prefix
' =================================
Public Function CrumbsToArray(strCrumbs As String, Optional delimiter = "|")

On Error GoTo Err_Handler

    Dim strCrumbTrail As String

    If Len(strCrumbs) > 0 Then
        Dim aryCrumbs As Variant
        
        aryCrumbs = Split(strCrumbs, delimiter)
        
    End If

    CrumbsToArray = aryCrumbs
    
Exit_Procedure:
    Exit Function

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - CrumbsToArray[mod_UI])"
    End Select
    Resume Exit_Procedure
End Function

' =================================
' SUB:     PrepareCrumbs
' Description:  Sets breadcrumb label control captions & click events based on crumb element array
' Assumptions:  Breadcrumbs are displayed using label controls (lblCrumb01...)
'               & labels already exist on the targeted form
' Parameters:   frm - form holding crumb labels
'               aryCrumbs - breadcrumb array
'               separator - non-clickable value between crumbs, default = >
' Returns:      aryCrumbs - array of breadcrumb values
' Throws:       none
' References:   none
' Source/date:
'               Created 06/12/2014 blc; Last modified 06/12/2014 blc.
' Revisions:    BLC, 6/12/2014 - initial version
'               BLC, 4/30/2015 - moved from mod_Common_UI to mod_UI
' =================================
Public Sub PrepareCrumbs(frm As SubForm, aryCrumbs As Variant, Optional separator = ">")
 On Error GoTo Err_Handler
 
    Dim ctrl As Control
    Dim i As Integer, intLastCtrlWidth As Integer, intLastCtrlPosition As Integer
    Dim strNum As String, strCtrlName As String, strCtrlSeparator As String
    
    'initialize
    intLastCtrlPosition = 10
    
    'avoid flicker
    'Painting = False
    
    For i = 1 To UBound(aryCrumbs)
        ' set lbl caption
        If (i < 10) Then
            strNum = 0 & i
        Else
            strNum = i
        End If
        
        strCtrlName = "lblCrumb" & strNum
        
        With frm.Controls(strCtrlName)
       
            If .ControlType = acLabel Then
                'label control
                .Caption = aryCrumbs(i)
            Else
                'hyperlink control (displaytext vs caption)
                .Value = aryCrumbs(i)
            End If
            
            'set control position
            If intLastCtrlPosition > frm.Controls(strCtrlName).Parent.Width Then
                .Left = frm.Controls(strCtrlName).Parent.Width - .Width
            Else
                .Left = intLastCtrlPosition
            End If
            
            'set control width
'            setControlWidth frm.Controls(strCtrlName), , frm.Controls(strCtrlName).Parent.Width
            
            'save new ctrl width for setting separator position
            intLastCtrlWidth = .Width
        
        End With
        
        'display the separator
        If (i < UBound(aryCrumbs)) Then
          strCtrlSeparator = "lblSep" & strNum
          With frm.Controls(strCtrlSeparator)
            .Left = intLastCtrlPosition + intLastCtrlWidth + 10
            .Caption = separator
            .visible = True
            
            'determine position of next control
            intLastCtrlPosition = .Left + .Width + 10
          End With
        End If
        
    Next i
    
    'ready for viewing
    'Painting = True
    
Exit_Procedure:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - PrepareCrumbs[mod_UI])"
    End Select
    Resume Exit_Procedure
End Sub