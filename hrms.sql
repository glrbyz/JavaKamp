-- This script was generated by a beta version of the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE public."SystemPersonels"
(
    user_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    "title " character varying(20) NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE public."Users"
(
    password character varying(50) NOT NULL,
    id integer NOT NULL,
    email character varying(50) NOT NULL,
    email_verified boolean NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE public.employees
(
    user_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    nationality_id character varying(11) NOT NULL,
    birth_date date NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE public.employers
(
    user_id integer NOT NULL,
    company_name character varying(50) NOT NULL,
    web_site character varying(100) NOT NULL,
    phone character varying(20) NOT NULL,
    verify_by_system boolean NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE public.jobs
(
    id integer NOT NULL,
    jo_names character varying(50) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE public.employees
    ADD FOREIGN KEY (user_id)
    REFERENCES public."Users" (id)
    NOT VALID;


ALTER TABLE public."SystemPersonels"
    ADD FOREIGN KEY (user_id)
    REFERENCES public."Users" (id)
    NOT VALID;


ALTER TABLE public.employers
    ADD FOREIGN KEY (user_id)
    REFERENCES public."Users" (id)
    NOT VALID;

END;
