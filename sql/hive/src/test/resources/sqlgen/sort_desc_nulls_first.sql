-- This file is automatically generated by LogicalPlanToSQLSuite.
SELECT COUNT(value) FROM parquet_t1 GROUP BY key ORDER BY key desc nulls first,MAX(key)
--------------------------------------------------------------------------------
SELECT `gen_attr_0` AS `count(value)` FROM (SELECT `gen_attr_0` FROM (SELECT count(`gen_attr_4`) AS `gen_attr_0`, `gen_attr_3` AS `gen_attr_1`, max(`gen_attr_3`) AS `gen_attr_2` FROM (SELECT `key` AS `gen_attr_3`, `value` AS `gen_attr_4` FROM `default`.`parquet_t1`) AS gen_subquery_0 GROUP BY `gen_attr_3` ORDER BY `gen_attr_1` DESC NULLS FIRST, `gen_attr_2` ASC NULLS FIRST) AS gen_subquery_1) AS gen_subquery_2