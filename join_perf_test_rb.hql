 

drop table if exists join_test_rb;

create table join_test_rb (
	col	int
	)
;

insert overwrite table join_test_rb
select 1m.col from 1mtest 1m join 200mtest 200m on (1m.col = 200m.col);
