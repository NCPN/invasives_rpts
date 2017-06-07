dbMemo "SQL" ="SELECT DISTINCT Master_Plant_Code_FK, LU_Code, Family, Species_Name, utah_specie"
    "s, Co_Species, Wy_Species, Master_Common_Name, ConcatRelated(\"ParkYearPriority\""
    ", \"qry_Annual_Complete_Tgt_Species_Lists\",\"Park= 'CURE' AND Species_Name='\"+"
    "Species_Name+\"'\",'',\"|\") AS ParkYearPriorities, (SELECT Min(TgtYear) FROM qr"
    "y_Annual_Complete_Tgt_Species_Lists WHERE Park = 'CURE') AS MinYear, (SELECT Max"
    "(TgtYear) FROM qry_Annual_Complete_Tgt_Species_Lists WHERE Park = 'CURE') AS Max"
    "Year\015\012FROM (SELECT * FROM qry_Annual_Complete_Tgt_Species_Lists WHERE Park"
    " = 'CURE')  AS [%$##@_Alias]\015\012GROUP BY Park, Master_Plant_Code_FK, LU_Code"
    ", Family, Species_Name, Priority, Transect_Only, Target_Area_ID, Tgt_Area, utah_"
    "species, Co_Species, Wy_Species, Master_Common_Name, PriorityTarget, SpeciesYear"
    ";\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbByte "RecordsetType" ="0"
dbBoolean "TotalsRow" ="0"
dbText "Description" ="Target species summary for all parks for a given year  (Target List Tool update)"
dbBinary "GUID" = Begin
    0x4cec6e00241c6f00e4aac72f02000000
End
Begin
    Begin
        dbText "Name" ="Master_Plant_Code_FK"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="LU_Code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Family"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Species_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="utah_species"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Co_Species"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wy_Species"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Master_Common_Name"
        dbInteger "ColumnWidth" ="2835"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ParkYearPriorities"
        dbInteger "ColumnWidth" ="5616"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5ec14cdbeee6b24692bbb072243193ec
        End
    End
    Begin
        dbText "Name" ="MaxYear"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd78b395b8132ca41b15eb659766f00a8
        End
    End
    Begin
        dbText "Name" ="MinYear"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7de942c117e9774aa1d2208220f92ef3
        End
    End
End
