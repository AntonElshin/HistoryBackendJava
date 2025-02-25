-- DML (Data Management Language)

-- selects

select * from race;
select * from distance;
select * from registration;

-- inserts into race

insert into race (id, is_active, race_date, race_name, race_city, race_address, description) values
    (1, true, '2025-02-22 12:00:00.000000', 'Забег настоящих мужчин', 'Москва', 'Перовский сквер', null);

-- inserts into distance

insert into distance (id, distance_name, entrance_fee, entrance_currency, racer_limit) values
    (1, 'FULL', 1400.00, 'RUB', null);

-- inserts into registration

insert into registration (id, creation_date, status, last_name, first_name, middle_name, birth_date, gender, email, mobile_phone, delete_reason) values
    (1, '2025-02-01 15:16:01.000000', 'PENDING_PAYMENT', 'Петров', 'Василий', 'Александрович', to_date('19850417', 'yyyymmdd'), 'MALE', 'petrov_va@mail.ru', '9999999999', null);

-- deletes

delete from race;
delete from distance;
delete from registration;