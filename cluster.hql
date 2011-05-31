drop table if exists t3;

create table t3 (
	col1	int,
	col2	int,
	col3	int
	)
	row format delimited
	fields terminated by '\t';

load data local inpath './distinct_source' overwrite into table t3;

set mapred.reduce.tasks=2;

select col1, col2 from t3;
select col1, col2 from t3 cluster by col1;
select col1, col2 from t3 distribute by col1;

