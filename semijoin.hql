 

drop table if exists semi_join_test;

create table semi_join_test (
	col	int
	)
;

insert overwrite table semi_join_test
select 1m.col from 1mtest 1m left semi join 200mtest 200m on (1m.col = 200m.col);
