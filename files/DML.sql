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

select * from auto_pk_support;
select * from race;
select * from distance;
select * from registration;

-- inserts into history_backend_java.auto_pk_support

insert into auto_pk_support values
('race', 0),
('distance', 0),
('registration', 0);

-- inserts into race

update auto_pk_support set next_id = next_id + 1 where table_name = 'race' returning next_id;

insert into race (id, race_date, race_name, race_city, race_address, description) values
    (1, to_date('20250222', 'yyyymmdd'), 'Забег настоящих мужчин', 'Москва', 'Перовский сквер', null);

-- inserts into distance

update auto_pk_support set next_id = next_id + 1 where table_name = 'distance' returning next_id;

insert into distance (id, race_id, distance_name, entrance_fee, racer_limit) values
    (1, 1, 'FULL', 1400.00, null);

-- inserts into registration

update auto_pk_support set next_id = next_id + 1 where table_name = 'registration' returning next_id;

insert into registration (id, distance_id, last_name, first_name, middle_name, birth_date, gender, email, mobile_phone, is_paid) values
    (1, 1, 'Петров', 'Василий', 'Александрович', to_date('19850417', 'yyyymmdd'), 'MALE', 'petrov_va@mail.ru', '9999999999', false);

-- deletes

delete from auto_pk_support;
delete from race;
delete from distance;
delete from registration;

