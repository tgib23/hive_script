
drop table if exists test;

create table test (
	col	int
	)
;

load data local inpath './src0' into table test ;


drop table if exists 1mtest;

create table 1mtest (
	col	int
	);

load data local inpath './1msrc0' into table 1mtest ;


drop table if exists 200mtest;

create table 200mtest (
	col	int
	);

load data local inpath './200msrc0' into table 200mtest ;


drop table if exists 200mtest1;

create table 200mtest1 (
	col	int
	);

load data local inpath './200msrc4' into table 200mtest1 ;


