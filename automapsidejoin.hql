set hive.auto.convert.join=true;

drop table if exists mapside_join_test;

create table mapside_join_test (
	col	int
	)
;

insert overwrite table mapside_join_test
select tt.col from test tt join 1mtest 1m on tt.col = 1m.col;
