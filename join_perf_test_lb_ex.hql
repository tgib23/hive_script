 

drop table if exists join_test_lb;

create table join_test_lb (
	col	int
	)
;

insert overwrite table join_test_lb
select 200m.col from 200mtest_external 200m join 1mtest_external 1m on (200m.col = 1m.col);
