dbMemo "SQL" ="SELECT Plot_ID\015\012FROM qry_Group_Cover_Route\015\012WHERE Unit_Code= 'COLM' "
    "AND Visit_Year= 2013;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xd8bf1beb103a9843bc15b7edba44572a
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="Visit_Year"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Plot_ID"
        dbInteger "ColumnWidth" ="4035"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
