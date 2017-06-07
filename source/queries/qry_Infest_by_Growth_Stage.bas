dbMemo "SQL" ="SELECT tbl_Locations.Unit_Code, Year([Start_Date]) AS Visit_Year, IIf([Unit_Code"
    "] In (\"CARE\",\"DINO\",\"GOSP\",\"ZION\"),[Utah_Species],IIf([Unit_Code]=\"FOBU"
    "\",[WY_Species],[Co_Species])) AS Species, tlu_NCPN_Plants.Master_Common_Name, t"
    "lu_Size_Class.Size_Class, tlu_Cover_Class.Cover_Class, tbl_Infestation.Pulled, t"
    "bl_Infestation.Growth_Stage, tbl_Infestation.N_Coord, tbl_Infestation.E_Coord\015"
    "\012FROM tbl_Locations LEFT JOIN (tbl_Infestation_Events LEFT JOIN (((tbl_Infest"
    "ation LEFT JOIN tlu_NCPN_Plants ON tbl_Infestation.Master_Code = tlu_NCPN_Plants"
    ".Master_PLANT_Code) LEFT JOIN tlu_Size_Class ON tbl_Infestation.Size_Text = tlu_"
    "Size_Class.Size_Description) LEFT JOIN tlu_Cover_Class ON tbl_Infestation.Cover_"
    "Text = tlu_Cover_Class.Cover_Description) ON tbl_Infestation_Events.Infest_Event"
    "_ID = tbl_Infestation.Infest_Event_ID) ON tbl_Locations.Location_ID = tbl_Infest"
    "ation_Events.Location_ID\015\012WHERE (((tbl_Locations.Unit_Code)=Forms!frm_Sele"
    "ct_Infest_by_Growth!Park_Code) And ((Year([Start_Date]))=Forms!frm_Select_Infest"
    "_by_Growth!Visit_Year) And ((IIf([Unit_Code] In (\"CARE\",\"DINO\",\"GOSP\",\"ZI"
    "ON\"),[Utah_Species],IIf([Unit_Code]=\"FOBU\",[WY_Species],[Co_Species]))) Is No"
    "t Null))\015\012ORDER BY tbl_Locations.Unit_Code, Year([Start_Date]);\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "UseTransaction" ="-1"
dbBinary "GUID" = Begin
    0xdaa1b2d078005941b830f79fb0067f79
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="tbl_Infestation.N_Coord"
        dbInteger "ColumnWidth" ="1275"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Infestation.E_Coord"
        dbInteger "ColumnWidth" ="1170"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_Size_Class.Size_Class"
        dbInteger "ColumnWidth" ="1125"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Unit_Code"
        dbInteger "ColumnWidth" ="1065"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Visit_Year"
        dbInteger "ColumnWidth" ="1005"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3e84f85e1b0d204bb1383b6e24a3770c
        End
    End
    Begin
        dbText "Name" ="Species"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc45cc4dde9b38642ad8287986452ab85
        End
    End
    Begin
        dbText "Name" ="tlu_NCPN_Plants.Master_Common_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tlu_Cover_Class.Cover_Class"
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
End
