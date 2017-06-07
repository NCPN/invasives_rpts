dbMemo "SQL" ="SELECT DISTINCT e.*, qp.SamplingYear, qp.Quadrat, qp.Position_m, 'Q' & qp.Quadra"
    "t & IIF(LEN(qp.Position_m) > 0, '_' & qp.Position_m & 'm', '') AS ColName\015\012"
    "FROM (tbl_Events AS e INNER JOIN EventSampleQuadrat AS esq ON esq.Start_Date = e"
    ".Start_Date) INNER JOIN QuadratPosition AS qp ON (qp.SamplingYear = esq.Sampling"
    "Yr) AND (qp.Quadrat = esq.Quadrat);\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBinary "GUID" = Begin
    0x1fa6db697912494aa4d0ef7e1235e38d
End
dbMemo "Filter" ="([EventSamplePosition].[Start_Date]=#7/29/2010#)"
Begin
    Begin
        dbText "Name" ="e.Start_Date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ColName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9aa65f697e8d544a9d4dfbb34cdce06b
        End
    End
    Begin
        dbText "Name" ="e.Event_ID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3750"
        dbBoolean "ColumnHidden" ="0"
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
End
