﻿dbMemo "SQL" ="SELECT d.Unit_Code, d.Visit_Year, d.Route, MIN(d.Species) AS Species, MIN(d.Mast"
    "er_Common_Name) AS Master_Common_Name, d.IsDead, MIN(d.TransectsSampled) AS Tran"
    "sectsSampled, MIN(td.TransectsDetected) AS TransectsDetected, MIN(d.TotalCover) "
    "AS TotalCover, MIN(d.RouteAverageCover) AS RouteAverageCover, SUM(d.DeviationSqu"
    "ared) AS TotalDevSquared\015\012FROM temp_Route_Transect_AverageCover_Deviations"
    " AS d INNER JOIN temp_Route_TransectsDetected AS td ON (td.Unit_Code = d.Unit_Co"
    "de) AND (td.Visit_Year = d.Visit_Year) AND (td.Route = d.Route) AND (td.PlantCod"
    "e = d.PlantCode) AND (td.IsDead = d.IsDead)\015\012GROUP BY d.Unit_Code, d.Visit"
    "_Year, d.Route, d.PlantCode, d.IsDead\015\012ORDER BY d.Unit_Code, d.Visit_Year,"
    " d.Route, MIN(d.Species), d.IsDead;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x2b931526cfe1714982b3145caff62da4
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="Master_Common_Name"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x30cd11173b9b6744b7c40ad8a055c911
        End
    End
    Begin
        dbText "Name" ="TransectsSampled"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1c87d6ba5e839d49a5be3884317226d4
        End
        dbInteger "ColumnWidth" ="1155"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TotalCover"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x367bd53dccd4fb40a154c65e9f4e0892
        End
    End
    Begin
        dbText "Name" ="RouteAverageCover"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8392445dca1cef4aacbbdf19e41b47f3
        End
    End
    Begin
        dbText "Name" ="TotalDevSquared"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3ef55be73d4c1c4aaa9a00492dd8455c
        End
        dbInteger "ColumnWidth" ="2025"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TransectsDetected"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="d.Unit_Code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="d.Visit_Year"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="d.Route"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="d.IsDead"
        dbLong "AggregateType" ="-1"
    End
End
