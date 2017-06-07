dbMemo "SQL" ="SELECT DISTINCT e.*, qp.SamplingYear, qp.Quadrat, qp.Position_m, 'Q' & qp.Quadra"
    "t & IIF(LEN(qp.Position_m) > 0, '_' & qp.Position_m & 'm', '') AS ColName\015\012"
    "FROM (((tbl_Events AS e INNER JOIN EventSampleQuadrat AS esq ON esq.Start_Date ="
    " e.Start_Date) INNER JOIN QuadratPosition AS qp ON (qp.SamplingYear = esq.Sampli"
    "ngYr) AND (qp.Quadrat = esq.Quadrat)) INNER JOIN Transect AS t ON t.Event_ID = e"
    ".Event_ID) INNER JOIN Quadrat AS q ON q.Transect_ID = t.Transect_ID;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xcc15a697ef22e84a95879ed8f9406b9b
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="e.Event_ID"
        dbInteger "ColumnWidth" ="2490"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="e.Location_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="e.Protocol_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="e.version_key_number"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="e.Start_Date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="e.Start_Time"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="e.Comments"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="e.Observer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qp.SamplingYear"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qp.Quadrat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qp.Position_m"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ColName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb92231f2ad1bac448916828f41f6c6bf
        End
    End
    Begin
        dbText "Name" ="t.Transect_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="q.IsSampled"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="q.NoExotics"
        dbLong "AggregateType" ="-1"
    End
End
