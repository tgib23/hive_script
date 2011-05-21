
set hive.exec.drop.ignorenonexistent=true;

drop table if exists part_samp_ext ;

create external table part_samp_ext 
	(test int)
	partitioned by (srcnum string)
	location '/home/satoshya/partition_sample';


alter table part_samp_ext add partition (srcnum = 'src0' ) location 
'/home/satoshya/partition_sample/src0';

alter table part_samp_ext add partition (srcnum = 'src1' ) location 
'/home/satoshya/partition_sample/src1';

select * from part_samp_ext;


alter table part_samp_ext drop partition (srcnum = 'src1' );
alter table part_samp_ext drop partition (srcnum = 'src2' );
alter table part_samp_ext drop if exists partition (srcnum = 'src2' );
