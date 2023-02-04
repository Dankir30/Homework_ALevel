--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: actors; Type: TABLE; Schema: public; Owner: dankir
--

CREATE TABLE public.actors (
    actor_id integer NOT NULL,
    actor_lastname character varying(50),
    actor_firstname character varying(50),
    birthday_date date
);


ALTER TABLE public.actors OWNER TO dankir;

--
-- Name: actors_actor_id_seq; Type: SEQUENCE; Schema: public; Owner: dankir
--

CREATE SEQUENCE public.actors_actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_actor_id_seq OWNER TO dankir;

--
-- Name: actors_actor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dankir
--

ALTER SEQUENCE public.actors_actor_id_seq OWNED BY public.actors.actor_id;


--
-- Name: directors; Type: TABLE; Schema: public; Owner: dankir
--

CREATE TABLE public.directors (
    director_id integer NOT NULL,
    director_lastname character varying(50),
    director_firstname character varying(50),
    birthday_date date,
    films_amount smallint
);


ALTER TABLE public.directors OWNER TO dankir;

--
-- Name: directors_director_id_seq; Type: SEQUENCE; Schema: public; Owner: dankir
--

CREATE SEQUENCE public.directors_director_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directors_director_id_seq OWNER TO dankir;

--
-- Name: directors_director_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dankir
--

ALTER SEQUENCE public.directors_director_id_seq OWNED BY public.directors.director_id;


--
-- Name: films; Type: TABLE; Schema: public; Owner: dankir
--

CREATE TABLE public.films (
    film_id integer NOT NULL,
    film_name character varying(128),
    director_lastname character varying(50),
    director_firstname character varying(50),
    release_year integer,
    imdb numeric
);


ALTER TABLE public.films OWNER TO dankir;

--
-- Name: films_film_id_seq; Type: SEQUENCE; Schema: public; Owner: dankir
--

CREATE SEQUENCE public.films_film_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.films_film_id_seq OWNER TO dankir;

--
-- Name: films_film_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dankir
--

ALTER SEQUENCE public.films_film_id_seq OWNED BY public.films.film_id;


--
-- Name: actors actor_id; Type: DEFAULT; Schema: public; Owner: dankir
--

ALTER TABLE ONLY public.actors ALTER COLUMN actor_id SET DEFAULT nextval('public.actors_actor_id_seq'::regclass);


--
-- Name: directors director_id; Type: DEFAULT; Schema: public; Owner: dankir
--

ALTER TABLE ONLY public.directors ALTER COLUMN director_id SET DEFAULT nextval('public.directors_director_id_seq'::regclass);


--
-- Name: films film_id; Type: DEFAULT; Schema: public; Owner: dankir
--

ALTER TABLE ONLY public.films ALTER COLUMN film_id SET DEFAULT nextval('public.films_film_id_seq'::regclass);


--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: dankir
--

COPY public.actors (actor_id, actor_lastname, actor_firstname, birthday_date) FROM stdin;
1	Farrell	Colin	1976-05-31
2	Pitt	Brad	1963-12-18
3	Tennant	David	1971-04-18
4	Sandler	Adam	1966-09-09
5	Barrymore	Drew	1975-02-22
\.


--
-- Data for Name: directors; Type: TABLE DATA; Schema: public; Owner: dankir
--

COPY public.directors (director_id, director_lastname, director_firstname, birthday_date, films_amount) FROM stdin;
1	Cameron	James	1954-08-16	9
2	Verbinski	Gregor	1964-03-16	13
3	Whedon	Joseph Hill	1964-06-23	24
4	Bay	Michael Benjamin	1965-02-17	39
5	Kubrik	Stanley	1928-07-26	12
\.


--
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: dankir
--

COPY public.films (film_id, film_name, director_lastname, director_firstname, release_year, imdb) FROM stdin;
1	Sherlock Holmes	Ritchie	Guy	2009	7.6
2	Inception	Nolan	Christopher	2010	8.8
3	The Prestige	Nolan	Chirstopher	2006	8.5
4	Wrath of Man	Ritchie	Guy	2021	7.1
5	Revolver	Ritchie	Guy	2005	6.3
\.


--
-- Name: actors_actor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dankir
--

SELECT pg_catalog.setval('public.actors_actor_id_seq', 5, true);


--
-- Name: directors_director_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dankir
--

SELECT pg_catalog.setval('public.directors_director_id_seq', 5, true);


--
-- Name: films_film_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dankir
--

SELECT pg_catalog.setval('public.films_film_id_seq', 5, true);


--
-- PostgreSQL database dump complete
--

