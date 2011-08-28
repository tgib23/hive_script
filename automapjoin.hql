set hive.auto.convert.join=true; 

drop table if exists join_test_rb;

create table join_test_rb (
	col	int
	)
;

insert overwrite table join_test_rb
select 1m.col from 1mtest 1m join test tt on (1m.col = tt.col);




drop table if exists join_test_rb;

create table join_test_rb (
	col	int
	)
;

insert overwrite table join_test_rb
select tt.col from test tt join 1mtest 1m on (tt.col = 1m.col);
