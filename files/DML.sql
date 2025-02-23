-- DML (Data Management Language)

-- selects

select * from race;
select * from distance;
select * from registration;

-- inserts into race

insert into race (id, race_date, race_name, race_city, race_address, description) values
    (1, to_date('20250222', 'yyyymmdd'), 'Забег настоящих мужчин', 'Москва', 'Перовский сквер', null);

-- inserts into distance

insert into distance (id, race_id, distance_name, entrance_fee, racer_limit) values
    (1, 1, 'FULL', 1400.00, null);

-- inserts into registration

insert into registration (id, distance_id, last_name, first_name, middle_name, birth_date, gender, email, mobile_phone, is_paid) values
    (1, 1, 'Петров', 'Василий', 'Александрович', to_date('19850417', 'yyyymmdd'), 'MALE', 'petrov_va@mail.ru', '9999999999', false);

-- deletes

delete from race;
delete from distance;
delete from registration;

