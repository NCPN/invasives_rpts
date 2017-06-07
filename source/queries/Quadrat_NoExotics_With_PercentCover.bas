dbMemo "SQL" ="SELECT DISTINCT q.ID\015\012FROM SpeciesCover AS sc INNER JOIN Quadrat AS q ON q"
    ".ID = sc.Quadrat_ID\015\012WHERE q.NoExotics = 1\015\012AND\015\012sc.PercentCov"
    "er > 0;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBinary "GUID" = Begin
    0xd3506e7c83118e40a629d9aba708f484
End
Begin
    Begin
        dbText "Name" ="q.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x48284d4063f5264ba3588a48791b9891
        End
    End
End
