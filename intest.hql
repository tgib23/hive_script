drop index indexof_test on test_external;

select col from test_external where col = 4023;


create index indexof_test
	on table test_external(col)
	AS 'COMPACT'
	with deferred rebuild
	stored as rcfile;

alter index indexof_test on test_external rebuild;

select col from test_external where col = 4023;

