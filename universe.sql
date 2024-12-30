--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance_from_milky integer,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    description character varying(50),
    age integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    diameter numeric(3,1),
    approx_age integer,
    has_life boolean,
    star_id integer NOT NULL,
    solar_systems_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: solar_systems; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_systems (
    solar_systems_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.solar_systems OWNER TO freecodecamp;

--
-- Name: solar_systems_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_systems_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_systems_id_seq OWNER TO freecodecamp;

--
-- Name: solar_systems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_systems_id_seq OWNED BY public.solar_systems.solar_systems_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age integer,
    galaxy_id integer NOT NULL,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: solar_systems solar_systems_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_systems ALTER COLUMN solar_systems_id SET DEFAULT nextval('public.solar_systems_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'ours', 'this da mily way', 0, true);
INSERT INTO public.galaxy VALUES (4, 'far_away', NULL, 0, false);
INSERT INTO public.galaxy VALUES (6, 'end', NULL, 0, false);
INSERT INTO public.galaxy VALUES (2, 'yours', 'jibber jabber', 2348, false);
INSERT INTO public.galaxy VALUES (5, 'neighbors', 'chirp chirp', 2235258, false);
INSERT INTO public.galaxy VALUES (3, 'aliens', 'hello from not earth', 225248, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (10, 'big moon', 24, 'sdlsgs', 426);
INSERT INTO public.moon VALUES (11, 'small moon
', 14, NULL, 235);
INSERT INTO public.moon VALUES (12, 'tiny moon', 15, 'sodtgwr', 209);
INSERT INTO public.moon VALUES (13, 'THE moon', 16, 'our moon', 9352);
INSERT INTO public.moon VALUES (14, 'XD0GN', 22, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'SOG V', 24, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'OWGE', 13, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'osn nmwr', 14, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'W{PET', 20, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'LOL', 21, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'XD', 13, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'POP', 15, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'lockk', 16, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'drop', 15, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'hello', 20, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'si9L', 21, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'D', 13, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'other moon', 15, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'lock', 16, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'ikk-39', 15, NULL, NULL);
INSERT INTO public.moon VALUES (30, 'sfd', 20, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'planet_1', 9.0, 235, false, 2, 1);
INSERT INTO public.planet VALUES (14, 'planet_2', NULL, NULL, false, 3, 3);
INSERT INTO public.planet VALUES (15, 'planet_3', 3.3, 50, false, 10, 2);
INSERT INTO public.planet VALUES (16, 'Earth', 7.2, 103, true, 12, 1);
INSERT INTO public.planet VALUES (17, 'Venus', 92.8, 232, false, 12, 1);
INSERT INTO public.planet VALUES (18, 'Mars', 3.2, 2, true, 12, 1);
INSERT INTO public.planet VALUES (19, 'Jupiter', 29.3, 232, false, 12, 1);
INSERT INTO public.planet VALUES (20, 'Uranus', 98.2, 30, false, 12, 1);
INSERT INTO public.planet VALUES (21, 'Saturn', 2.5, 25, false, 12, 1);
INSERT INTO public.planet VALUES (22, 'planet_4', NULL, NULL, false, 5, 2);
INSERT INTO public.planet VALUES (23, 'planet_5', NULL, NULL, false, 6, 2);
INSERT INTO public.planet VALUES (24, 'planet_6', NULL, NULL, true, 4, 3);


--
-- Data for Name: solar_systems; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_systems VALUES (1, 'this', NULL);
INSERT INTO public.solar_systems VALUES (2, 'that', NULL);
INSERT INTO public.solar_systems VALUES (3, 'other', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'HSR-2h', 2309, 1, NULL);
INSERT INTO public.star VALUES (2, 'SOEJ-78g', 23094, 1, NULL);
INSERT INTO public.star VALUES (3, 'UYQE', 8534, 3, NULL);
INSERT INTO public.star VALUES (4, 'P-39', 9345, 4, NULL);
INSERT INTO public.star VALUES (5, 'Y-84', NULL, 5, NULL);
INSERT INTO public.star VALUES (6, 'ESO-43', NULL, 6, NULL);
INSERT INTO public.star VALUES (7, 'I-089', 82340, 3, NULL);
INSERT INTO public.star VALUES (8, 'UTO', 345, 2, NULL);
INSERT INTO public.star VALUES (9, 'POIU', NULL, 4, NULL);
INSERT INTO public.star VALUES (10, 'KUO', 823, 6, NULL);
INSERT INTO public.star VALUES (11, 'OLLIKW', 653, 3, NULL);
INSERT INTO public.star VALUES (12, 'Mine', NULL, 1, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 30, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 24, true);


--
-- Name: solar_systems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_systems_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 12, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solar_systems solar_systems_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_systems
    ADD CONSTRAINT solar_systems_name_key UNIQUE (name);


--
-- Name: solar_systems solar_systems_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_systems
    ADD CONSTRAINT solar_systems_pkey PRIMARY KEY (solar_systems_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_solar_system_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_solar_system_fkey FOREIGN KEY (solar_systems_id) REFERENCES public.solar_systems(solar_systems_id);


--
-- Name: planet planet_sun_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_sun_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

