dbMemo "SQL" ="SELECT tbl_Locations.Unit_Code, tbl_Locations.Plot_ID AS Route, Year([Start_Date"
    "]) AS Visit_Year, Count(Transect.Transect) AS CountOfTransect\015\012FROM tbl_Lo"
    "cations LEFT JOIN (tbl_Events LEFT JOIN Transect ON tbl_Events.Event_ID = Transe"
    "ct.Event_ID) ON tbl_Locations.Location_ID = tbl_Events.Location_ID\015\012GROUP "
    "BY tbl_Locations.Unit_Code, tbl_Locations.Plot_ID, Year([Start_Date])\015\012HAV"
    "ING (((Year([Start_Date])) Is Not Null));\015\012"
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
    0x6238a39bc2031b4c8b58c0d219f125bc
End
Begin
    Begin
        dbText "Name" ="CountOfTransect"
        dbInteger "ColumnWidth" ="1740"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x84a19483e00f3242a86835bf3c23bb6c
        End
    End
    Begin
        dbText "Name" ="Route"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x602e2b5d3de459448b72a12ca1b344bf
        End
    End
    Begin
        dbText "Name" ="Visit_Year"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x19e5cf8ff7b6164c939ff99e02816d9a
        End
    End
    Begin
        dbText "Name" ="tbl_Locations.Unit_Code"
        dbLong "AggregateType" ="-1"
    End
End
