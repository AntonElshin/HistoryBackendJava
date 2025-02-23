-- CRUD (CREATE READ UPDATE DELETE) for race

-- insert (CREATE)

insert into race (race_date, race_name, race_city, race_address, description) values
    (to_date('20250222', 'yyyymmdd'), 'Забег настоящих мужчин', 'Москва', 'Перовский сквер', null);

-- select all (READ)

select
  id,
  race_date,
  race_name,
  race_city,
  race_address,
  description
from
  race;

-- select pagination with offset and limit (READ)

select
  id,
  race_date,
  race_name,
  race_city,
  race_address,
  description
from
  race
offset 0
limit 1;

select
  id,
  race_date,
  race_name,
  race_city,
  race_address,
  description
from
  race
offset 1
limit 1;

-- select pagination with where and limit (READ)

select
  id,
  race_date,
  race_name,
  race_city,
  race_address,
  description
from
  race
where
  id >= 0
limit 1;

select
  id,
  race_date,
  race_name,
  race_city,
  race_address,
  description
from
  race
where
  id >= 1
limit 1;

-- select by id (READ)

select
  id,
  race_date,
  race_name,
  race_city,
  race_address,
  description
from
  race
where
  id = 1;

-- select by params (READ)

select
  id,
  race_date,
  race_name,
  race_city,
  race_address,
  description
from
  race
where
  race_date = to_date('20250301', 'yyyymmdd');

select
  id,
  race_date,
  race_name,
  race_city,
  race_address,
  description
from
  race
where
  lower(race_name) like '%эстафета%';

select
  id,
  race_date,
  race_name,
  race_city,
  race_address,
  description
from
  race
where
  lower(race_city) like '%москва%';

select
  id,
  race_date,
  race_name,
  race_city,
  race_address,
  description
from
  race
where
  race_date = to_date('20250301', 'yyyymmdd')
  and lower(race_name) like '%эстафета%';

select
  id,
  race_date,
  race_name,
  race_city,
  race_address,
  description
from
  race
where
  race_date = to_date('20250301', 'yyyymmdd')
  and lower(race_city) like '%москва%';

select
  id,
  race_date,
  race_name,
  race_city,
  race_address,
  description
from
  race
where
  race_date between to_date('20250101', 'yyyymmdd') and to_date('20250401', 'yyyymmdd');

select
  id,
  race_date,
  race_name,
  race_city,
  race_address,
  description
from
  race
where
  race_date between to_date('20250101', 'yyyymmdd') and to_date('20250401', 'yyyymmdd')
  and lower(race_city) like '%москва%';

-- update (UPDATE)

update race
set
  race_date = to_date('20250222', 'yyyymmdd'),
  race_name = 'Забег настоящих мужчин',
  race_city = 'Москва',
  race_address = 'Перовский сквер',
  description = null
where
  id = 1;

-- delete (DELETE)

delete from race where id = 1;
