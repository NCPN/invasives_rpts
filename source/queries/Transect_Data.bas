﻿dbMemo "SQL" ="SELECT DISTINCT ts.Unit_Code, ts.Visit_Year, ts.Route, ts.Transect, ts.Area, ts."
    "E_Coord, ts.N_Coord, ts.Species, ts.Master_Common_Name, IIF(ts.IsDead = 1, \"N\""
    ", \"Y\") AS [Alive?], (tc.TotalCover/qs.SampledQuadrats) AS AverageCover\015\012"
    "FROM (Transect_Select_LIMITED_ESP_SpeciesCover_Species AS ts INNER JOIN Transect"
    "_Select_QuadratsSampled AS qs ON (qs.N_Coord = ts.N_Coord) AND (qs.E_Coord = ts."
    "E_Coord) AND (qs.Transect = ts.Transect) AND (qs.Route = ts.Route) AND (qs.Visit"
    "_Year = ts.Visit_Year) AND (qs.Unit_Code = ts.Unit_Code)) INNER JOIN Transect_Se"
    "lect_TotalCover AS tc ON (tc.IsDead = ts.IsDead) AND (tc.PlantCode = ts.PlantCod"
    "e) AND (tc.N_Coord = ts.N_Coord) AND (tc.E_Coord = ts.E_Coord) AND (tc.Transect "
    "= ts.Transect) AND (tc.Route = ts.Route) AND (tc.Visit_Year = ts.Visit_Year) AND"
    " (tc.Unit_Code = ts.Unit_Code)\015\012ORDER BY ts.Unit_Code, ts.Visit_Year, ts.R"
    "oute, ts.Transect, ts.Species;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xe5df587720525647a664d7dfa7809edc
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbMemo "Filter" ="([Transect_Data].Visit_Year=2012)"
Begin
    Begin
        dbText "Name" ="Alive?"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa6075aa7909caa4d8b2e6d651a0104f3
        End
    End
    Begin
        dbText "Name" ="ts.Species"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ts.Master_Common_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="AverageCover"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ts.Unit_Code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ts.Visit_Year"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ts.Route"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ts.Transect"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ts.Area"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ts.E_Coord"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ts.N_Coord"
        dbLong "AggregateType" ="-1"
    End
End
