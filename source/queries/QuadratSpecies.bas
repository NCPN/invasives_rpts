dbMemo "SQL" ="SELECT sc.ID, q.Transect_ID, q.ID AS Quadrat_ID, q.IsSampled, q.NoExotics, sc.Pl"
    "antCode, sc.PercentCover, esp.ColName\015\012FROM ((Quadrat AS q LEFT JOIN Trans"
    "ect AS t ON t.Transect_ID = q.Transect_ID) LEFT JOIN EventSamplePosition AS esp "
    "ON esp.Quadrat = q.Quadrat) LEFT JOIN SpeciesCover AS sc ON sc.Quadrat_ID = q.ID"
    "\015\012WHERE t.Event_ID = esp.Event_ID\015\012AND\015\012sc.PercentCover IS NOT"
    " NULL;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBinary "GUID" = Begin
    0xedcd293d92747940a5afdc820ecb8442
End
Begin
    Begin
        dbText "Name" ="q.Transect_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="sc.PlantCode"
        dbInteger "ColumnWidth" ="1950"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="sc.PercentCover"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="esp.ColName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Quadrat_ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc6658137c83a8d4fa76bb9ef11326012
        End
    End
    Begin
        dbText "Name" ="q.IsSampled"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="q.NoExotics"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="sc.ID"
        dbLong "AggregateType" ="-1"
    End
End
