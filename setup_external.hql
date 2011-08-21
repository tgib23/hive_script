
drop table if exists 1mtest_external;

create table 1mtest_external (
	col	int
	)
	partitioned by (dt STRING)
;

alter table 1mtest_external add partition (dt=0) location '/home/hdpro/hive_src/1m/0';
alter table 1mtest_external add partition (dt=1) location '/home/hdpro/hive_src/1m/1';
alter table 1mtest_external add partition (dt=2) location '/home/hdpro/hive_src/1m/2';
alter table 1mtest_external add partition (dt=3) location '/home/hdpro/hive_src/1m/3';
alter table 1mtest_external add partition (dt=4) location '/home/hdpro/hive_src/1m/4';



drop table if exists 200mtest_external;

create table 200mtest_external (
	col	int
	)
	partitioned by (dt STRING)
;

alter table 200mtest_external add partition (dt=0) location '/home/hdpro/hive_src/200m/0';
alter table 200mtest_external add partition (dt=1) location '/home/hdpro/hive_src/200m/1';
alter table 200mtest_external add partition (dt=2) location '/home/hdpro/hive_src/200m/2';
alter table 200mtest_external add partition (dt=3) location '/home/hdpro/hive_src/200m/3';
alter table 200mtest_external add partition (dt=4) location '/home/hdpro/hive_src/200m/4';



