dbMemo "SQL" ="SELECT tbl_Target_List.Park_Code AS Park, tbl_Target_List.Target_Year AS TgtYear"
    ", Master_Plant_Code_FK, Species_Name, LU_Code, Priority, Transect_Only, Target_A"
    "rea_ID AS Extra_Area_ID\015\012FROM tbl_Target_Species INNER JOIN tbl_Target_Lis"
    "t ON tbl_Target_Species.Tgt_List_ID_FK = tbl_Target_List.Tgt_List_ID\015\012WHER"
    "E (((tbl_Target_List.Target_Year) = CInt(2015)) And ((LCase([tbl_Target_List].[P"
    "ark_Code])) = LCase('FOBU')))\015\012ORDER BY tbl_Target_Species.Species_Name;\015"
    "\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xfb502d81d0b8f645ad65e75caf0d298d
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="Park"
        dbBinary "GUID" = Begin
            0xd39ff39af6e2914eb7a1449f725cc67e
        End
    End
    Begin
        dbText "Name" ="TgtYear"
        dbBinary "GUID" = Begin
            0xd7a049a4a2b81d44b8fbc2f1a5639bb7
        End
    End
    Begin
        dbText "Name" ="Extra_Area_ID"
        dbBinary "GUID" = Begin
            0xfd65da8edd231145aa4aa9cd353609fb
        End
    End
End
