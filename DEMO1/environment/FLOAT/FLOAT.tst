-- VectorCAST 18.sp2 (07/03/18)
-- Test Case Script
-- 
-- Environment    : FLOAT
-- Unit(s) Under Test: float_example
-- 
-- Script Features
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
TEST.SCRIPT_FEATURE:MIXED_CASE_NAMES
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
--

-- Unit: float_example

-- Subprogram: floatAbsVal

-- Test Case: BASIS-PATH-001
TEST.UNIT:float_example
TEST.SUBPROGRAM:floatAbsVal
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (left < right) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:float_example.floatAbsVal.left:<<MIN>>
TEST.VALUE:float_example.floatAbsVal.right:<<MAX>>
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:float_example
TEST.SUBPROGRAM:floatAbsVal
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (left < right) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:float_example.floatAbsVal.left:<<MAX>>
TEST.VALUE:float_example.floatAbsVal.right:<<MIN>>
TEST.END

-- Subprogram: floatPtrExample

-- Test Case: BASIS-PATH-001
TEST.UNIT:float_example
TEST.SUBPROGRAM:floatPtrExample
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
TEST.END_NOTES:
TEST.VALUE:float_example.floatPtrExample.Param:<<malloc 1>>
TEST.END

-- Subprogram: floatTest

-- Test Case: BASIS-PATH-001
TEST.UNIT:float_example
TEST.SUBPROGRAM:floatTest
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
TEST.END_NOTES:
TEST.VALUE:float_example.floatTest.Param:<<MIN>>
TEST.END

-- Subprogram: getOrder

-- Test Case: BASIS-PATH-001
TEST.UNIT:float_example
TEST.SUBPROGRAM:getOrder
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
TEST.END_NOTES:
TEST.VALUE:float_example.getOrder.index:<<MIN>>
TEST.END
