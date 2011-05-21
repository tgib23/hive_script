
drop table test_src;

create table test_src (test int);

load data local inpath 'test_src' overwrite into table test_src;


create table test_dis like test_src;
