 

drop table if exists join_test;

create table join_test (
	col	int
	)
;

insert overwrite table join_test
select 200m.col from 1mtest 1m right outer join 200mtest 200m on (1m.col = 200m.col);
