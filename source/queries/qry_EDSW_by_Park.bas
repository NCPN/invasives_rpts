dbMemo "SQL" ="SELECT tbl_EDSW.Unit_Code, Year(tbl_EDSW.GPS_Date) AS Visit_Year, Min(tbl_EDSW.E"
    "DSW_m) AS Min_EDSW, Max(tbl_EDSW.EDSW_m) AS Max_EDSW\015\012FROM tbl_EDSW\015\012"
    "GROUP BY tbl_EDSW.Unit_Code, Year(tbl_EDSW.GPS_Date)\015\012ORDER BY tbl_EDSW.Un"
    "it_Code, Year(tbl_EDSW.GPS_Date);\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBinary "GUID" = Begin
    0x550874a7afa91046bdaf26c5eeff2453
End
Begin
    Begin
        dbText "Name" ="Visit_Year"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x384a51d07e4a7248b172ba291c1a490e
        End
    End
    Begin
        dbText "Name" ="Min_EDSW"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5d0cff33aa1e014e805c749841be1602
        End
    End
    Begin
        dbText "Name" ="Max_EDSW"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb6d12e5a8e05e548a50e0a22fd9471bb
        End
    End
    Begin
        dbText "Name" ="tbl_EDSW.Unit_Code"
        dbLong "AggregateType" ="-1"
    End
End
