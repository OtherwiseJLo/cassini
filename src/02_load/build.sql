drop table if exists master_plan;
create table master_plan(
    start_time_utc text,
    duration text,
    date text,
    team text,
    spass_type text,
    target text,
    request_name text,
    library_definition text,
    title text,
    description text
);

COPY master_plan
FROM '/home/jlopez/git/cassini/curious_data/data/master_plan_linux.csv'
WITH DELIMITER ',' HEADER CSV;
