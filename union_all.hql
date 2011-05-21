set hive.input.format = org.apache.hadoop.hive.ql.io.CombineHiveInputFormat;

select f.num, f.str
from (
	select num as num, str as str
	from insertpart5

	union all

	select num as num, par as str
	from insertpart6
	) f;
