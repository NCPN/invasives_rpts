dbMemo "SQL" ="SELECT DISTINCT esp.*, t.Transect_ID AS Transect_ID, q.IsSampled, q.NoExotics\015"
    "\012FROM (EventSamplePosition AS esp INNER JOIN Transect AS t ON t.Event_ID = es"
    "p.Event_ID) INNER JOIN Quadrat AS q ON q.Transect_ID = t.Transect_ID\015\012WHER"
    "E q.NoExotics = 0\015\012AND q.IsSampled = 1\015\012ORDER BY t.Transect_ID, esp."
    "ColName;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xe8568cf9241f0d47ba24cdb2c89d7b14
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="esp.e.Start_Date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="esp.e.Start_Time"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="esp.e.Comments"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="esp.e.Observer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="esp.qp.SamplingYear"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="esp.qp.Quadrat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="esp.qp.Position_m"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="esp.ColName"
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
    Begin
        dbText "Name" ="Transect_ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x95344034baf298428e5e00e77e77173b
        End
    End
    Begin
        dbText "Name" ="esp.e.Event_ID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3435"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="esp.e.Location_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="esp.e.Protocol_Name"
        dbInteger "ColumnWidth" ="1350"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="esp.e.version_key_number"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CurrTable"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8e74b441344b874e9c3b0e7a64d65d0c
        End
    End
    Begin
        dbText "Name" ="tsys_Link_Tables.Link_table"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MSysObjects.Type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.Is_ODBC"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CurrDb"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xded0bb8f6141d64e8655f22da4814723
        End
    End
    Begin
        dbText "Name" ="tsys_Link_Tables.Link_db"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CurrServer"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc343c6ff2c1e804c80750a36044f7beb
        End
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.Server"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CurrPath"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x870d0ebc8f0c5a42b7cf1327b2e1cb8e
        End
    End
    Begin
        dbText "Name" ="t.Transect_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tsys_Link_Dbs.File_path"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Unit_Code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Visit_Year"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Plot_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Quadrat_Transect.Transect"
        dbLong "AggregateType" ="-1"
    End
End
