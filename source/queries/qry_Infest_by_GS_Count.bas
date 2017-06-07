dbMemo "SQL" ="SELECT tbl_Locations.Unit_Code, Year([Start_Date]) AS Visit_Year, tbl_Infestatio"
    "n.Growth_Stage, Count(tbl_Infestation.Infestation_ID) AS [Infestation Count]\015"
    "\012FROM tbl_Locations LEFT JOIN (tbl_Infestation_Events LEFT JOIN (((tbl_Infest"
    "ation LEFT JOIN tlu_NCPN_Plants ON tbl_Infestation.Master_Code = tlu_NCPN_Plants"
    ".Master_PLANT_Code) LEFT JOIN tlu_Size_Class ON tbl_Infestation.Size_Text = tlu_"
    "Size_Class.Size_Description) LEFT JOIN tlu_Cover_Class ON tbl_Infestation.Cover_"
    "Text = tlu_Cover_Class.Cover_Description) ON tbl_Infestation_Events.Infest_Event"
    "_ID = tbl_Infestation.Infest_Event_ID) ON tbl_Locations.Location_ID = tbl_Infest"
    "ation_Events.Location_ID\015\012GROUP BY tbl_Locations.Unit_Code, Year([Start_Da"
    "te]), tbl_Infestation.Growth_Stage\015\012HAVING (((tbl_Locations.Unit_Code)=For"
    "ms!frm_Infest_by_GS_Count!Park_Code) And ((Year([Start_Date]))=Forms!frm_Infest_"
    "by_GS_Count!Visit_Year) And ((tbl_Infestation.Growth_Stage)<>\"\"))\015\012ORDER"
    " BY tbl_Infestation.Growth_Stage;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "UseTransaction" ="-1"
dbBinary "GUID" = Begin
    0xd12752ce8aafbb48add1de76aa6b0c8d
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
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
            0xf6cde178d8605d45a4bf95404f37086e
        End
    End
    Begin
        dbText "Name" ="tbl_Infestation.Growth_Stage"
        dbInteger "ColumnWidth" ="1425"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Infestation Count"
        dbInteger "ColumnWidth" ="1995"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf4f65043aafe754ea82b1b0ff4f51e75
        End
    End
End
