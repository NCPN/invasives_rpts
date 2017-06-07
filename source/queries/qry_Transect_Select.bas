dbMemo "SQL" ="SELECT tbl_Locations.Unit_Code, Year([Start_Date]) AS Visit_Year, tbl_Locations."
    "Plot_ID, tbl_Quadrat_Transect.Transect, tbl_Locations.Area, IIf([Unit_Code] In ("
    "\"CARE\",\"DINO\",\"GOSP\",\"ZION\"),[Utah_Species],IIf([Unit_Code]=\"FOBU\",[WY"
    "_Species],[Co_Species])) AS Species, tlu_NCPN_Plants.Master_Common_Name, tbl_Qua"
    "drat_Transect.E_Coord, tbl_Quadrat_Transect.N_Coord, IIf(IsNull(tbl_Quadrat_Spec"
    "ies.Q1_hm),0,tbl_Quadrat_Species.Q1_hm) AS Q1_hm, IIf(IsNull(tbl_Quadrat_Species"
    ".Q2_5m),0,tbl_Quadrat_Species.Q2_5m) AS Q2_5m, IIf(IsNull(tbl_Quadrat_Species.Q3"
    "_10m),0,tbl_Quadrat_Species.Q3_10m) AS Q3_10m, IIf(IsNull(tbl_Quadrat_Species.Q1"
    "_3m),0,tbl_Quadrat_Species.Q1_3m) AS Q1_3m, IIf(IsNull(tbl_Quadrat_Species.Q2_8m"
    "),0,tbl_Quadrat_Species.Q2_8m) AS Q2_8m, IIf(IsNull(tbl_Quadrat_Species.Q3_13m),"
    "0,tbl_Quadrat_Species.Q3_13m) AS Q3_13m, IIf(IsNull(tbl_Quadrat_Species.Q1),0,tb"
    "l_Quadrat_Species.Q1) AS Q1, IIf(IsNull(tbl_Quadrat_Species.Q2),0,tbl_Quadrat_Sp"
    "ecies.Q2) AS Q2, IIf(IsNull(tbl_Quadrat_Species.Q3),0,tbl_Quadrat_Species.Q3) AS"
    " Q3\015\012FROM (tbl_Locations LEFT JOIN (tbl_Events LEFT JOIN tbl_Quadrat_Trans"
    "ect ON tbl_Events.Event_ID = tbl_Quadrat_Transect.Event_ID) ON tbl_Locations.Loc"
    "ation_ID = tbl_Events.Location_ID) LEFT JOIN (tbl_Quadrat_Species LEFT JOIN tlu_"
    "NCPN_Plants ON tbl_Quadrat_Species.Plant_Code = tlu_NCPN_Plants.Master_PLANT_Cod"
    "e) ON tbl_Quadrat_Transect.Transect_ID = tbl_Quadrat_Species.Transect_ID\015\012"
    "WHERE (((IIf([Unit_Code] In (\"CARE\",\"DINO\",\"GOSP\",\"ZION\"),[Utah_Species]"
    ",IIf([Unit_Code]=\"FOBU\",[WY_Species],[Co_Species]))) Is Not Null))\015\012ORDE"
    "R BY tbl_Locations.Plot_ID, tbl_Quadrat_Transect.Transect, IIf([Unit_Code] In (\""
    "CARE\",\"DINO\",\"GOSP\",\"ZION\"),[Utah_Species],IIf([Unit_Code]=\"FOBU\",[WY_S"
    "pecies],[Co_Species]));\015\012"
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
    0x328b339e6c43d644a30da5ce352e5ff6
End
Begin
    Begin
        dbText "Name" ="tbl_Locations.Unit_Code"
        dbInteger "ColumnWidth" ="1050"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Visit_Year"
        dbInteger "ColumnWidth" ="1005"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x62c44a96f682974eb1392781ba0c2b05
        End
    End
    Begin
        dbText "Name" ="tbl_Locations.Plot_ID"
        dbInteger "ColumnWidth" ="2520"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Quadrat_Transect.Transect"
        dbInteger "ColumnWidth" ="1395"
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
        dbText "Name" ="Species"
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1a35b91843572b4585fc45dc92c4987a
        End
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
        dbText "Name" ="tlu_NCPN_Plants.Master_Common_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Quadrat_Transect.E_Coord"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Quadrat_Transect.N_Coord"
        dbLong "AggregateType" ="-1"
    End
End
