
set hive.map.aggr=false;
select count(*) from events;

set hive.map.aggr=true;

select count(*) from events;
