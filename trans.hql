add file split.pl;

drop table if exists trans_ex;

create table trans_ex (
	k	string,
	v	string
	)
	row format delimited fields terminated by '\t';

load data local inpath './transform_data' into table trans_ex;

select * from trans_ex;


select transform (trans_ex.k)
	using './split.pl'
	from trans_ex;


