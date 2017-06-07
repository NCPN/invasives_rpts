dbMemo "SQL" ="SELECT tbl_Locations.Unit_Code, Year([Start_Date]) AS Visit_Year, tbl_Locations."
    "Plot_ID, IIf(tbl_Locations.Unit_Code In (\"CARE\",\"DINO\",\"GOSP\",\"ZION\"),[U"
    "tah_Species],IIf(tbl_Locations.Unit_Code=\"FOBU\",[WY_Species],[Co_Species])) AS"
    " Species, tlu_NCPN_Plants.Master_Common_Name, tbl_Infestation.Pulled, tbl_Infest"
    "ation.Growth_Stage, tbl_Infestation.N_Coord, tbl_Infestation.E_Coord, tlu_Cover_"
    "Class.Cover_Class, tlu_Size_Class.Size_Class\015\012FROM tbl_Locations LEFT JOIN"
    " (tbl_Infestation_Events LEFT JOIN (((tbl_Infestation LEFT JOIN tlu_NCPN_Plants "
    "ON tbl_Infestation.Master_Code=tlu_NCPN_Plants.Master_PLANT_Code) LEFT JOIN tlu_"
    "Size_Class ON tbl_Infestation.Size_Text=tlu_Size_Class.Size_Description) LEFT JO"
    "IN tlu_Cover_Class ON tbl_Infestation.Cover_Text=tlu_Cover_Class.Cover_Descripti"
    "on) ON tbl_Infestation_Events.Infest_Event_ID=tbl_Infestation.Infest_Event_ID) O"
    "N tbl_Locations.Location_ID=tbl_Infestation_Events.Location_ID\015\012WHERE (((t"
    "bl_Locations.Plot_ID) Is Not Null))\015\012ORDER BY tbl_Locations.Plot_ID, IIf(t"
    "bl_Locations.Unit_Code In (\"CARE\",\"DINO\",\"GOSP\",\"ZION\"),[Utah_Species],I"
    "If(tbl_Locations.Unit_Code=\"FOBU\",[WY_Species],[Co_Species]));\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x48d39957cacd174993e54fbd5ac4e44d
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="Visit_Year"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x966b6b2b6c92cc4883578dba57c64e30
        End
    End
    Begin
        dbText "Name" ="Species"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1a58095cde765e4baa2e860e4d917a98
        End
    End
End
