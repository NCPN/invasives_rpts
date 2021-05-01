dbMemo "SQL" ="SELECT tbl_Target_List.Park_Code AS Park, tbl_Target_List.Target_Year AS TgtYear"
    ", Master_Plant_Code_FK, Species_Name, LU_Code, Priority, Transect_Only, Target_A"
    "rea_ID AS Extra_Area_ID\015\012FROM tbl_Target_Species INNER JOIN tbl_Target_Lis"
    "t ON tbl_Target_Species.Tgt_List_ID_FK = tbl_Target_List.Tgt_List_ID\015\012WHER"
    "E (((tbl_Target_List.Target_Year) = CInt(2019)) And ((LCase([tbl_Target_List].[P"
    "ark_Code])) = LCase('COLM')))\015\012ORDER BY tbl_Target_Species.Species_Name;\015"
    "\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
Begin
End
