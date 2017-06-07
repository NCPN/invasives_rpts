dbMemo "SQL" ="SELECT tbl_Locations.Unit_Code, Year([Start_Date]) AS Visit_Year, tbl_Locations."
    "Plot_ID, tbl_Quadrat_Transect.Transect, tbl_Locations.Area, IIf([Unit_Code] In ("
    "\"CARE\",\"DINO\",\"GOSP\"),[Utah_Species],IIf([Unit_Code]=\"FOBU\",[WY_Species]"
    ",[Co_Species])) AS Species, tlu_NCPN_Plants.Master_Common_Name, IIf([Visit_Year]"
    "=2008,([Q1]+[Q2]+[Q3])/3,IIf([Visit_Year]=2009,([Q1_3m]+[Q2_8m]+[Q3_13m])/3,([Q1"
    "_hm]+[Q2_5m]+[Q3_10m])/3)) AS Cover_Average, tbl_Quadrat_Transect.E_Coord, tbl_Q"
    "uadrat_Transect.N_Coord\015\012FROM (tbl_Locations LEFT JOIN (tbl_Events LEFT JO"
    "IN tbl_Quadrat_Transect ON tbl_Events.Event_ID = tbl_Quadrat_Transect.Event_ID) "
    "ON tbl_Locations.Location_ID = tbl_Events.Location_ID) LEFT JOIN (tbl_Quadrat_Sp"
    "ecies LEFT JOIN tlu_NCPN_Plants ON tbl_Quadrat_Species.Plant_Code = tlu_NCPN_Pla"
    "nts.Master_PLANT_Code) ON tbl_Quadrat_Transect.Transect_ID = tbl_Quadrat_Species"
    ".Transect_ID\015\012WHERE (((tbl_Locations.Unit_Code)=Forms!frm_Monitoring_Trans"
    "ect!Park_Code) And ((Year([Start_Date]))=Forms!frm_Monitoring_Transect!Visit_Yea"
    "r) And ((IIf([Unit_Code] In (\"CARE\",\"DINO\",\"GOSP\"),[Utah_Species],IIf([Uni"
    "t_Code]=\"FOBU\",[WY_Species],[Co_Species]))) Is Not Null))\015\012ORDER BY tbl_"
    "Locations.Plot_ID, tbl_Quadrat_Transect.Transect, IIf([Unit_Code] In (\"CARE\",\""
    "DINO\",\"GOSP\"),[Utah_Species],IIf([Unit_Code]=\"FOBU\",[WY_Species],[Co_Specie"
    "s]));\015\012"
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
    0x668e045a3cb72e4ca56022297c603092
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
            0x0ad6da561018784ea8ad47e46901d3a3
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
        dbText "Name" ="Species"
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6153fd66f90674498df0a6f5d1f8a311
        End
    End
    Begin
        dbText "Name" ="Cover_Average"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb0a6167b75201343b7ac4bc33a7135c6
        End
    End
End
