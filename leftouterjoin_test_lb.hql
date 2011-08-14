 

drop table if exists join_test;

create table join_test (
	col	int
	)
;

insert overwrite table join_test
select 200m.col from 200mtest 200m left outer join 1mtest 1m on (200m.col = 1m.col);
