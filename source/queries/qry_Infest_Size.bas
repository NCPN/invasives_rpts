dbMemo "SQL" ="SELECT DISTINCT qry_Infest_Size_Select.*, qry_Annual_Complete_Tgt_Species_Lists."
    "Priority\015\012FROM qry_Infest_Size_Select LEFT JOIN qry_Annual_Complete_Tgt_Sp"
    "ecies_Lists ON (qry_Infest_Size_Select.Unit_Code = qry_Annual_Complete_Tgt_Speci"
    "es_Lists.Park) AND (qry_Infest_Size_Select.Visit_Year = qry_Annual_Complete_Tgt_"
    "Species_Lists.TgtYear) AND (qry_Infest_Size_Select.Master_Code = qry_Annual_Comp"
    "lete_Tgt_Species_Lists.Master_Plant_Code_FK)\015\012WHERE (((qry_Infest_Size_Sel"
    "ect.Size_Class) Is Not Null));\015\012"
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
    0x77cffe9147c0d94ca0a30318fd21d151
End
Begin
    Begin
        dbText "Name" ="qry_Infest_Size_Select.tbl_Locations.Unit_Code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_Infest_Size_Select.Visit_Year"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_Infest_Size_Select.tbl_Locations.Plot_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_Infest_Size_Select.Species"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_Infest_Size_Select.tlu_NCPN_Plants.Master_Common_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_Infest_Size_Select.tbl_Infestation.Pulled"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_Infest_Size_Select.tbl_Infestation.Growth_Stage"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_Infest_Size_Select.tbl_Infestation.N_Coord"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_Infest_Size_Select.tbl_Infestation.E_Coord"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_Infest_Size_Select.tlu_Size_Class.Size_Class"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_Infest_Size_Select.tbl_Infestation.Master_Code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Target_Species.Priority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_Annual_Complete_Tgt_Species_Lists.Priority"
        dbLong "AggregateType" ="-1"
    End
End
