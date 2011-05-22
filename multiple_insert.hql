drop table if exists mult_src;
drop table if exists mult_dist;

create table mult_src (
	num int
	)
	partitioned by (part string);

create table mult_dist (
	num int
	)
	partitioned by (part string);

load data local inpath 'mult_src0' overwrite into table mult_src partition (part='src0');
load data local inpath 'mult_src1' overwrite into table mult_src partition (part='src1');

from mult_src
	insert overwrite table mult_dist partition (part='src0')
		select num where (part='src0')
	insert overwrite table mult_dist partition (part='src1')
		select num where (part='src1')
		;

from mult_src
	insert overwrite local directory '/home/hadoop/hive/build/dist/mult_src_output_v1_0'
		select num where (part='src0')
	insert overwrite local directory '/home/hadoop/hive/build/dist/mult_src_output_v1_1'
		select num where (part='src1');
