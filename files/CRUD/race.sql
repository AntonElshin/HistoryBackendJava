-- CRUD (CREATE READ UPDATE DELETE) for race

-- insert (CREATE)

/*
  На данный момент всегда добавляем забеги с is_active = true
*/

insert into race (is_active, race_date, race_name, race_city, race_address, description) values
    (true, '2025-02-22 12:00:00.000000', 'Забег настоящих мужчин', 'Москва', 'Перовский сквер', null);

-- selects

/*
  На данный момент всегда ищем забеги, где is_active = true
*/

-- select all (READ)

select
    *
from
    race
where
    is_active = true;

-- select pagination with offset and limit (READ)

-- определяем количество страниц

select ceil( count(*) / 1 ) from race; -- limit = 1

-- передаём в запрос смещение относительно начала или 0 для первой

select
    *
from
    race
where
    is_active = true
offset 0
limit 1;

select
    *
from
    race
where
    is_active = true
offset 1
limit 1;

-- select pagination with where and limit (READ)

-- определяем количество страниц

select ceil( count(*) / 1 ) from race where is_active = true; -- limit = 1

-- передаём в запрос максимальный идентификатор прошлой страницы или 0 для первой

select
    *
from
    race
where
    is_active = true
    and id >= 0
limit 1;

select
    *
from
    race
where
    is_active = true
    and id >= 1
limit 1;


-- select by id (READ)

select
    *
from
    race
where
    id = 1;

-- select by params (READ)

/*
  Если для поиска будет три отдельных поля:
    - дата забега
    - название забега
    - город забега
*/

-- по дате ищем через >= и через <

select
    *
from
    race
where
    is_active = true
    and (
        race_date >= '2025-02-22 00:00:00.000000'
        and race_date < '2025-02-22 23:59:59.999999'
    );

-- или по дате ищем через between

select
    *
from
    race
where
    is_active = true
    and race_date between '2025-02-22 00:00:00.000000' and '2025-02-22 23:59:59.999999';

-- по названию ищем, приводя всё к нижнему регистру через lower

select
    *
from
    race
where
    is_active = true
    and lower(race_name) like '%' || lower('эстафета') || '%';

-- по городу ищем, приводя всё к нижнему регистру через lower

select
    *
from
    race
where
    is_active = true
    and lower(race_city) like '%' || lower('москва') || '%';

-- по дате и названию

select
    *
from
    race
where
    is_active = true
    and race_date between '2025-02-22 00:00:00.000000' and '2025-02-22 23:59:59.999999'
    and lower(race_name) like '%' || lower('эстафета') || '%';

-- по дате и городу

select
    *
from
    race
where
    is_active = true
    and race_date between '2025-02-22 00:00:00.000000' and '2025-02-22 23:59:59.999999'
    and lower(race_city) like '%' || lower('москва') || '%';

-- по названию и городу

select
    *
from
    race
where
    is_active = true
    and lower(race_name) like '%' || lower('эстафета') || '%'
    and lower(race_city) like '%' || lower('москва') || '%';

-- по дате, по названию и по городу

select
    *
from
    race
where
    is_active = true
    and race_date between to_date('20250101', 'yyyymmdd') and to_date('20250401', 'yyyymmdd')
    and lower(race_name) like '%' || lower('эстафета') || '%'
    and lower(race_city) like '%' || lower('москва') || '%';

/*
  Если для поиска будет два отдельных поля:
    - дата забега
    - общая строка поиска для текстовых полей (название и город)
*/

-- по дате ищем через >= и через <

select
    *
from
    race
where
    is_active = true
    and race_date >= '2025-02-22 00:00:00.000000'
    and race_date < '2025-02-22 23:59:59.999999';

-- или по дате ищем через between

select
    *
from
    race
where
    is_active = true
    and race_date between '2025-02-22 00:00:00.000000' and '2025-02-22 23:59:59.999999';

-- по строке поиска

select
    *
from
    race
where
    is_active = true
    and (
        lower(race_name) like '%' || lower('эстафета') || '%'
        or lower(race_city) like '%' || lower('москва') || '%'
    );

-- по дате и строке поиска

select
    *
from
    race
where
    is_active = true
    and race_date between '2025-02-22 00:00:00.000000' and '2025-02-22 23:59:59.999999'
    and (
        lower(race_name) like '%' || lower('эстафета') || '%'
        or lower(race_city) like '%' || lower('москва') || '%'
    );

-- update (UPDATE)

-- обновляем все поля

update race
set
    is_active = true,
    race_date = '2025-02-22 12:00:00.000000',
    race_name = 'Забег настоящих мужчин',
    race_city = 'Москва',
    race_address = 'Перовский сквер',
    description = null
where
    id = 1;

-- обновляем признак активности забега

update race
set
    is_active = true
where
    id = 1;

-- обновляем дату

update race
set
    race_date = '2025-02-22 12:00:00.000000'
where
    id = 1;

-- обновляем название забега

update race
set
    race_name = 'Забег настоящих мужчин'
where
    id = 1;

-- обновляем город забега

update race
set
    race_city = 'Москва'
where
    id = 1;

-- обновляем адрес забега

update race
set
    race_address = 'Перовский сквер'
where
    id = 1;

-- обновляем описание забега

update race
set
    description = null
where
    id = 1;

-- обновляем все комбинации полей: 2 пары, 3 пары, 4 пары со всеми полями

-- delete (DELETE)

delete from race where id = 1;