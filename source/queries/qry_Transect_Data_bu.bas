dbMemo "SQL" ="SELECT tbl_Locations.Unit_Code, Year([Start_Date]) AS Visit_Year, tbl_Locations."
    "Plot_ID, tbl_Quadrat_Transect.Transect, tbl_Locations.Area, IIf([Unit_Code] In ("
    "\"CARE\",\"DINO\",\"GOSP\"),[Utah_Species],IIf([Unit_Code]=\"FOBU\",[WY_Species]"
    ",[Co_Species])) AS Species, tlu_NCPN_Plants.Master_Common_Name, IIf([Visit_Year]"
    "=2008,([Q1]+[Q2]+[Q3])/3,IIf([Visit_Year]=2009,([Q1_3m]+[Q2_8m]+[Q3_13m])/3,([Q1"
    "_hm]+[Q2_5m]+[Q3_10m])/3)) AS Cover_Average, tbl_Quadrat_Transect.E_Coord, tbl_Q"
    "uadrat_Transect.N_Coord\015\012FROM (tbl_Locations LEFT JOIN (tbl_Events LEFT JO"
    "IN tbl_Quadrat_Transect ON tbl_Events.Event_ID=tbl_Quadrat_Transect.Event_ID) ON"
    " tbl_Locations.Location_ID=tbl_Events.Location_ID) LEFT JOIN (tbl_Quadrat_Specie"
    "s LEFT JOIN tlu_NCPN_Plants ON tbl_Quadrat_Species.Plant_Code=tlu_NCPN_Plants.Ma"
    "ster_PLANT_Code) ON tbl_Quadrat_Transect.Transect_ID=tbl_Quadrat_Species.Transec"
    "t_ID\015\012WHERE (((tbl_Locations.Unit_Code)=Forms!frm_Monitoring_Transect!Park"
    "_Code) And ((Year([Start_Date]))=Forms!frm_Monitoring_Transect!Visit_Year) And ("
    "(IIf([Unit_Code] In (\"CARE\",\"DINO\",\"GOSP\"),[Utah_Species],IIf([Unit_Code]="
    "\"FOBU\",[WY_Species],[Co_Species]))) Is Not Null))\015\012ORDER BY tbl_Location"
    "s.Plot_ID, tbl_Quadrat_Transect.Transect, IIf([Unit_Code] In (\"CARE\",\"DINO\","
    "\"GOSP\"),[Utah_Species],IIf([Unit_Code]=\"FOBU\",[WY_Species],[Co_Species]));\015"
    "\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x7434c3ace8efd341bccac4f6f94b68c1
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Unit_Code"
        dbInteger "ColumnWidth" ="1050"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Visit_Year"
        dbInteger "ColumnWidth" ="1005"
        dbBoolean "ColumnHidden" ="0"
        dbBinary "GUID" = Begin
            0x6bc6a4e32c4ca64c99dfd2bb3af02b66
        End
    End
    Begin
        dbText "Name" ="tbl_Locations.Plot_ID"
        dbInteger "ColumnWidth" ="2520"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Quadrat_Transect.Transect"
        dbInteger "ColumnWidth" ="885"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Locations.Area"
        dbInteger "ColumnWidth" ="660"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Species"
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
        dbBinary "GUID" = Begin
            0x10a9a9ce69e90d418bc8a3ab399d2fe5
        End
    End
    Begin
        dbText "Name" ="Cover_Average"
        dbBinary "GUID" = Begin
            0xac5abc7694f4264f9bf35bb23b71ede8
        End
    End
End
