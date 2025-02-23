-- CRUD (CREATE READ UPDATE DELETE) for distance

-- insert (CREATE)

insert into distance values
    (1, 1, 'FULL', 1400.00, null);

-- select all (READ)

select
  id,
  race_id,
  distance_name,
  entrance_fee,
  racer_limit
from
  distance;

-- select pagination with offset and limit (READ)

select
  id,
  race_id,
  distance_name,
  entrance_fee,
  racer_limit
from
  distance
limit 3
offset 0;

select
  id,
  race_id,
  distance_name,
  entrance_fee,
  racer_limit
from
  distance
limit 3
offset 1;

-- select pagination with where and limit (READ)

select
  id,
  race_id,
  distance_name,
  entrance_fee,
  racer_limit
from
  distance
where
  id >= 0
limit 3;

select
  id,
  race_id,
  distance_name,
  entrance_fee,
  racer_limit
from
  distance
where
  id >= 4
limit 3;

-- select by id (READ)

select
  id,
  race_id,
  distance_name,
  entrance_fee,
  racer_limit
from
  distance
where
  id = 1;

-- select by params (READ)

select
  id,
  race_id,
  distance_name,
  entrance_fee,
  racer_limit
from
  distance
where
  race_id = 1;

select
  id,
  race_id,
  distance_name,
  entrance_fee,
  racer_limit
from
  distance
where
  distance_name = 'FULL';

select
  id,
  race_id,
  distance_name,
  entrance_fee,
  racer_limit
from
  distance
where
  race_id = 1
  and distance_name = 'FULL';

select
  id,
  race_id,
  distance_name,
  entrance_fee,
  racer_limit
from
  distance
where
  entrance_fee between 600 and 1500;

select
  id,
  race_id,
  distance_name,
  entrance_fee,
  racer_limit
from
  distance
where
  race_id = 2
  and entrance_fee is null;

-- update (UPDATE)

update distance
set
  race_id = 1,
  distance_name = 'FULL',
  entrance_fee = 1400,
  racer_limit = null
where
  id = 1;

-- delete (DELETE)

delete from distance where id = 1;