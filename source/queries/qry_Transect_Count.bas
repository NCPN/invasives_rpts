dbMemo "SQL" ="SELECT tbl_Locations.Unit_Code, tbl_Locations.Plot_ID AS Route, Year([Start_Date"
    "]) AS Visit_Year, Count(tbl_Quadrat_Transect.Transect) AS CountOfTransect\015\012"
    "FROM tbl_Locations LEFT JOIN (tbl_Events LEFT JOIN tbl_Quadrat_Transect ON tbl_E"
    "vents.Event_ID = tbl_Quadrat_Transect.Event_ID) ON tbl_Locations.Location_ID = t"
    "bl_Events.Location_ID\015\012GROUP BY tbl_Locations.Unit_Code, tbl_Locations.Plo"
    "t_ID, Year([Start_Date])\015\012HAVING (((Year([Start_Date])) Is Not Null));\015"
    "\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xca9176a4e4857145bfe449ba42c9e3ac
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="CountOfTransect"
        dbInteger "ColumnWidth" ="1740"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x860897a6b5e2734d8d6010b07a63514d
        End
    End
    Begin
        dbText "Name" ="Route"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7fa13a3c5701f24e90bda00c2766ae22
        End
    End
    Begin
        dbText "Name" ="Visit_Year"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe557aa9a712c1645aedf4df4b664f416
        End
    End
    Begin
        dbText "Name" ="tbl_Locations.Unit_Code"
        dbLong "AggregateType" ="-1"
    End
End
