﻿dbMemo "SQL" ="SELECT qry_Select_Species_Cover.Unit_Code AS Unit_Code, qry_Select_Species_Cover"
    ".Visit_Year AS Visit_Year\015\012FROM qry_Select_Species_Cover\015\012GROUP BY q"
    "ry_Select_Species_Cover.Unit_Code, qry_Select_Species_Cover.Visit_Year;\015\012"
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
    0xc90c690eafc7974789f904d62e84ea30
End
Begin
    Begin
        dbText "Name" ="Unit_Code"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x49647a88f446304abe8a045b5a341eac
        End
    End
    Begin
        dbText "Name" ="Visit_Year"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf3c6bda94b862c48b69b451e268a05fe
        End
    End
End
