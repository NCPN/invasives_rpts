dbMemo "SQL" ="SELECT tbl_Locations.Unit_Code, Year([Start_Date]) AS Visit_Year, tbl_Locations."
    "Plot_ID, IIf(tbl_Locations.Unit_Code In (\"CARE\",\"DINO\",\"GOSP\",\"ZION\"),[U"
    "tah_Species],IIf(tbl_Locations.Unit_Code=\"FOBU\",[WY_Species],[Co_Species])) AS"
    " Species, tlu_NCPN_Plants.Master_Common_Name, tbl_Infestation.Pulled, tbl_Infest"
    "ation.Growth_Stage, tbl_Infestation.N_Coord, tbl_Infestation.E_Coord, tlu_Cover_"
    "Class.Cover_Class, tlu_Size_Class.Size_Class\015\012FROM tbl_Locations LEFT JOIN"
    " (tbl_Infestation_Events LEFT JOIN (((tbl_Infestation LEFT JOIN tlu_NCPN_Plants "
    "ON tbl_Infestation.Master_Code = tlu_NCPN_Plants.Master_PLANT_Code) LEFT JOIN tl"
    "u_Size_Class ON tbl_Infestation.Size_Text = tlu_Size_Class.Size_Description) LEF"
    "T JOIN tlu_Cover_Class ON tbl_Infestation.Cover_Text = tlu_Cover_Class.Cover_Des"
    "cription) ON tbl_Infestation_Events.Infest_Event_ID = tbl_Infestation.Infest_Eve"
    "nt_ID) ON tbl_Locations.Location_ID = tbl_Infestation_Events.Location_ID\015\012"
    "WHERE (((tbl_Locations.Unit_Code)=Forms!frm_Select_Infest_Data!Park_Code) And (("
    "Year([Start_Date]))=Forms!frm_Select_Infest_Data!Visit_Year) And ((tbl_Locations"
    ".Plot_ID) Is Not Null) And ((IIf(tbl_Locations.Unit_Code In (\"CARE\",\"DINO\",\""
    "GOSP\",\"ZION\"),[Utah_Species],IIf(tbl_Locations.Unit_Code=\"FOBU\",[WY_Species"
    "],[Co_Species]))) Is Not Null))\015\012ORDER BY tbl_Locations.Plot_ID, IIf(tbl_L"
    "ocations.Unit_Code In (\"CARE\",\"DINO\",\"GOSP\",\"ZION\"),[Utah_Species],IIf(t"
    "bl_Locations.Unit_Code=\"FOBU\",[WY_Species],[Co_Species]));\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBinary "GUID" = Begin
    0x03737f0cad4cf04d9f03d25b747dd2d6
End
Begin
    Begin
        dbText "Name" ="tbl_Locations.Unit_Code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Visit_Year"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf372aaa339e5d2458963cbfabfc1a44a
        End
    End
    Begin
        dbText "Name" ="Species"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe8849d7745928b4b84ba2e9754b5da1c
        End
    End
    Begin
        dbText "Name" ="tbl_Locations.Plot_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_NCPN_Plants.Master_Common_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Infestation.Pulled"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Infestation.Growth_Stage"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Infestation.N_Coord"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Infestation.E_Coord"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_Cover_Class.Cover_Class"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_Size_Class.Size_Class"
        dbLong "AggregateType" ="-1"
    End
End
