dbMemo "SQL" ="SELECT tbl_Locations.Unit_Code, Year([Start_Date]) AS Visit_Year, tbl_Locations."
    "Plot_ID, IIf(tbl_Locations.Unit_Code In (\"CARE\",\"DINO\",\"GOSP\",\"ZION\"),[U"
    "tah_Species],IIf(tbl_Locations.Unit_Code=\"FOBU\",[WY_Species],[Co_Species])) AS"
    " Species, tlu_NCPN_Plants.Master_Common_Name, tbl_Infestation.Pulled, tbl_Infest"
    "ation.Growth_Stage, tbl_Infestation.N_Coord, tbl_Infestation.E_Coord, tlu_Size_C"
    "lass.Size_Class, tbl_Infestation.Master_Code\015\012FROM tbl_Locations LEFT JOIN"
    " (tbl_Infestation_Events LEFT JOIN ((tbl_Infestation LEFT JOIN tlu_NCPN_Plants O"
    "N tbl_Infestation.Master_Code = tlu_NCPN_Plants.Master_PLANT_Code) LEFT JOIN tlu"
    "_Size_Class ON tbl_Infestation.Size_Text = tlu_Size_Class.Size_Description) ON t"
    "bl_Infestation_Events.Infest_Event_ID = tbl_Infestation.Infest_Event_ID) ON tbl_"
    "Locations.Location_ID = tbl_Infestation_Events.Location_ID\015\012WHERE (((tbl_L"
    "ocations.Plot_ID) Is Not Null) And ((IIf(tbl_Locations.Unit_Code In (\"CARE\",\""
    "DINO\",\"GOSP\",\"ZION\"),[Utah_Species],IIf(tbl_Locations.Unit_Code=\"FOBU\",[W"
    "Y_Species],[Co_Species]))) Is Not Null And (IIf(tbl_Locations.Unit_Code In (\"CA"
    "RE\",\"DINO\",\"GOSP\",\"ZION\"),[Utah_Species],IIf(tbl_Locations.Unit_Code=\"FO"
    "BU\",[WY_Species],[Co_Species]))) Is Not Null And (IIf(tbl_Locations.Unit_Code I"
    "n (\"CARE\",\"DINO\",\"GOSP\",\"ZION\"),[Utah_Species],IIf(tbl_Locations.Unit_Co"
    "de=\"FOBU\",[WY_Species],[Co_Species]))) Is Not Null))\015\012ORDER BY tbl_Locat"
    "ions.Plot_ID, IIf(tbl_Locations.Unit_Code In (\"CARE\",\"DINO\",\"GOSP\",\"ZION\""
    "),[Utah_Species],IIf(tbl_Locations.Unit_Code=\"FOBU\",[WY_Species],[Co_Species])"
    ");\015\012"
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
    0x3b0388450693284f93c2c8b95560a52e
End
Begin
    Begin
        dbText "Name" ="Visit_Year"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0f58ea459ba6e64393ec44ca0665ca23
        End
    End
    Begin
        dbText "Name" ="Species"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe28d3a854a833d439409de82071d32e2
        End
    End
    Begin
        dbText "Name" ="tbl_Locations.Unit_Code"
        dbLong "AggregateType" ="-1"
    End
End
