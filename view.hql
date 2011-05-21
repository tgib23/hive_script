drop view simple_view;

create view if not exists arr (ar) as select * from simple;

create view if not exists simple_view as select * from simple limit 3;

select * from simple_view;
