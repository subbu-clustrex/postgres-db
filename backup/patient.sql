SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

CREATE DATABASE hospital;

\c hospital;

SET search_path to PUBLIC;

CREATE SEQUENCE patient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

Create Table patients (
id integer DEFAULT nextval('patient_id_seq'::regclass) NOT NULL,
created_at timestamp with time zone DEFAULT now(),
deleted_at timestamp with time zone,
updated_at timestamp with time zone,
first_name varchar(100),
last_name varchar(100),
state varchar(50),
city varchar(50),
phone_number varchar(50),
pincode varchar(15),
PRIMARY KEY(id));
