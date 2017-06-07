dbMemo "SQL" ="SELECT e.*, qp.SamplingYear, qp.Quadrat, qp.Position_m, 'Q' & qp.Quadrat & IIF(L"
    "EN(qp.Position_m) > 0, '_' & qp.Position_m & 'm', '') AS ColName\015\012FROM (tb"
    "l_Events AS e INNER JOIN EventSampleQuadrat AS esq ON esq.Start_Date = e.Start_D"
    "ate) INNER JOIN QuadratPosition AS qp ON (qp.SamplingYear = esq.SamplingYr) AND "
    "(qp.Quadrat = esq.Quadrat);\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBinary "GUID" = Begin
    0xb44113b794912c4fb2bcf2c74d45260c
End
Begin
    Begin
        dbText "Name" ="e.Start_Date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="e.Event_ID"
        dbInteger "ColumnWidth" ="4110"
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
            0x28c799490d8e31468948bfb2547b9b59
        End
    End
End
