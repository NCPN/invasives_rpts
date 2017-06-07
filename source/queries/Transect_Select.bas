dbMemo "SQL" ="SELECT l.Unit_Code, Year([Start_Date]) AS Visit_Year, l.Plot_ID, t.Transect_ID, "
    "t.Transect, l.Area, IIf([Unit_Code] In (\"CARE\",\"DINO\",\"GOSP\",\"ZION\"),[Ut"
    "ah_Species],\015\012IIf([Unit_Code]=\"FOBU\",[WY_Species],[Co_Species])) AS Spec"
    "ies, tlu_NCPN_Plants.Master_Common_Name, t.E_Coord, t.N_Coord, IIF(IsNull(sc.Per"
    "centCover),0,sc.PercentCover) AS PercentCover, esp.Position_m, esp.ColName\015\012"
    "FROM ((((tbl_Locations AS l LEFT JOIN EventSamplePosition AS esp ON esp.Location"
    "_ID = l.Location_ID) LEFT JOIN Transect AS t ON t.Event_ID = esp.Event_ID) LEFT "
    "JOIN Quadrat AS q ON q.Transect_ID = t.Transect_ID) LEFT JOIN SpeciesCover AS sc"
    " ON sc.Quadrat_ID = q.ID) LEFT JOIN tlu_NCPN_Plants ON tlu_NCPN_Plants.Master_PL"
    "ANT_Code = sc.PlantCode\015\012WHERE esp.Quadrat = q.Quadrat\015\012AND\015\012("
    "((\015\012IIf([Unit_Code] In (\"CARE\",\"DINO\",\"GOSP\",\"ZION\"),[Utah_Species"
    "],\015\012IIf([Unit_Code]=\"FOBU\",[WY_Species],[Co_Species]))) Is Not Null))\015"
    "\012ORDER BY l.Plot_ID, t.Transect, IIf([Unit_Code] In (\"CARE\",\"DINO\",\"GOSP"
    "\",\"ZION\"),[Utah_Species],\015\012IIf([Unit_Code]=\"FOBU\",[WY_Species],[Co_Sp"
    "ecies]));\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbBinary "GUID" = Begin
    0xd2b1b62b4fe1504b852ccf794b82ad8e
End
Begin
    Begin
        dbText "Name" ="Visit_Year"
        dbInteger "ColumnWidth" ="1785"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x62c44a96f682974eb1392781ba0c2b05
        End
    End
    Begin
        dbText "Name" ="Species"
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1a35b91843572b4585fc45dc92c4987a
        End
    End
    Begin
        dbText "Name" ="tlu_NCPN_Plants.Master_Common_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="PercentCover"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x67b7e637c2071741b977720786d3bc11
        End
    End
    Begin
        dbText "Name" ="l.Unit_Code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="l.Plot_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="t.Transect"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="l.Area"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="t.E_Coord"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="t.N_Coord"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="esp.Position_m"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="esp.ColName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Q2_8m"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9d80194b9caab245a4cc2b9fb3271ed2
        End
    End
    Begin
        dbText "Name" ="Q3_13m"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe99ddd91776828448345580fb98e003f
        End
    End
    Begin
        dbText "Name" ="Q1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x497373d379d92148ab1f891d39e2ae31
        End
    End
    Begin
        dbText "Name" ="Q2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x47d39a19113139459d97a6c119f47ea8
        End
    End
    Begin
        dbText "Name" ="Q3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcec45e49da1f45459d14814c86c679b3
        End
    End
    Begin
        dbText "Name" ="tbl_Quadrat_Transect.E_Coord"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Quadrat_Transect.N_Coord"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Transect.E_Coord"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Transect.N_Coord"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="sc.PercentCover"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1009"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="t.Transect_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Unit_Code"
        dbInteger "ColumnWidth" ="1050"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Plot_ID"
        dbInteger "ColumnWidth" ="2520"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Quadrat_Transect.Transect"
        dbInteger "ColumnWidth" ="885"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Area"
        dbInteger "ColumnWidth" ="660"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Q1_hm"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x962410f264a2cc459bcf8a5a892e9341
        End
    End
    Begin
        dbText "Name" ="Q2_5m"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc2ae12c155aee74c9231a4be3b322bcb
        End
    End
    Begin
        dbText "Name" ="Q3_10m"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xeee4dc51e4c1c44d8ac509ae4eed3ee4
        End
    End
    Begin
        dbText "Name" ="Q1_3m"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8b1bdeddf2dad148847762810ab6b16c
        End
    End
End
