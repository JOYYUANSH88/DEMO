-- VectorCAST 18.sp2 (07/02/18)
-- Test Case Script
-- 
-- Environment    : MANAGER
-- Unit(s) Under Test: manager
-- 
-- Script Features
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
TEST.SCRIPT_FEATURE:MIXED_CASE_NAMES
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
--

-- Unit: manager

-- Subprogram: Add_Included_Dessert

-- Test Case: BASIS-PATH-001
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> FALSE
      (2) if ((Order->Entree == (LOBSTER) && Order->Salad == (GREEN)) && Order->Beverage == (WINE)) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:NO_ENTREE
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> FALSE
      (2) if ((Order->Entree == (LOBSTER) && Order->Salad == (GREEN)) && Order->Beverage == (WINE)) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Salad:GREEN
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:LOBSTER
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Beverage:WINE
TEST.END

-- Test Case: BASIS-PATH-003
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:BASIS-PATH-003
TEST.BASIS_PATH:3 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Salad:CAESAR
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:STEAK
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Beverage:MIXED_DRINK
TEST.END

-- Subprogram: Add_Party_To_Waiting_List

-- Test Case: BASIS-PATH-001
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Party_To_Waiting_List
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (WaitingListSize > (9)) ==> FALSE
      (2) while (Name && *Name) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.WaitingListSize:<<MIN>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<malloc 9>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<null>>
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Party_To_Waiting_List
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (WaitingListSize > (9)) ==> FALSE
      (2) while (Name && *Name) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.WaitingListSize:<<MIN>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<malloc 1>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name[0]:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-003
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Party_To_Waiting_List
TEST.NEW
TEST.NAME:BASIS-PATH-003
TEST.BASIS_PATH:3 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if (WaitingListSize > (9)) ==> TRUE
      (2) while (Name && *Name) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.WaitingListSize:<<MAX>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<malloc 9>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<null>>
TEST.END

-- Subprogram: Add_Tax_Tip

-- Test Case: BASIS-PATH-001
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Tax_Tip
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 4
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (sales_tax > (0)) ==> FALSE
      (2) if (sales_tax == (0)) ==> FALSE
      (3) if log_err ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Tax_Tip.check_total:<<MIN>>
TEST.VALUE:manager.Add_Tax_Tip.sales_tax:<<MIN>>
TEST.VALUE:manager.Add_Tax_Tip.tip:<<MIN>>
TEST.VALUE:uut_prototype_stubs.log_tax_receipts.return:0
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Tax_Tip
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 4
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (sales_tax > (0)) ==> FALSE
      (2) if (sales_tax == (0)) ==> FALSE
      (3) if log_err ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Tax_Tip.check_total:<<MIN>>
TEST.VALUE:manager.Add_Tax_Tip.sales_tax:<<MIN>>
TEST.VALUE:manager.Add_Tax_Tip.tip:<<MIN>>
TEST.VALUE:uut_prototype_stubs.log_tax_receipts.return:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-003
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Tax_Tip
TEST.NEW
TEST.NAME:BASIS-PATH-003
TEST.BASIS_PATH:3 of 4
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if (sales_tax > (0)) ==> FALSE
      (2) if (sales_tax == (0)) ==> TRUE
      (3) if log_err ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Tax_Tip.check_total:<<MIN>>
TEST.VALUE:manager.Add_Tax_Tip.sales_tax:0.0
TEST.VALUE:manager.Add_Tax_Tip.tip:<<MIN>>
TEST.VALUE:uut_prototype_stubs.log_tax_receipts.return:0
TEST.END

-- Test Case: BASIS-PATH-004
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Tax_Tip
TEST.NEW
TEST.NAME:BASIS-PATH-004
TEST.BASIS_PATH:4 of 4
TEST.NOTES:
This is an automatically generated test case.
   Test Path 4
      (1) if (sales_tax > (0)) ==> TRUE
      (3) if log_err ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Tax_Tip.check_total:<<MIN>>
TEST.VALUE:manager.Add_Tax_Tip.sales_tax:<<MAX>>
TEST.VALUE:manager.Add_Tax_Tip.tip:<<MIN>>
TEST.VALUE:uut_prototype_stubs.log_tax_receipts.return:0
TEST.END

-- Subprogram: Clear_Table

-- Test Case: BASIS-PATH-001-PARTIAL
TEST.UNIT:manager
TEST.SUBPROGRAM:Clear_Table
TEST.NEW
TEST.NAME:BASIS-PATH-001-PARTIAL
TEST.BASIS_PATH:1 of 2 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) for (Seat < 4) ==> FALSE
   Test Case Generation Notes:
      Conflict: Unable to control expression-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.VALUE:manager.Clear_Table.Table:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-002-PARTIAL
TEST.UNIT:manager
TEST.SUBPROGRAM:Clear_Table
TEST.NEW
TEST.NAME:BASIS-PATH-002-PARTIAL
TEST.BASIS_PATH:2 of 2 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) for (Seat < 4) ==> TRUE
   Test Case Generation Notes:
      Conflict: Unable to control expression-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.VALUE:manager.Clear_Table.Table:<<MIN>>
TEST.END

-- Subprogram: Get_Check_Total

-- Test Case: BASIS-PATH-001
TEST.UNIT:manager
TEST.SUBPROGRAM:Get_Check_Total
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
TEST.END_NOTES:
TEST.VALUE:manager.Get_Check_Total.Table:<<MIN>>
TEST.END

-- Subprogram: Get_Next_Party_To_Be_Seated

-- Test Case: BASIS-PATH-001
TEST.UNIT:manager
TEST.SUBPROGRAM:Get_Next_Party_To_Be_Seated
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (WaitingListIndex > (9)) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.WaitingListIndex:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:manager
TEST.SUBPROGRAM:Get_Next_Party_To_Be_Seated
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (WaitingListIndex > (9)) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.WaitingListIndex:<<MAX>>
TEST.END

-- Subprogram: Place_Order

-- Test Case: BASIS-PATH-001
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (6) case (Order.Entree) ==> default
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Place_Order.Table:<<MIN>>
TEST.VALUE:manager.Place_Order.Seat:<<MIN>>
TEST.VALUE:manager.Place_Order.Order.Entree:5
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) case (Order.Entree) ==> NO_ENTREE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Place_Order.Table:<<MIN>>
TEST.VALUE:manager.Place_Order.Seat:<<MIN>>
TEST.VALUE:manager.Place_Order.Order.Entree:NO_ENTREE
TEST.END

-- Test Case: BASIS-PATH-003
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:BASIS-PATH-003
TEST.BASIS_PATH:3 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (2) case (Order.Entree) ==> STEAK
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Place_Order.Table:<<MIN>>
TEST.VALUE:manager.Place_Order.Seat:<<MIN>>
TEST.VALUE:manager.Place_Order.Order.Entree:STEAK
TEST.END

-- Test Case: BASIS-PATH-004
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:BASIS-PATH-004
TEST.BASIS_PATH:4 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 4
      (3) case (Order.Entree) ==> CHICKEN
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Place_Order.Table:<<MIN>>
TEST.VALUE:manager.Place_Order.Seat:<<MIN>>
TEST.VALUE:manager.Place_Order.Order.Entree:CHICKEN
TEST.END

-- Test Case: BASIS-PATH-005
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:BASIS-PATH-005
TEST.BASIS_PATH:5 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 5
      (4) case (Order.Entree) ==> LOBSTER
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Place_Order.Table:<<MIN>>
TEST.VALUE:manager.Place_Order.Seat:<<MIN>>
TEST.VALUE:manager.Place_Order.Order.Entree:LOBSTER
TEST.END

-- Test Case: BASIS-PATH-006
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:BASIS-PATH-006
TEST.BASIS_PATH:6 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 6
      (5) case (Order.Entree) ==> PASTA
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Place_Order.Table:<<MIN>>
TEST.VALUE:manager.Place_Order.Seat:<<MIN>>
TEST.VALUE:manager.Place_Order.Order.Entree:PASTA
TEST.END
