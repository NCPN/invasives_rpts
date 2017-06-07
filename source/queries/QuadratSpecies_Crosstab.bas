dbMemo "SQL" ="TRANSFORM Min(qs.PercentCover) AS PercentCover\015\012SELECT qs.Transect_ID, qs."
    "ID AS Quadrat_ID, qs.IsSampled, qs.NoExotics, qs.PlantCode\015\012FROM QuadratSp"
    "ecies AS qs\015\012GROUP BY qs.ID, qs.Transect_ID, qs.PlantCode, qs.IsSampled, q"
    "s.NoExotics\015\012PIVOT qs.ColName;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "OrderByOn" ="0"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBinary "GUID" = Begin
    0xb52f12d7707f6249b28cd47761ce8438
End
Begin
    Begin
        dbText "Name" ="[ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Transect_ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[PlantCode]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Total Of PercentCover"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1860"
        dbBoolean "ColumnHidden" ="0"
        dbBinary "GUID" = Begin
            0x70d8eb45537ead4eaa6b308fa1c63b19
        End
    End
    Begin
        dbText "Name" ="Q1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd587e06946f72b448d3ab4a703f33ad4
        End
    End
    Begin
        dbText "Name" ="Q1_0_5m"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x77b9e1d5b4b626438dab3e87142778bb
        End
    End
    Begin
        dbText "Name" ="Q1_3m"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbdf199f68ef5844bac61611d3fecb333
        End
    End
    Begin
        dbText "Name" ="Q2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9fe47a98c8156c488d87a41ee1f1ed66
        End
    End
    Begin
        dbText "Name" ="Q2_4_5m"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbdffa8697106fb4681380092ba36520e
        End
    End
    Begin
        dbText "Name" ="Q2_8m"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x11ef1bd05abe6b4c89939d41ed782af9
        End
    End
    Begin
        dbText "Name" ="Q3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xeef786bdda1f724db4cda712ba01639a
        End
    End
    Begin
        dbText "Name" ="Q3_13m"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0fe69d3e326beb4b9d1d4dafc499bc14
        End
    End
    Begin
        dbText "Name" ="Q3_9_5m"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf08001d1448e1a41938bb42103f2b4ea
        End
    End
    Begin
        dbText "Name" ="MinOfPercentCover"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc5f8eb128ff0004ea7ebe8d77445674a
        End
    End
    Begin
        dbText "Name" ="Quadrat_ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x211076aa9f292143b81ddd2c9a99ddce
        End
    End
    Begin
        dbText "Name" ="QuadratSpecies.[Transect_ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="QuadratSpecies.[PlantCode]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1005"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="PercentCover"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0be542a1820abd4db0386368885b588d
        End
    End
    Begin
        dbText "Name" ="qs.Transect_ID"
        dbInteger "ColumnWidth" ="3285"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qs.IsSampled"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qs.NoExotics"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qs.PlantCode"
        dbLong "AggregateType" ="-1"
    End
End
