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
    (to_date('20250222', 'yyyymmdd'), 'Забег настоящих мужчин', 'Москва', 'Перовский сквер', null),
    (to_date('20250301', 'yyyymmdd'), 'Кубковая эстафета "Звёздный путь"', 'Москва', 'Манеж "Спартак"', null);

-- inserts into distance

select nextval('distance_id_seq');

insert into distance (race_id, distance_name, entrance_fee, racer_limit) values
    (1, 'FULL', 1400.00, null),
    (1, 'HALF', 1200.00, null),
    (1, 'TEN', 1000.00, null),
    (1, 'FIVE', 800.00, null),
    (2, 'TEN', null, 5),
    (2, 'FIVE', null, 5);

-- inserts into registration

select nextval('registration_id_seq');

insert into registration (distance_id, last_name, first_name, middle_name, birth_date, gender, email, mobile_phone, is_paid) values
    (3, 'Петров', 'Василий', 'Александрович', to_date('19850417', 'yyyymmdd'), 'MALE', 'petrov_va@mail.ru', '9999999999', false),
    (5, 'Петров', 'Василий', 'Александрович', to_date('19850417', 'yyyymmdd'), 'MALE', 'petrov_va@mail.ru', '9999999999', false),
    (2, 'Сидоров', 'Алексей', 'Михайлович', to_date('19950801', 'yyyymmdd'), 'MALE', 'sidorov_am@mail.ru', '9999999998', false),
    (1, 'Волков', 'Сергей', 'Петрович', to_date('19950801', 'yyyymmdd'), 'MALE', 'volkov_sp@mail.ru', '9999999997', false),
    (5, 'Борисова', 'Екатерина', 'Андреевна', to_date('19970519', 'yyyymmdd'), 'FEMALE', 'borisova_ea@mail.ru', '9999999997', false),
    (6, 'Андреева', 'Дарья', 'Сергеевна', to_date('19911112', 'yyyymmdd'), 'FEMALE', 'andreeva_ds@mail.ru', '9999999996', false),
    (5, 'Смирнова', 'Татьяна', 'Васильевна', to_date('20010130', 'yyyymmdd'), 'FEMALE', 'smirnova_tv@mail.ru', '9999999995', false),
    (5, 'Кузнецова', 'Надежда', 'Игоревна', to_date('20020217', 'yyyymmdd'), 'FEMALE', 'kuznetsova_ni@mail.ru', '9999999994', false),
    (5, 'Архипова', 'Ольга', 'Михайловна', to_date('20050701', 'yyyymmdd'), 'FEMALE', 'arkhipova_om@mail.ru', '9999999993', false);

-- deletes

delete from race;
delete from distance;
delete from registration;

