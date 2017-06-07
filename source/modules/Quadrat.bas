Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

' =================================
' CLASS:        Quadrat
' Level:        Framework class
' Version:      1.00
'
' Description:  Quadrat object related properties, events, functions & procedures for UI display
'
' Source/date:  Bonnie Campbell, 4/20/2017
' References:   -
' Revisions:    BLC - 4/20/2017 - 1.00 - initial version
' =================================

'---------------------
' Declarations
'---------------------
Private m_ID As Long
Private m_QuadratID As Long
Private m_EventID As Long
Private m_TransectID As Long
Private m_SurfaceCover As DAO.Recordset
Private m_SpeciesCover As DAO.Recordset
Private m_IsSampledQ1 As Boolean
Private m_IsSampledQ2 As Boolean
Private m_IsSampledQ3 As Boolean
Private m_NoExoticsQ1 As Boolean
Private m_NoExoticsQ2 As Boolean
Private m_NoExoticsQ3 As Boolean

'---------------------
' Events
'---------------------
Public Event InvalidID(value As Long)

Public Event InvalidEventID(value As Long)
Public Event InvalidTransectID(value As Long)
Public Event InvalidQuadratID(value As Long)
Public Event InvalidIsSampled(value As Boolean)
Public Event InvalidNoExotics(value As Boolean)
Public Event InvalidSurfaceCover(value As DAO.Recordset)
Public Event InvalidSpeciesCover(value As DAO.Recordset)

'---------------------
' Properties
'---------------------
Public Property Let ID(value As Long)
    If varType(value) = vbLong Then
        m_ID = value
    Else
        RaiseEvent InvalidID(value)
    End If
End Property

Public Property Get ID() As Long
    ID = m_ID
End Property

Public Property Let EventID(value As Long)
    If varType(value) = vbLong Then
        m_EventID = value
    Else
        RaiseEvent InvalidEventID(value)
    End If
End Property

Public Property Get EventID() As Long
    EventID = m_EventID
End Property

Public Property Let transectID(value As Long)
    If varType(value) = vbLong Then
        m_TransectID = value
    Else
        RaiseEvent InvalidTransectID(value)
    End If
End Property

Public Property Get transectID() As Long
    transectID = m_TransectID
End Property


Public Property Let QuadratID(value As Long)
    If varType(value) = vbLong Then
        m_QuadratID = value
    Else
        RaiseEvent InvalidQuadratID(value)
    End If
End Property

Public Property Get QuadratID() As Long
    QuadratID = m_QuadratID
End Property

Public Property Let SpeciesCover(value As DAO.Recordset)
    'assume vbDaataObject is a DAO.Recordset
    If varType(value) = vbDataObject Then
        Set m_SpeciesCover = value
    Else
        RaiseEvent InvalidSpeciesCover(value)
    End If
End Property

Public Property Get SpeciesCover() As DAO.Recordset
    Set SpeciesCover = m_SpeciesCover
End Property

Public Property Let SurfaceCover(value As DAO.Recordset)
    'assume vbDaataObject is a DAO.Recordset
    If varType(value) = vbDataObject Then
        Set m_SurfaceCover = value
    Else
        RaiseEvent InvalidSurfaceCover(value)
    End If
End Property

Public Property Get SurfaceCover() As DAO.Recordset
    Set SurfaceCover = m_SurfaceCover
End Property

Public Property Let IsSampledQ1(value As Boolean)
    If varType(value) = vbBoolean Then
        m_IsSampledQ1 = value
    Else
        RaiseEvent InvalidIsSampled(value)
    End If
End Property

Public Property Get IsSampledQ1() As Boolean
    IsSampledQ1 = m_IsSampledQ1
End Property

Public Property Let IsSampledQ2(value As Boolean)
    If varType(value) = vbBoolean Then
        m_IsSampledQ2 = value
    Else
        RaiseEvent InvalidIsSampled(value)
    End If
End Property

Public Property Get IsSampledQ2() As Boolean
    IsSampledQ2 = m_IsSampledQ2
End Property

Public Property Let IsSampledQ3(value As Boolean)
    If varType(value) = vbBoolean Then
        m_IsSampledQ3 = value
    Else
        RaiseEvent InvalidIsSampled(value)
    End If
End Property

Public Property Get IsSampledQ3() As Boolean
    IsSampledQ3 = m_IsSampledQ3
End Property

Public Property Let NoExoticsQ1(value As Boolean)
    If varType(value) = vbBoolean Then
        NoExoticsQ1 = value
    Else
        RaiseEvent InvalidNoExotics(value)
    End If
End Property

Public Property Get NoExoticsQ1() As Boolean
    NoExoticsQ1 = m_NoExoticsQ1
End Property

Public Property Let NoExoticsQ2(value As Boolean)
    If varType(value) = vbBoolean Then
        NoExoticsQ2 = value
    Else
        RaiseEvent InvalidNoExotics(value)
    End If
End Property

Public Property Get NoExoticsQ2() As Boolean
    NoExoticsQ2 = m_NoExoticsQ2
End Property

Public Property Let NoExoticsQ3(value As Boolean)
    If varType(value) = vbBoolean Then
        NoExoticsQ3 = value
    Else
        RaiseEvent InvalidNoExotics(value)
    End If
End Property

Public Property Get NoExoticsQ3() As Boolean
    NoExoticsQ3 = m_NoExoticsQ3
End Property
'---------------------
' Methods
'---------------------

' ---------------------------------
' Sub:          Class_Initialize
' Description:  Class initialization (starting) event
' Assumptions:  -
' Parameters:   -
' Returns:      -
' Throws:       none
' References:   -
' Source/date:  Bonnie Campbell, October 30, 2015 - for NCPN tools
' Adapted:      -
' Revisions:
'   BLC - 10/30/2015 - initial version
' ---------------------------------
Private Sub Class_Initialize()
On Error GoTo Err_Handler

Exit_Handler:
    Exit Sub
    
Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Class_Initialize[Quadrat class])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' Sub:          Class_Terminate
' Description:  Class termination (closing) event
' Assumptions:  -
' Parameters:   -
' Returns:      -
' Throws:       none
' References:   -
' Source/date:  Bonnie Campbell, October 30, 2015 - for NCPN tools
' Adapted:      -
' Revisions:
'   BLC - 10/30/2015 - initial version
' ---------------------------------
Private Sub Class_Terminate()
On Error GoTo Err_Handler

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Class_Terminate[cls_WoodyCanopy])"
    End Select
    Resume Exit_Handler
End Sub

'======== Custom Methods ===========
'---------------------------------------------------------------------------------------
' SUB:          Init
' Description:  Lookup Quadrat based on Quadrat/microhabitat ID
' Parameters:   ID - identifier for Quadrat/microhabitat record (long)
' Returns:      -
' Throws:       -
' References:   -
' Source/Date:  Bonnie Campbell
' Adapted:      Bonnie Campbell, 4/17/2017 - for NCPN tools
' Revisions:
'   BLC, 4/17/2017 - initial version
'---------------------------------------------------------------------------------------
Public Sub Init(ID As Long)
On Error GoTo Err_Handler
    
    Dim rs As DAO.Recordset
    
    'set ID for parameters
    SetTempVar "QuadratID", ID
    
    Set rs = GetRecords("s_Quadrat_by_ID")
    If Not (rs.EOF And rs.BOF) Then
        With rs
            Me.ID = Nz(.Fields("ID"), 0)
            Me.EventID = Nz(.Fields("Event_ID"), "")
'            Me. = Nz(.Fields(""), "")
        End With
    Else
        RaiseEvent InvalidID(ID)
    End If

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
        Case Else
            MsgBox "Error #" & Err.Description, vbCritical, _
                "Error encounter (#" & Err.Number & " - Init[Quadrat class])"
    End Select
    Resume Exit_Handler
End Sub

'---------------------------------------------------------------------------------------
' SUB:          SaveToDb
' Description:  Save Quadrat/microhabitat based to database
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/Date:  Bonnie Campbell
' Adapted:      Bonnie Campbell, 4/17/2017 - for NCPN tools
' Revisions:
'   BLC, 4/17/2017 - initial version
'---------------------------------------------------------------------------------------
Public Sub SaveToDb(Optional IsUpdate As Boolean = False)
On Error GoTo Err_Handler
    
    Dim Template As String
    
    Template = "i_Quadrat"
    
    Dim params(0 To 5) As Variant

    With Me
        params(0) = "Quadrat"
        params(1) = .EventID
        params(2) = .transectID
'        params(3) = .
        
        If IsUpdate Then
            Template = "u_Quadrat"
            params(4) = .ID
        End If
        
        .ID = SetRecord(Template, params)
    End With

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
        Case Else
            MsgBox "Error #" & Err.Description, vbCritical, _
                "Error encounter (#" & Err.Number & " - SaveToDb[Quadrat class])"
    End Select
    Resume Exit_Handler
End Sub

'---------------------------------------------------------------------------------------
' SUB:          GetSpeciesCover
' Description:  Retrieve Quadrat species cover for its quadrats
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/Date:  Bonnie Campbell
' Adapted:      Bonnie Campbell, 4/20/2017 - for NCPN tools
' Revisions:
'   BLC, 4/20/2017 - initial version
'---------------------------------------------------------------------------------------
Public Sub GetSpeciesCover(Optional IsUpdate As Boolean = False)
On Error GoTo Err_Handler
    
    Dim Template As String
    
    Template = "s_speciescover_by_quadrat"
    
    With Me
'        params(0) = "SpeciesCover"
'        SetTempVar "ParkCode", .Park
        SetTempVar "EventID", .EventID
        SetTempVar "TransectID", .transectID
        
        .SpeciesCover = GetRecords(Template)
    End With

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
        Case Else
            MsgBox "Error #" & Err.Description, vbCritical, _
                "Error encounter (#" & Err.Number & " - GetSpeciesCover[Quadrat class])"
    End Select
    Resume Exit_Handler
End Sub

'---------------------------------------------------------------------------------------
' SUB:          GetSurfaceCover
' Description:  Save Quadrat/microhabitat based to database
' Parameters:   -
' Returns:      -
' Throws:       -
' References:   -
' Source/Date:  Bonnie Campbell
' Adapted:      Bonnie Campbell, 4/20/2017 - for NCPN tools
' Revisions:
'   BLC, 4/20/2017 - initial version
'---------------------------------------------------------------------------------------
Public Sub GetSurfaceCover(Optional IsUpdate As Boolean = False)
On Error GoTo Err_Handler
    
    Dim Template As String
    
    Template = "s_surfacecover_by_quadrat"
    
    With Me
'        params(0) = "SpeciesCover"
'        SetTempVar "ParkCode", .Park
        SetTempVar "EventID", .EventID
        SetTempVar "TransectID", .transectID
        
        .SurfaceCover = GetRecords(Template)
    End With

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
        Case Else
            MsgBox "Error #" & Err.Description, vbCritical, _
                "Error encounter (#" & Err.Number & " - GetSurfaceCover[Quadrat class])"
    End Select
    Resume Exit_Handler
End Sub