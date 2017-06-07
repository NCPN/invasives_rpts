dbMemo "SQL" ="SELECT tbl_Locations.Unit_Code, Year([Start_Date]) AS Visit_Year, tbl_Locations."
    "Plot_ID, tbl_Quadrat_Transect.Transect\015\012FROM tbl_Locations LEFT JOIN (tbl_"
    "Events LEFT JOIN tbl_Quadrat_Transect ON tbl_Events.Event_ID = tbl_Quadrat_Trans"
    "ect.Event_ID) ON tbl_Locations.Location_ID = tbl_Events.Location_ID\015\012GROUP"
    " BY tbl_Locations.Unit_Code, Year([Start_Date]), tbl_Locations.Plot_ID, tbl_Quad"
    "rat_Transect.Transect;\015\012"
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
    0xc88c281feeca694c9227a02f726885ec
End
Begin
    Begin
        dbText "Name" ="Visit_Year"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xada3b6c58ac6494eac8374f99bcfd775
        End
    End
End
