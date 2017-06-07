dbMemo "SQL" ="UPDATE Quadrat SET NoExotics = 0\015\012WHERE ID IN \015\012(\015\012SELECT DIST"
    "INCT\015\012q.ID\015\012FROM SpeciesCover sc\015\012INNER JOIN Quadrat q ON q.ID"
    " = sc.Quadrat_ID\015\012WHERE\015\012q.NoExotics = 1\015\012AND\015\012sc.Percen"
    "tCover > 0\015\012);\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBinary "GUID" = Begin
    0xf21a65f6dc3d6d4fbf65333c120ff55d
End
Begin
End
