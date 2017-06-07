Operation =1
Option =0
Begin InputTables
    Name ="qry_Select_Species_Cover"
End
Begin OutputColumns
    Alias ="Expr1"
    Expression ="qry_Select_Species_Cover.Unit_Code"
    Alias ="Expr2"
    Expression ="qry_Select_Species_Cover.Visit_Year"
    Alias ="Expr3"
    Expression ="qry_Select_Species_Cover.Plot_ID"
    Alias ="Expr4"
    Expression ="qry_Select_Species_Cover.Transect"
End
Begin Groups
    Expression ="qry_Select_Species_Cover.Unit_Code"
    GroupLevel =0
    Expression ="qry_Select_Species_Cover.Visit_Year"
    GroupLevel =0
    Expression ="qry_Select_Species_Cover.Plot_ID"
    GroupLevel =0
    Expression ="qry_Select_Species_Cover.Transect"
    GroupLevel =0
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
    0x2cb1cf3efed58d47835c3bae1446c113
End
Begin
    Begin
        dbText "Name" ="Expr1"
        dbBinary "GUID" = Begin
            0x38509c0fd1e8c54295657a89d1c4d498
        End
    End
    Begin
        dbText "Name" ="Expr2"
        dbBinary "GUID" = Begin
            0xa5822b63079f654899f59731e6c44efa
        End
    End
    Begin
        dbText "Name" ="Expr3"
        dbBinary "GUID" = Begin
            0x153934e21761e946badc168777aad495
        End
    End
    Begin
        dbText "Name" ="Expr4"
        dbBinary "GUID" = Begin
            0x5fd619de3e899b4e96b6b6fcab414f75
        End
    End
End
Begin
    State =0
    Left =18
    Top =14
    Right =1002
    Bottom =327
    Left =-1
    Top =-1
    Right =952
    Bottom =106
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =120
        Top =0
        Name ="qry_Select_Species_Cover"
        Name =""
    End
End
