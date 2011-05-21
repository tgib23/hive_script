drop table insertpart6;
create table insertpart6 (num int, par string) partitioned by (pt string, country string);

set hive.input.format = org.apache.hadoop.hive.ql.io.CombineHiveInputFormat;

insert overwrite table insertpart6 partition (pt='test') 
select * from combine_test where part like 'part%6';

