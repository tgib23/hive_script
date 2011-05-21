drop table alter_samp;

create table alter_samp (
	a int,
	b int,
	c int
	)
	row format delimited
	fields terminated by '\t';




load data local inpath 'test_alter_src' overwrite into table alter_samp;

select a, b, c from alter_samp;

alter table alter_samp change a a1 int after b;
alter table alter_samp change c c_ffirst int first;

select * from alter_samp;
select a1, b, c_ffirst from alter_samp;


alter table alter_samp replace columns (a int, b int);
select * from alter_samp;
