 

drop table if exists mapside_join_test;

create table mapside_join_test (
	col	int
	)
;

insert overwrite table mapside_join_test
select /*+ MAPJOIN(1m) */ 1m.col from 1mtest 1m join 200mtest 200m on 1m.col = 200m.col;
