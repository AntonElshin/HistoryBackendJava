-- CRUD (CREATE READ UPDATE DELETE) for registration

-- insert (CREATE)

select racer_limit from distance where id = 5;

-- если racer_limit is null ИЛИ racer_limit > 0, тогда

insert into registration values
    (9, 5, 'Архипова', 'Ольга', 'Михайловна', to_date('20050701', 'yyyymmdd'), 'FEMALE', 'arkhipova_om@mail.ru', '9999999993', false);

    -- если racer_limit > 0

    update distance
    set
      racer_limit = racer_limit - 1
    where
      id = 5;

-- иначе вернуть ошибку или ничего не делать

-- select all (READ)

select
  id,
  distance_id,
  last_name,
  first_name,
  middle_name,
  birth_date,
  gender,
  email,
  mobile_phone,
  is_paid
from
  registration;

-- select pagination with offset and limit (READ)

select
  id,
  distance_id,
  last_name,
  first_name,
  middle_name,
  birth_date,
  gender,
  email,
  mobile_phone,
  is_paid
from
  registration
limit 5
offset 0;

select
  id,
  distance_id,
  last_name,
  first_name,
  middle_name,
  birth_date,
  gender,
  email,
  mobile_phone,
  is_paid
from
  registration
limit 5
offset 1;

-- select pagination with where and limit (READ)

select
  id,
  distance_id,
  last_name,
  first_name,
  middle_name,
  birth_date,
  gender,
  email,
  mobile_phone,
  is_paid
from
  registration
where
  id >= 0
offset 0;

select
  id,
  distance_id,
  last_name,
  first_name,
  middle_name,
  birth_date,
  gender,
  email,
  mobile_phone,
  is_paid
from
  registration
where
  id >= 6
offset 0;

-- select by id (READ)

select
  id,
  distance_id,
  last_name,
  first_name,
  middle_name,
  birth_date,
  gender,
  email,
  mobile_phone,
  is_paid
from
  registration
where
  id = 1;

-- select by params (READ)

select
  id,
  distance_id,
  last_name,
  first_name,
  middle_name,
  birth_date,
  gender,
  email,
  mobile_phone,
  is_paid
from
  registration
where
  distance_id = 1;

select
  id,
  distance_id,
  last_name,
  first_name,
  middle_name,
  birth_date,
  gender,
  email,
  mobile_phone,
  is_paid
from
  registration
where
  distance_id = 1
  and gender = 'MALE';

select
  id,
  distance_id,
  last_name,
  first_name,
  middle_name,
  birth_date,
  gender,
  email,
  mobile_phone,
  is_paid
from
    registration
where
  distance_id = 1
  and is_paid = false;

-- update (UPDATE)

update registration
set
  distance_id = 5,
  last_name = 'Архипова',
  first_name = 'Ольга',
  middle_name = 'Михайловна',
  birth_date = to_date('20050701', 'yyyymmdd'),
  gender = 'FEMALE',
  email = 'arkhipova_om@mail.ru',
  mobile_phone = '9999999993',
  is_paid = false
where
  id = 9;

-- update paid (UPDATE)

update registration
set
  is_paid = true
where
  id = 9;

-- delete (DELETE)

delete from registration where id = 9;

select racer_limit from distance where id = 5;

    -- если racer_limit не null

    update distance
    set
      racer_limit = racer_limit + 1
    where
      id = 5;