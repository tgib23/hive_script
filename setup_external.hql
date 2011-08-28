
drop table if exists test_external;

create table test_external (
	col	int
	)
	partitioned by (dt STRING)
;

alter table test_external add partition (dt=0) location '/home/hdpro/hive_src/test/0';

drop table if exists 1mtest_external;

create table 1mtest_external (
	col	int
	)
	partitioned by (dt STRING)
;

alter table 1mtest_external add partition (dt=0) location '/home/hdpro/hive_src/1m/0';



drop table if exists 200mtest_external;

create table 200mtest_external (
	col	int
	)
	partitioned by (dt STRING)
;

alter table 200mtest_external add partition (dt=0) location '/home/hdpro/hive_src/200m/0';



