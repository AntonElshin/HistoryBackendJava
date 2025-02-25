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

create table if not exists race
(
    id bigint,
    is_active boolean,
    race_date timestamp without time zone,
    race_name varchar(100),
    race_city varchar(100),
    race_address varchar(200),
    description text
);

-- create table distance

create table if not exists distance
(
    id bigint,
    distance_name varchar(4),
    entrance_fee numeric,
    entrance_currency varchar(3),
    racer_limit integer
);

-- create table registration

create table if not exists registration
(
    id bigint,
    creation_date timestamp without time zone,
    status varchar(20),
    last_name varchar(100),
    first_name varchar(100),
    middle_name varchar(100),
    birth_date timestamp without time zone,
    gender varchar(6),
    email varchar(100),
    mobile_phone varchar(10),
    delete_reason varchar(20)
);

-- drop tables

drop table race;
drop table distance;
drop table registration;