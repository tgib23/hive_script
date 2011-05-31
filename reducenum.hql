drop table if exists t3;

create table t3 (
	col1	int,
	col2	int,
	col3	int
	)
	row format delimited
	fields terminated by '\t';

load data local inpath './distinct_source' overwrite into table t3;

set mapred.reduce.tasks=1;

select col1, count(distinct col2), count(distinct col3) from t3 group by col1 sort by col1;

