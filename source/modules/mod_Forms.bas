Option Compare Database
Option Explicit

' =================================
' MODULE:       mod_Forms
' Level:        Framework module
' Version:      1.00
' Description:  generic form functions & procedures
'
' Source/date:  Bonnie Campbell, 2/19/2015
' Revisions:    BLC - 2/19/2015 - 1.00 - initial version
' =================================

'=================================================================
'  References
'=================================================================
' ---------------------------------
'  Access Control Types
' ---------------------------------
' dbtech1, March 13, 2008
' http://www.utteraccess.com/forum/control-type-vba-t1609220.html
' 126 - acAttachment         119 - acCustomControl  114 - acObjectFrame    101 - acRectangle
' 108 - acBoundObjectFrame   103 - acImage          105 - acOptionButton   112 - acSubform
' 106 - acCheckBox           100 - acLabel          107 - acOptionGroup    123 - acTabCtl
' 111 - acComboBox           102 - acLine           124 - acPage           109 - acTextBox
' 104 - acCommandButton      110 - acListBox        118 - acPageBreak      122 - acToggleButton
' ---------------------------------

' ---------------------------------
'  Access Form Sections
' ---------------------------------
'   acDetail        0   (Default) Detail section    acGroupLevel1Footer 6   Group-level 1 footer (reports only)
'   acFooter        2   Form or report footer       acGroupLevel1Header 5   Group-level 1 header (reports only)
'   acHeader        1   Form or report header       acGroupLevel2Footer 8   Group-level 2 footer (reports only)
'   acPageFooter    4   Page footer                 acGroupLevel2Header 7   Group-level 2 header (reports only)
'   acPageHeader    3   Page header
' ---------------------------------

' ---------------------------------
'  Access Backstyle Property
' ---------------------------------
'  Transparent  0           Normal  1
' ---------------------------------

'=================================================================
'  Declarations
'=================================================================
Declare Function IsZoomed Lib "user32" (ByVal hwnd As Long) As _
     Integer
Declare Function IsIconic Lib "user32" (ByVal hwnd As Long) As _
     Integer

'=================================================================
'  Properties
'=================================================================


'=================================================================
'  Subroutines & Functions
'=================================================================

' ---------------------------------
' FUNCTION:     CloseFormsReports
' Description:  close forms, reports
' Assumptions:  -
' Parameters:   -
' Returns:      N/A
' Throws:       none
' References:   none
' Source/date:  Susan Harkins, July 21, 2009
'   http://www.techrepublic.com/blog/microsoft-office/automatically-close-all-the-open-forms-and-reports-in-an-access-database/
' Adapted:      Bonnie Campbell, June 9, 2015 - for NCPN tools
' Revisions:
'   BLC - 6/9/2015  - initial version
' ---------------------------------
Public Function CloseFormsReports()
On Error GoTo Err_Handler

    'Close all open forms
    Do While Forms.count > 0
        DoCmd.Close acForm, Forms(0).name
    Loop
    
    Do While Reports.count > 0
        DoCmd.Close acReport, Reports(0).name
    Loop

Exit_Function:
    Exit Function

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - CloseFormsReports[mod_Forms])"
    End Select
    Resume Exit_Function
End Function

' ---------------------------------
' FUNCTION:     ChangeBackColor
' Description:  change background color of control
' Assumptions:  -
' Parameters:   ctrl- control to change color
'               lngColor = color (long)
' Returns:      N/A
' Throws:       none
' References:   none
' Note:         MUST be a function vs. sub to be called w/in form event ( =ChangeBackColor(Me,lngYelLime) )
' Source/date:  Bonnie Campbell, March 4, 2015 - for NCPN tools
' Revisions:
'   BLC - 3/4/2015  - initial version
' ---------------------------------
Public Function ChangeBackColor(ctrl As Control, lngColor As Long)
On Error GoTo Err_Handler

    ctrl.backcolor = lngColor
    
Exit_Function:
    Exit Function

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - ChangeBackColor[mod_Forms])"
    End Select
    Resume Exit_Function
End Function

' ---------------------------------
' SUB:          ClearFields
' Description:  initialize application values
' Assumptions:  -
' Parameters:   frm - Form whose fields should be cleared
' Returns:      -
' Throws:       none
' References:   none
' Source/date:  Bonnie Campbell, February 20, 2015 - for NCPN tools
' Revisions:
'   BLC - 2/20/2015  - initial version
' ---------------------------------
Public Sub ClearFields(frm As Form)
On Error GoTo Err_Handler

    Select Case frm.name
    
        Case "frm_Species_Search"
            frm.Controls("cbxCO").DefaultValue = False
            frm.Controls("cbxUT").DefaultValue = False
            frm.Controls("cbxWY").DefaultValue = False
            frm.Controls("cbxITIS").DefaultValue = False
            frm.Controls("cbxCommon").DefaultValue = False
            frm.Controls("tbxSearchFor").Value = ""
    End Select
    
Exit_Sub:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - cbxITIS_Click[form_frmSpeciesSearch])"
    End Select
    Resume Exit_Sub
End Sub

' ---------------------------------
' SUB:          ResetHeaders
' Description:  reset header fields to their
' Assumptions:  if only a subset of form controls are to be reset, these controls should have the same Tag property value
' Parameters:   frm - form to reset headers on
'               allCtrls - if all form controls should be reset (boolean) (true = reset all controls,
'                           false = reset one control [requires oCtrl to be populated])
'               ctrlTag - control's tag string if resetting only a subset of forms controls (string)
'               fontBold - whether text should be bold (boolean) (true = make font bold, false not bold),  (optional)
'               backstyle - if back control back color is normal or transparent (integer) (1-normal 0-transparent) (optional)
'               forecolor - text color (long) (optional)
'               backcolor - backgound color of control (long) (optional)
'               oCtrl - control to change, if only one control is to be changed (optional)
' Returns:      N/A
' Throws:       none
' References:   none
' Source/date:
' Fionnuala January 20, 2013
' http://stackoverflow.com/questions/3344649/how-to-loop-through-all-controls-in-a-form-including-controls-in-a-subform-ac
' Adapted:      Bonnie Campbell, February 20, 2015 - for NCPN tools
' Revisions:
'   BLC - 2/20/2015  - initial version
' ---------------------------------
Public Sub ResetHeaders(frm As Form, _
                        allCtrls As Boolean, _
                        ctrlTag As String, _
                        Optional fontBold As Boolean = True, _
                        Optional backstyle As Integer = 1, _
                        Optional forecolor As Long, _
                        Optional backcolor As Long, _
                        Optional oCtrl As Control)
On Error GoTo Err_Handler

Dim ctrl As Control

    If allCtrls = True Then
    
        'iterate through all form controls
        For Each ctrl In frm
            
            'check control type
             If ctrl.ControlType = acTextBox Or _
                ctrl.ControlType = acComboBox Or _
                ctrl.ControlType = acListBox Or _
                ctrl.ControlType = acLabel _
             Then
             
                'check tag
                If ctrl.tag = ctrlTag Then
                    If varType(fontBold) = vbBoolean Then ctrl.fontBold = fontBold
                    If varType(backstyle) = vbInteger Then ctrl.backstyle = backstyle
                    If varType(backcolor) = vbLong Then ctrl.backcolor = backcolor
                    If varType(forecolor) = vbLong Then ctrl.forecolor = forecolor
                End If
                
          End If
          
        Next
    Else
        'reset only oCtrl

        'check tag
        If oCtrl.tag = ctrlTag Then
        
            'check control type
            If oCtrl.ControlType = acTextBox Or _
                oCtrl.ControlType = acComboBox Or _
                oCtrl.ControlType = acListBox Or _
                oCtrl.ControlType = acLabel _
            Then
          
                If varType(fontBold) = vbBoolean Then oCtrl.fontBold = fontBold
                If varType(backstyle) = vbInteger Then oCtrl.backstyle = backstyle
                If varType(backcolor) = vbLong Then oCtrl.backcolor = backcolor
                If varType(forecolor) = vbLong Then oCtrl.forecolor = forecolor
             
            End If
            
        End If

    End If

Exit_Sub:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - ResetHeaders[form_frmSpeciesSearch])"
    End Select
    Resume Exit_Sub
End Sub

' ---------------------------------
' SUB:          ResetHeaders
' Description:  reset header fields to their default
' Assumptions:  if only a subset of form controls are to be reset, these controls should have the same Tag property value
' Parameters:   frm - form to reset headers on
'               allCtrls - if all form controls should be reset (boolean) (true = reset all controls,
'                           false = reset one control [requires oCtrl to be populated])
'               ctrlTag - control's tag string if resetting only a subset of forms controls (string)
'               visibility - whether control should be visible or not (boolean) (true = make font bold, false not bold),  (optional)
'               oCtrl - control to change, if only one control is to be changed (optional)
' Returns:      N/A
' Throws:       none
' References:   none
' Source/date:
' Fionnuala January 20, 2013
' http://stackoverflow.com/questions/3344649/how-to-loop-through-all-controls-in-a-form-including-controls-in-a-subform-ac
' Adapted:      Bonnie Campbell, February 20, 2015 - for NCPN tools
' Revisions:
'   BLC - 2/20/2015  - initial version
' ---------------------------------
Public Sub ShowControls(frm As Form, _
                        allCtrls As Boolean, _
                        ctrlTag As String, _
                        visibility As Boolean, _
                        Optional oCtrl As Control)
On Error GoTo Err_Handler

Dim ctrl As Control

    If allCtrls = True Then
    
        'iterate through all form controls
        For Each ctrl In frm

            'check tag
            If ctrl.tag = ctrlTag Then
                ctrl.visible = visibility
            End If

        Next
    Else
        'reset only oCtrl

        'check tag
        If oCtrl.tag = ctrlTag Then
                oCtrl.visible = visibility
        End If

    End If

Exit_Sub:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - ShowControls[form_frmSpeciesSearch])"
    End Select
    Resume Exit_Sub
End Sub

' ---------------------------------
' SUB:          AddControl
' Description:  initialize application values
' Assumptions:  -
' Parameters:   frm - form (object)
'               ctrl - control (object)
'               ctrlName - name of control (string)
'               xPos - horizontal position (twips)
'               yPos - vertical position (twips)
' Returns:      -
' Throws:       none
' References:   none
' Source/date:
' meloncolly, October 27, 2006
' http://forums.aspfree.com/microsoft-access-help-18/add-controls-form-dynamically-139627.html
' https://msdn.microsoft.com/en-us/library/bb237827(office.12).aspx
' Adapted:      Bonnie Campbell, February 19, 2015 - for NCPN tools
' Revisions:
'   BLC - 2/19/2015  - initial version
' ---------------------------------
Public Sub AddControl(frm As Form, ctrl As Control, ctrlName As String, _
                        xPos As Integer, yPos As Integer)
On Error GoTo Err_Handler

    ' Create ctrl
    Set ctrl = CreateControl(frm.name, ctrl.ControlType, , "", "", xPos, yPos)
    
    ' Restore form
    DoCmd.Restore

Exit_Sub:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - cbxITIS_Click[form_frmSpeciesSearch])"
    End Select
    Resume Exit_Sub
End Sub

' ---------------------------------
' SUB:          ContinuousUpDown
' Description:  Respond to Up/Down in a continuous form by moving to next record
' Assumptions:  Active control's EnterKeyBehaviro is OFF
' Usage:        Call ContinuousUpDown(Me, KeyCode)
' Parameters:   frm - form for key behavior
'               KeyCode - code for key being pressed (integer)
' Returns:      N/A
' Throws:       none
' References:   none
' Source/date:
' Allen Browne via Jeanette Cunningham, Apr 13, 2010
' http://www.pcreview.co.uk/threads/need-to-get-the-up-down-arrow-keys-working.3995845/
' Adapted:      Bonnie Campbell, March 5, 2015 - for NCPN tools
' Revisions:
'   BLC - 3/5/2015  - initial version
' ---------------------------------
Public Sub ContinuousUpDown(frm As Form, KeyCode As Integer)
On Error GoTo Err_Handler

    Dim strForm As String
    
    strForm = frm.name
    
    'determine key being used
    Select Case KeyCode
        Case vbKeyUp
            If ContinuousUpDownOk Then
                
                'Save any edits
                If frm.Dirty Then
                    RunCommand acCmdSaveRecord
                End If
                
                'Go previous: error if already there.
                    RunCommand acCmdRecordsGoToPrevious
                KeyCode = 0 'Destroy the keystroke
            End If
    
    Case vbKeyDown
        If ContinuousUpDownOk Then
            
            'Save any edits
            If frm.Dirty Then
                frm.Dirty = False
            End If
            
            'Go to the next record, unless at a new record.
            If Not frm.NewRecord Then
                RunCommand acCmdRecordsGoToNext
            End If
            KeyCode = 0 'Destroy the keystroke
        End If
    End Select

Exit_Sub:
    Exit Sub

Err_Handler:
    Select Case Err.Number
        Case 2046, 2101, 2113, 3022, 2465 'Already at first record, or save
            'failed, or The value you entered isn't valid for this field.
            KeyCode = 0
        Case Else
            MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
                "Error encountered (#" & Err.Number & " - ContinuousUpDown[mod_Forms])"
    End Select
    Resume Exit_Sub
End Sub

' ---------------------------------
' FUNCTION:     ContinuousUpDownOk
' Description:  Suppress moving up/down a record in a continuous form if:
'                - control is not in the Detail section
'                - multi-line text box (vertical scrollbar or EnterKeyBehavior true)
' Assumptions:  Active control's EnterKeyBehaviro is OFF
' Usage:        Called by ContinuousUpDown SUB
' Parameters:   N/A
' Returns:      boolean - true if moving up/down a record in continuous form is ok, false if not
' Throws:       none
' References:   none
' Source/date:
' Allen Browne via Jeanette Cunningham, Apr 13, 2010
' http://www.pcreview.co.uk/threads/need-to-get-the-up-down-arrow-keys-working.3995845/
' Adapted:      Bonnie Campbell, March 5, 2015 - for NCPN tools
' Revisions:
'   BLC - 3/5/2015  - initial version
' ---------------------------------
Private Function ContinuousUpDownOk() As Boolean
On Error GoTo Err_Handler
    Dim blnDontDoIt As Boolean
    Dim ctl As Control
    
    Set ctl = Screen.ActiveControl
    If ctl.Section = acDetail Then
        If TypeOf ctl Is TextBox Then
            blnDontDoIt = ((ctl.EnterKeyBehavior) Or (ctl.ScrollBars > 1))
        End If
    Else
        blnDontDoIt = True
    End If

Exit_Function:
    ContinuousUpDownOk = Not blnDontDoIt
    Set ctl = Nothing

Exit Function

Err_Handler:
    Select Case Err.Number
        Case 2474 'No active control
        Case Else
            MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
                "Error encountered (#" & Err.Number & " - ContinuousUpDownOk[mod_Forms])"
    End Select
    Resume Exit_Function
End Function