dbMemo "SQL" ="SELECT tbl_Locations.Unit_Code, tbl_Locations.Plot_ID AS Route, Year([Start_Date"
    "]) AS Visit_Year, Count(tbl_Quadrat_Transect.Transect) AS CountOfTransect\015\012"
    "FROM tbl_Locations LEFT JOIN (tbl_Events LEFT JOIN tbl_Quadrat_Transect ON tbl_E"
    "vents.Event_ID = tbl_Quadrat_Transect.Event_ID) ON tbl_Locations.Location_ID = t"
    "bl_Events.Location_ID\015\012GROUP BY tbl_Locations.Unit_Code, tbl_Locations.Plo"
    "t_ID, Year([Start_Date])\015\012HAVING (((tbl_Locations.Unit_Code)=Forms!frm_Sel"
    "ect_Transect_Counts!Park_Code) And ((Year([Start_Date]))=Forms!frm_Select_Transe"
    "ct_Counts!Visit_Year));\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbBinary "GUID" = Begin
    0x044edeb3832a3442822f123f78d6dc91
End
Begin
    Begin
        dbText "Name" ="CountOfTransect"
        dbInteger "ColumnWidth" ="1740"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0e43450730424c40a8da35f00589ba5f
        End
    End
    Begin
        dbText "Name" ="tbl_Locations.Unit_Code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Route"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x469fc7ec59f955488dee3f63701ae5a9
        End
    End
    Begin
        dbText "Name" ="Visit_Year"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8751ad407fa76f4fb95487a77b356c9b
        End
    End
End
