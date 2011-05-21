drop table if exists index_exp;
drop index if exists indexof_index_exp on index_exp;

create table index_exp (
	num int
	);

load data inpath '/home/satoshi/sozai/rand' into table index_exp;

select * from index_exp where num < 10;

create index indexof_index_exp
	on table index_exp(num)
	AS 'org.apache.hadoop.hive.ql.index.compact.CompactIndexHandler'
	with deferred rebuild;

select * from index_exp where num < 10;

