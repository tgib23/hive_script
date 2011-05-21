

set hive.input.format = org.apache.hadoop.hive.ql.io.CombineHiveInputFormat;
set hive.exec.dynamic.partition=true;

FROM combine_test c
	insert overwrite table insertpart6 partition (pt,country) 
		select c.num, c.part, "ptpt", "new"  where part like 'part%111';
