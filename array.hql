drop table ary;

create table ary (
	num array<int>
	)

load data local inpath '/home/hadoop/hive/build/dist/array_source' into table ary;

select num[0] from ary;
