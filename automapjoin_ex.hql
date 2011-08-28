set hive.auto.convert.join=true; 

drop table if exists join_test_rb;

create table join_test_rb (
	col	int
	)
;

insert overwrite table join_test_rb
select 1m.col from 1mtest_external 1m join test_external tt on (1m.col = tt.col);




drop table if exists join_test_rb;

create table join_test_rb (
	col	int
	)
;

insert overwrite table join_test_rb
select tt.col from test_external tt join 1mtest_external 1m on (tt.col = 1m.col);
