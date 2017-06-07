dbMemo "SQL" ="SELECT DISTINCT e.Start_Date, IIF(Year(e.Start_Date) = SamplingYear, SamplingYea"
    "r, \015\012         (SELECT MAX (SamplingYear) FROM QuadratPosition) ) AS Sampli"
    "ngYr, Quadrat\015\012FROM tbl_Events AS e, QuadratPosition AS qp\015\012WHERE Ye"
    "ar(e.Start_Date) = SamplingYear\015\012OR\015\012Year(e.Start_Date) > (SELECT MA"
    "X(SamplingYear) FROM QuadratPosition);\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBinary "GUID" = Begin
    0x2998a48289a24746813b089b44977e8a
End
Begin
    Begin
        dbText "Name" ="e.Start_Date"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xeecb71596d13d044b66e134d22946f0e
        End
    End
    Begin
        dbText "Name" ="SamplingYr"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4ae45088791be14dbc9aa0857c8c3e3f
        End
        dbInteger "ColumnWidth" ="1665"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Quadrat"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc4991eb55f50cc4388cb888409e94660
        End
    End
End
