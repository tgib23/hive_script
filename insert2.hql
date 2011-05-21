
set hive.input.format = org.apache.hadoop.hive.ql.io.CombineHiveInputFormat;

insert overwrite table insertpart6 partition (pt='test',country='us') 
select * from combine_test where part like 'part%6';

