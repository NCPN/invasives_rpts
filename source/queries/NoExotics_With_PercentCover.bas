dbMemo "SQL" ="SELECT q.ID, q.Quadrat, q.NoExotics, sc.PlantCode, sc.PercentCover\015\012FROM S"
    "peciesCover AS sc INNER JOIN Quadrat AS q ON q.ID = sc.Quadrat_ID\015\012WHERE q"
    ".NoExotics = 1\015\012AND\015\012sc.PercentCover > 0;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBinary "GUID" = Begin
    0x72b722369afd0344b2fda6121d082cf3
End
Begin
    Begin
        dbText "Name" ="q.Quadrat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="q.NoExotics"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="sc.PlantCode"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="sc.PercentCover"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="q.ID"
        dbLong "AggregateType" ="-1"
    End
End
