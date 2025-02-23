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