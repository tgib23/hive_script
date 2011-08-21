drop index indexof_1mtest on 1mtest;
drop index indexof_200mtest on 200mtest;

select * from 1mtest where col = 10;

create index indexof_1mtest
	on table 1mtest(col)
	AS 'org.apache.hadoop.hive.ql.index.compact.CompactIndexHandler'
	with deferred rebuild;


select * from 1mtest where col = 10;

select * from 200mtest where col = 10;

create index indexof_200mtest
	on table 200mtest(col)
	AS 'org.apache.hadoop.hive.ql.index.compact.CompactIndexHandler'
	with deferred rebuild;
	
alter index indexof_200mtest on 200mtest rebuild;

select * from 200mtest where col = 10;
