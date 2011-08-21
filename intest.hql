drop index indexof_1mtest on 1mtest;
drop index indexof_200mtest on 200mtest;


create index indexof_1mtest
	on table 1mtest(col)
	AS 'COMPACT'
	with deferred rebuild
	stored as rcfile;

alter index indexof_1mtest on 1mtest rebuild;

