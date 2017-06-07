Operation =1
Option =0
Where ="(((qry_Transect_Select.Unit_Code)=[Forms]![frm_Monitoring_Transect]![Park_Code])"
    " AND ((qry_Transect_Select.Visit_Year)=[Forms]![frm_Monitoring_Transect]![Visit_"
    "Year]) AND ((qry_Transect_Select.Species) Is Not Null))"
Begin InputTables
    Name ="qry_Transect_Select"
End
Begin OutputColumns
    Alias ="Expr1"
    Expression ="qry_Transect_Select.Unit_Code"
    Alias ="Expr2"
    Expression ="qry_Transect_Select.Visit_Year"
    Alias ="Expr3"
    Expression ="qry_Transect_Select.Plot_ID"
    Alias ="Expr4"
    Expression ="qry_Transect_Select.Transect"
    Alias ="Expr5"
    Expression ="qry_Transect_Select.Area"
    Alias ="Expr6"
    Expression ="qry_Transect_Select.Species"
    Alias ="Expr7"
    Expression ="qry_Transect_Select.Master_Common_Name"
    Alias ="Cover_Average"
    Expression ="IIf([Visit_Year]=2008,([Q1]+[Q2]+[Q3])/3,IIf([Visit_Year]=2009,([Q1_3m]+[Q2_8m]+"
        "[Q3_13m])/3,([Q1_hm]+[Q2_5m]+[Q3_10m])/3))"
    Alias ="Expr8"
    Expression ="qry_Transect_Select.E_Coord"
    Alias ="Expr9"
    Expression ="qry_Transect_Select.N_Coord"
End
Begin OrderBy
    Expression ="qry_Transect_Select.Plot_ID"
    Flag =0
    Expression ="qry_Transect_Select.Transect"
    Flag =0
    Expression ="qry_Transect_Select.Species"
    Flag =0
End
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
    0xa9c5c2491ce12e4989903f8e9effe902
End
Begin
    Begin
        dbText "Name" ="Cover_Average"
        dbInteger "ColumnWidth" ="2295"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x556259f139859c4dacf898eb8dd8b1f1
        End
    End
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd71d4825d7588f4bb05df7e1fd94e1fe
        End
    End
    Begin
        dbText "Name" ="Expr2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2e62e8a785568f41bbeac946fdfdec4f
        End
    End
    Begin
        dbText "Name" ="Expr3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa9e8f58755c9804b9024c51c27cfa2e8
        End
    End
    Begin
        dbText "Name" ="Expr4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9eec8a0b07e5eb41a3d5ca89d6e6300c
        End
    End
    Begin
        dbText "Name" ="Expr5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0b57495896cdf642819d9bdf7d7f8ed9
        End
    End
    Begin
        dbText "Name" ="Expr6"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x11aeaa424936fb4380e8dd0a3d0e5493
        End
    End
    Begin
        dbText "Name" ="Expr7"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x664be85832df054ca3c866a1479b78ce
        End
    End
    Begin
        dbText "Name" ="Expr8"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6c2c1d2e013d9c40a8987225c90b0cf2
        End
    End
    Begin
        dbText "Name" ="Expr9"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xefacd40ea7eb7441bc907b042da1c2f1
        End
    End
End
Begin
    State =0
    Left =13
    Top =124
    Right =1118
    Bottom =868
    Left =-1
    Top =-1
    Right =1073
    Bottom =59
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =103
        Top =5
        Right =297
        Bottom =123
        Top =0
        Name ="qry_Transect_Select"
        Name =""
    End
End
