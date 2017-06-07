dbMemo "SQL" ="SELECT EventSamplePosition.Event_ID, EventSamplePosition.Location_ID, EventSampl"
    "ePosition.Protocol_Name, EventSamplePosition.version_key_number, EventSamplePosi"
    "tion.Start_Date, EventSamplePosition.Start_Time, EventSamplePosition.Comments, E"
    "ventSamplePosition.Observer, EventSamplePosition.SamplingYear, EventSamplePositi"
    "on.Quadrat, EventSamplePosition.Position_m, EventSamplePosition.ColName\015\012F"
    "ROM EventSamplePosition LEFT JOIN Query2 ON EventSamplePosition.[Event_ID] = Que"
    "ry2.[Event_ID]\015\012WHERE (((Query2.Event_ID) Is Null));\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xf1471984d0601c4287cd6a85c137af64
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="EventSamplePosition.Event_ID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3570"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="EventSamplePosition.Location_ID"
        dbInteger "ColumnWidth" ="2790"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="EventSamplePosition.Protocol_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="EventSamplePosition.version_key_number"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="EventSamplePosition.Start_Date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="EventSamplePosition.Start_Time"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="EventSamplePosition.Comments"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="EventSamplePosition.Observer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="EventSamplePosition.SamplingYear"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="EventSamplePosition.Quadrat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="EventSamplePosition.Position_m"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="EventSamplePosition.ColName"
        dbLong "AggregateType" ="-1"
    End
End
