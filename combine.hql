set hive.input.format = org.apache.hadoop.hive.ql.io.CombineHiveInputFormat;
select count (*) from combine_test;

set hive.input.format = org.apache.hadoop.hive.ql.io.HiveInputFormat;
select count (*) from combine_test;
