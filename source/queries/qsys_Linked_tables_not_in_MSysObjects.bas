dbMemo "SQL" ="SELECT tsys_Link_Tables.Link_table, tsys_Link_Tables.Link_db, tsys_Link_Dbs.Serv"
    "er, tsys_Link_Dbs.File_path\015\012FROM tsys_Link_Dbs INNER JOIN (MSysObjects RI"
    "GHT JOIN tsys_Link_Tables ON MSysObjects.Name = tsys_Link_Tables.Link_table) ON "
    "tsys_Link_Dbs.Link_db = tsys_Link_Tables.Link_db\015\012WHERE (((MSysObjects.Nam"
    "e) Is Null));\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Linked table records in tsys_Link_Tables that are not actually in the database"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbBinary "GUID" = Begin
    0xc914d08af70bbd47a88765e95921f5ef
End
Begin
    Begin
        dbText "Name" ="tsys_Link_Tables.Link_table"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Tables.Link_db"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.Server"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.File_path"
        dbLong "AggregateType" ="-1"
    End
End
