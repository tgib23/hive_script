

set hive.input.format = org.apache.hadoop.hive.ql.io.CombineHiveInputFormat;

FROM combine_test
	insert overwrite table insertpart6 partition (pt='test',country='mults') 
		select * where part like 'part%6'

	insert overwrite directory '/home/satoshya/mult'
		select * where part like 'part%7';

