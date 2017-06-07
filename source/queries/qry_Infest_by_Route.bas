dbMemo "SQL" ="SELECT tbl_Locations.Unit_Code, Year([Start_Date]) AS Visit_Year, tbl_Locations."
    "Plot_ID, tbl_Infestation.Master_Code\015\012FROM tbl_Locations LEFT JOIN (tbl_In"
    "festation_Events LEFT JOIN tbl_Infestation ON tbl_Infestation_Events.Infest_Even"
    "t_ID = tbl_Infestation.Infest_Event_ID) ON tbl_Locations.Location_ID = tbl_Infes"
    "tation_Events.Location_ID\015\012WHERE (((Year([Start_Date])) Is Not Null))\015\012"
    "ORDER BY tbl_Locations.Plot_ID, tbl_Infestation.Master_Code;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x3e8d2b3f40626e488b97f88ab731fa5e
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="tbl_Infestation.Master_Code"
        dbInteger "ColumnWidth" ="1635"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Visit_Year"
        dbBinary "GUID" = Begin
            0x50959492a799e342a2778d584cf8cb1a
        End
    End
End
