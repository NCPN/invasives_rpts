dbMemo "SQL" ="SELECT tsys_Link_Dbs.*\015\012FROM tsys_Link_Dbs LEFT JOIN tsys_Link_Tables ON t"
    "sys_Link_Dbs.Link_db = tsys_Link_Tables.Link_db\015\012WHERE (((tsys_Link_Tables"
    ".Link_db) Is Null));\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Records in tsys_Link_Dbs that do not have any related child records in tsys_Link"
    "_Tables"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbBinary "GUID" = Begin
    0xeac384cf7d0ce049855007f577b82e8e
End
Begin
    Begin
        dbText "Name" ="tsys_Link_Dbs.Link_db"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.Db_desc"
        dbInteger "ColumnWidth" ="2376"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.Backups"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.Is_ODBC"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.Is_Network_db"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.File_path"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.Server"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.New_db"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.New_path"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.New_server"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.Sort_order"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.Link_type"
        dbLong "AggregateType" ="-1"
    End
End
