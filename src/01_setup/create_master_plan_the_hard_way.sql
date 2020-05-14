drop table if exists master_plan;
create table master_plan(
    id integer not null,
    the_date date,
    title varchar(100),
    description text
);

create sequence master_plan_id_seq;
alter table master_plan
alter column id set default nextval('master_plan_id_seq');
alter table master_plan
add constraint master_plan_pk primary key (id);
