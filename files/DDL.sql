-- DDL (Data Definition Language)

-- BEFORE DEVELOPMENT

-- create role (user)

create role history_backend_java_admin with
    login
    nosuperuser
    createdb
    nocreaterole
    inherit
    noreplication
    connection limit -1
    password '123';

-- create database

create database history_backend_java
    with
    owner = history_backend_java_admin
    encoding = 'UTF8'
    connection limit = -1;

-- db.url: jdbc:postgresql://localhost:5432/history_backend_java
-- db.username: history_backend_java_admin
-- db.password: 123

-- START DEVELOPMENT

-- create table race

create table race
(
    id bigint not null,
    race_date timestamp without time zone not null,
    race_name varchar(200) not null,
    race_city varchar(100) not null,
    race_address varchar(200) not null,
    description text,
    constraint race_id_pk primary key (id)
);

comment on table race is 'Забеги';
comment on column race.race_date is 'Дата забега';
comment on column race.race_name is 'Название забега';
comment on column race.race_city is 'Город забега';
comment on column race.race_address is 'Адрес забега';
comment on column race.description is 'Описание забега';

-- create table distance

create table distance
(
    id bigint not null,
    distance_name varchar(4) not null,
    entrance_fee numeric,
    racer_limit integer,
    constraint distance_id_pk primary key (id)
);

comment on table distance is 'Дистанции забега';
comment on column distance.distance_name is 'Название дистанции';
comment on column distance.distance_name is 'Сумма вступительного взноса';
comment on column distance.racer_limit is 'Лимит участников';

-- create table registration

create table registration
(
    id bigint not null,
    last_name varchar(100) not null,
    first_name varchar(100) not null,
    middle_name varchar(100) not null,
    birth_date timestamp without time zone not null,
    gender varchar(6) not null,
    email varchar(100) not null,
    mobile_phone varchar(10),
    is_paid boolean not null,
    constraint registration_pk primary key (id)
);

comment on table registration is 'Регистрация на дистанцию забега';
comment on column registration.last_name is 'Фамилия';
comment on column registration.first_name is 'Имя';
comment on column registration.middle_name is 'Отчество';
comment on column registration.birth_date is 'Дата рождения';
comment on column registration.email is 'Адрес электронной почты';
comment on column registration.mobile_phone is 'Номер мобильного телефона';
comment on column registration.is_paid is 'Признак оплаты';

-- drop tables

drop table race;
drop table distance;
drop table registration;