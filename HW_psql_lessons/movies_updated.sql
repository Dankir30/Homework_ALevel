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
    birthday_date date,
    director_id integer,
    film_id integer
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
    director_lname character varying(255),
    director_fname character varying(255),
    birth_date date,
    film_id integer,
    actor_id integer,
    film_amount integer
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
    imdb numeric,
    director_id integer,
    actor_id integer
);


ALTER TABLE public.films OWNER TO dankir;

--
-- Name: films_directors; Type: TABLE; Schema: public; Owner: dankir
--

CREATE TABLE public.films_directors (
    film_id integer,
    director_id integer
);


ALTER TABLE public.films_directors OWNER TO dankir;

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

COPY public.actors (actor_id, actor_lastname, actor_firstname, birthday_date, director_id, film_id) FROM stdin;
1	Farrell	Colin	1976-05-31	\N	\N
2	Pitt	Brad	1963-12-18	\N	\N
3	Tennant	David	1971-04-18	\N	\N
4	Sandler	Adam	1966-09-09	\N	\N
5	Barrymore	Drew	1975-02-22	\N	\N
6	Sandler	Adam	1966-09-09	\N	\N
7	Perkins	Antony	1932-04-04	\N	\N
8	Jackman	Hugh	1968-10-12	\N	\N
9	Statham	Jason	1967-07-26	\N	\N
10	Downey Jr.	Robert	1965-04-04	\N	\N
\.


--
-- Data for Name: directors; Type: TABLE DATA; Schema: public; Owner: dankir
--

COPY public.directors (director_id, director_lname, director_fname, birth_date, film_id, actor_id, film_amount) FROM stdin;
1	Dugan	Dennis	1946-09-05	\N	\N	12
3	Ritchie	Guy	1968-10-09	\N	\N	14
4	Nolan	Christopher	1970-07-30	\N	\N	12
5	McDonagh	Martin	1970-03-26	\N	\N	5
6	Hitchcock	Alfred	1899-08-13	\N	\N	36
\.


--
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: dankir
--

COPY public.films (film_id, film_name, director_lastname, director_firstname, release_year, imdb, director_id, actor_id) FROM stdin;
1	Sherlock Holmes	Ritchie	Guy	2009	7.6	3	10
3	The Prestige	Nolan	Chirstopher	2006	8.5	4	8
4	Wrath of Man	Ritchie	Guy	2021	7.1	3	9
6	Grown Up	Dugan	Dennis	2010	7.8	1	6
7	Seven Psychopaths	McDonagh	Martin	2012	7.3	5	1
8	Psycho	Hitchcock	Alfred	1960	8.5	6	7
\.


--
-- Data for Name: films_directors; Type: TABLE DATA; Schema: public; Owner: dankir
--

COPY public.films_directors (film_id, director_id) FROM stdin;
1	3
3	4
4	3
6	1
7	5
8	6
\.


--
-- Name: actors_actor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dankir
--

SELECT pg_catalog.setval('public.actors_actor_id_seq', 10, true);


--
-- Name: directors_director_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dankir
--

SELECT pg_catalog.setval('public.directors_director_id_seq', 6, true);


--
-- Name: films_film_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dankir
--

SELECT pg_catalog.setval('public.films_film_id_seq', 8, true);


--
-- Name: actors unique_actor; Type: CONSTRAINT; Schema: public; Owner: dankir
--

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT unique_actor UNIQUE (actor_id);


--
-- Name: films unique_film; Type: CONSTRAINT; Schema: public; Owner: dankir
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT unique_film UNIQUE (film_id);


--
-- Name: actors fk_actors_films; Type: FK CONSTRAINT; Schema: public; Owner: dankir
--

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT fk_actors_films FOREIGN KEY (film_id) REFERENCES public.films(film_id);


--
-- Name: films fk_films_actors; Type: FK CONSTRAINT; Schema: public; Owner: dankir
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT fk_films_actors FOREIGN KEY (actor_id) REFERENCES public.actors(actor_id);


--
-- PostgreSQL database dump complete
--

