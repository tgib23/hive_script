add file map.rb;

drop table if exists for_map;
drop table if exists for_map2;

create table for_map (
	num1	int,
	num2	int
	)
	row format delimited
    fields terminated by '\t';

create table for_map2 (
	num1	int,
	num2	int
	)
	row format delimited
    fields terminated by '\t';

load data local inpath './map_data' into table for_map;
select * from for_map;

from (
	from for_map
	map for_map.num1, for_map.num2
	using './map.rb'
	as t1, t2) test_map
insert overwrite table for_map2
	reduce test_map.t1, test_map.t2
	using './map.rb'
	as t1, t2;
