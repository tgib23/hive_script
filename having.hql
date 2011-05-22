drop table if exists t1;
drop table if exists t2;

create table t1 (
	col1	int,
	col2	int
	)
	row format delimited
	fields terminated by '\t';

create table t2 (
	col1	int,
	col2	int,
	col3	int,
	col4	int
	)
	row format delimited
	fields terminated by '\t';

load data inpath '/home/satoshi/sozai/having_source' overwrite into table t1;

select * from t1;
select col1 from t1 group by col1 having sum(col2) > 10;
SELECT col1 FROM (SELECT col1, SUM(col2) AS col2sum FROM t1 GROUP BY col1) t2 WHERE t2.col2sum > 10 sort by col1;

insert overwrite table t2
	select col1 , count(distinct col2) , count(*), sum(distinct col2) from t1 group by col1;

select * from t2;

