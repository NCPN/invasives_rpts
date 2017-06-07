Operation =1
Option =0
Where ="(((qry_Transect_Select.Unit_Code)=Forms!frm_Monitoring_Transect!Park_Code) And ("
    "(qry_Transect_Select.Visit_Year)=Forms!frm_Monitoring_Transect!Visit_Year) And ("
    "(qry_Transect_Select.Species) Is Not Null))"
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
    0x2fc81f7640363e45977e0c481cdc2d7f
End
Begin
    Begin
        dbText "Name" ="qry_Transect_Select.Unit_Code"
        dbInteger "ColumnWidth" ="1050"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_Transect_Select.Visit_Year"
        dbInteger "ColumnWidth" ="1005"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_Transect_Select.Plot_ID"
        dbInteger "ColumnWidth" ="2520"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_Transect_Select.Transect"
        dbInteger "ColumnWidth" ="885"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_Transect_Select.Area"
        dbInteger "ColumnWidth" ="660"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_Transect_Select.Species"
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Cover_Average"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6b02e49857c05f429cf28a2d13db8ae8
        End
    End
    Begin
        dbText "Name" ="Expr1"
        dbBinary "GUID" = Begin
            0x9006ede790e1664d8cfefbc5d619e4a3
        End
    End
    Begin
        dbText "Name" ="Expr2"
        dbBinary "GUID" = Begin
            0x65945b1df1fe054991efcdf254d4f244
        End
    End
    Begin
        dbText "Name" ="Expr3"
        dbBinary "GUID" = Begin
            0xb00574540abd284cb4f64d4b2c4e2de0
        End
    End
    Begin
        dbText "Name" ="Expr4"
        dbBinary "GUID" = Begin
            0x426d772b30e43048898951db8fd10a42
        End
    End
    Begin
        dbText "Name" ="Expr5"
        dbBinary "GUID" = Begin
            0x987bdd4638f643439822ea24c0385c69
        End
    End
    Begin
        dbText "Name" ="Expr6"
        dbBinary "GUID" = Begin
            0x490247a8ca6110459c56cfc621f49ac3
        End
    End
    Begin
        dbText "Name" ="Expr7"
        dbBinary "GUID" = Begin
            0xb17cd893be13164ab3a11675b8c7c701
        End
    End
    Begin
        dbText "Name" ="Expr8"
        dbBinary "GUID" = Begin
            0x1d61cd08fe98de4990cdf35c5dafd3f0
        End
    End
    Begin
        dbText "Name" ="Expr9"
        dbBinary "GUID" = Begin
            0x167caa7861794e4b9c29c381028f98af
        End
    End
End
Begin
    State =0
    Left =13
    Top =124
    Right =999
    Bottom =448
    Left =-1
    Top =-1
    Right =954
    Bottom =110
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
