-- DML (Data Management Language)

/*

  что возвращают DML-операции

  select field_id, field_name from table;                                                     - данные
  insert into table (field_id, field_name) values (id, value);                                - количество добавленных данных
  update table set field_name = value where field_id = id;                                    - количество изменённых данных
  delete from table where field_id = id;                                                      - количество удалённых данных

  insert into table (field_id, field_name) values (id, value) returning field_id, field_name; - данные добавленной строки
  update table set field_name = value where field_id = id returning field_id, field_name;     - данные изменённой строки
  delete from table where field_id = id returning field_id, field_name;                       - данные удалённой строки

*/

-- selects

select * from race;
select * from distance;
select * from registration;

-- inserts into race

select nextval('race_id_seq');

insert into race (race_date, race_name, race_city, race_address, description) values
    (to_date('20250222', 'yyyymmdd'), 'Забег настоящих мужчин', 'Москва', 'Перовский сквер', null);

-- inserts into distance

select nextval('distance_id_seq');

insert into distance (race_id, distance_name, entrance_fee, racer_limit) values
    (1, 'FULL', 1400.00, null);

-- inserts into registration

select nextval('registration_id_seq');

insert into registration (distance_id, last_name, first_name, middle_name, birth_date, gender, email, mobile_phone, is_paid) values
    (1, 'Петров', 'Василий', 'Александрович', to_date('19850417', 'yyyymmdd'), 'MALE', 'petrov_va@mail.ru', '9999999999', false);

-- deletes

delete from race;
delete from distance;
delete from registration;

