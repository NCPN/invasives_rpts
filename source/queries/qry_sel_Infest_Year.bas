dbMemo "SQL" ="SELECT tbl_Locations.Unit_Code, Year([Start_Date]) AS Visit_Year\015\012FROM tbl"
    "_Locations LEFT JOIN tbl_Infestation_Events ON tbl_Locations.Location_ID=tbl_Inf"
    "estation_Events.Location_ID\015\012GROUP BY tbl_Locations.Unit_Code, Year([Start"
    "_Date])\015\012HAVING (((Year([Start_Date])) Is Not Null))\015\012ORDER BY tbl_L"
    "ocations.Unit_Code, Year([Start_Date]);\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x3965e8a7809afc4abe16a94eb8b85554
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="Visit_Year"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xef87dadee320cf41b773b758e42d2077
        End
    End
End
