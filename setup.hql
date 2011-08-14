
drop table if exists test;

create table test (
	col	int
	)
;

load data local inpath './src0' into table test ;
load data local inpath './src1' into table test ;
load data local inpath './src2' into table test ;
load data local inpath './src3' into table test ;
load data local inpath './src4' into table test ;


drop table if exists 1mtest;

create table 1mtest (
	col	int
	);

load data local inpath './1msrc0' into table 1mtest ;
load data local inpath './1msrc1' into table 1mtest ;
load data local inpath './1msrc2' into table 1mtest ;
load data local inpath './1msrc3' into table 1mtest ;
load data local inpath './1msrc4' into table 1mtest ;


drop table if exists 200mtest;

create table 200mtest (
	col	int
	);

load data local inpath './200msrc0' into table 200mtest ;
load data local inpath './200msrc1' into table 200mtest ;
load data local inpath './200msrc2' into table 200mtest ;
load data local inpath './200msrc3' into table 200mtest ;
load data local inpath './200msrc4' into table 200mtest ;
