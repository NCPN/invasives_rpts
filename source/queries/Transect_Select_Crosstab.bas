dbMemo "SQL" ="TRANSFORM Min(Transect_Select.PercentCover) AS MinOfPercentCover\015\012SELECT T"
    "ransect_Select.Plot_ID AS Plot_ID, Transect_Select.Transect AS Transect, Transec"
    "t_Select.Species AS Species\015\012FROM Transect_Select\015\012GROUP BY Transect"
    "_Select.Plot_ID, Transect_Select.Transect, Transect_Select.Species\015\012PIVOT "
    "Transect_Select.ColName;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xb1be74754141c04b83b828bb57727dc1
End
dbBoolean "OrderByOn" ="0"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="[Plot_ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Transect]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Species]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Q1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Q1_0_5m"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Q1_3m"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Q2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Q2_4_5m"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Q2_8m"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Q3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Q3_13m"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Q3_9_5m"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MinOfPercentCover"
        dbBinary "GUID" = Begin
            0xab1da77f4d4a0b4cb594a2221515c7a6
        End
    End
    Begin
        dbText "Name" ="PIVOT"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xab1da77f4d4a0b4cb594a2221515c7a6
        End
    End
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7f2c3ede07e2bf42bb83bcad7647e4d6
        End
    End
    Begin
        dbText "Name" ="Expr2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xadc54a514dcc454580fe89ef98ed0360
        End
    End
    Begin
        dbText "Name" ="Expr3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf57dc756b5b35a449bdf6c46fa759c10
        End
    End
    Begin
        dbText "Name" ="Plot_ID"
        dbInteger "ColumnWidth" ="2805"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x716615be7853774cb15cdf791be1fdb6
        End
    End
    Begin
        dbText "Name" ="Transect"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc4c91156b081f04eb4202fbfe6f391cb
        End
    End
    Begin
        dbText "Name" ="Species"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe897e125df954f4eaa67809cfb3a029f
        End
    End
End
