drop table ext_exm;

create external table ext_exm (
	num int,
	str string)
	row format delimited fields terminated by '1'
	stored as textfile
	location '/home/satoshya/ext';

select * from ext_exm;
