dbMemo "SQL" ="SELECT tbl_Locations.Unit_Code, Year([Start_Date]) AS Visit_Year, tbl_Locations."
    "Plot_ID, tbl_Quadrat_Species.Plant_Code, tbl_Quadrat_Species.Q1_hm, tbl_Quadrat_"
    "Species.Q2_5m, tbl_Quadrat_Species.Q3_10m, tbl_Quadrat_Species.Average_Cover, tb"
    "l_Quadrat_Species.Q1_3m, tbl_Quadrat_Species.Q2_8m, tbl_Quadrat_Species.Q3_13m, "
    "tbl_Quadrat_Species.Avg_Cover_2009, tbl_Quadrat_Species.Q1, tbl_Quadrat_Species."
    "Q2, tbl_Quadrat_Species.Q3, tbl_Quadrat_Species.Avg_Cover_2008, tlu_NCPN_Plants."
    "Master_Common_Name, IIf([Unit_Code] In (\"CARE\",\"DINO\",\"GOSP\",\"ZION\"),[Ut"
    "ah_Species],IIf([Unit_Code]=\"FOBU\",[WY_Species],[Co_Species])) AS Species, tbl"
    "_Quadrat_Transect.Transect\015\012FROM (tbl_Locations LEFT JOIN (tbl_Events LEFT"
    " JOIN tbl_Quadrat_Transect ON tbl_Events.Event_ID=tbl_Quadrat_Transect.Event_ID)"
    " ON tbl_Locations.Location_ID=tbl_Events.Location_ID) LEFT JOIN (tbl_Quadrat_Spe"
    "cies LEFT JOIN tlu_NCPN_Plants ON tbl_Quadrat_Species.Plant_Code=tlu_NCPN_Plants"
    ".Master_PLANT_Code) ON tbl_Quadrat_Transect.Transect_ID=tbl_Quadrat_Species.Tran"
    "sect_ID\015\012WHERE (((tbl_Quadrat_Species.Plant_Code) Is Not Null And (tbl_Qua"
    "drat_Species.Plant_Code)<>\"none\"))\015\012ORDER BY tbl_Locations.Unit_Code, Ye"
    "ar([Start_Date]), tbl_Locations.Plot_ID, IIf([Unit_Code] In (\"CARE\",\"DINO\",\""
    "GOSP\",\"ZION\"),[Utah_Species],IIf([Unit_Code]=\"FOBU\",[WY_Species],[Co_Specie"
    "s]));\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x162129c06c5c7e4fb6208753bdb8bbc4
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="Visit_Year"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x33327f1e0d34e349bb954ca4fff2b741
        End
    End
    Begin
        dbText "Name" ="Species"
        dbInteger "ColumnWidth" ="2025"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7170fd28524c93479120d0aa8589532a
        End
    End
End
