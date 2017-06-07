dbMemo "SQL" ="SELECT tbl_Locations.Unit_Code, Year([Start_Date]) AS Visit_Year, tbl_Locations."
    "Plot_ID, Transect.Transect\015\012FROM tbl_Locations LEFT JOIN (tbl_Events LEFT "
    "JOIN Transect ON tbl_Events.Event_ID = Transect.Event_ID) ON tbl_Locations.Locat"
    "ion_ID = tbl_Events.Location_ID\015\012GROUP BY tbl_Locations.Unit_Code, Year([S"
    "tart_Date]), tbl_Locations.Plot_ID, Transect.Transect;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBinary "GUID" = Begin
    0xe6c5411112cc114bae83af5ac81756e9
End
Begin
    Begin
        dbText "Name" ="Visit_Year"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x764fe0c3bd115841bd33399a46fc08f4
        End
    End
    Begin
        dbText "Name" ="tbl_Locations.Unit_Code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Plot_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Transect.Transect"
        dbLong "AggregateType" ="-1"
    End
End
