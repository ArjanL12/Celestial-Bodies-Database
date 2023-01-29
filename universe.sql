--f
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying NOT NULL,
    size integer,
    age integer,
    description text,
    has_water boolean,
    fla text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.holes (
    holes_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    size integer,
    fla text
);


ALTER TABLE public.holes OWNER TO freecodecamp;

--
-- Name: holes_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.holes_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.holes_hole_id_seq OWNER TO freecodecamp;

--
-- Name: holes_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.holes_hole_id_seq OWNED BY public.holes.holes_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    size integer,
    has_air boolean,
    fla text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    star_id integer NOT NULL,
    size integer,
    has_water boolean,
    sphere boolean,
    triangle boolean,
    fla text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer NOT NULL,
    age numeric,
    description text,
    has_air boolean,
    fla text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: holes holes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.holes ALTER COLUMN holes_id SET DEFAULT nextval('public.holes_hole_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Trianagulum', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.holes VALUES (1, 'a', 1, 1, NULL);
INSERT INTO public.holes VALUES (2, 'b', 1, 1, NULL);
INSERT INTO public.holes VALUES (3, 'c', 1, 1, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Mimias', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Tethys', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Dione', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Rhea', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Titan', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Hyperion', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Iapetus', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Phoebe', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Janus', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Epimetheus', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Helene', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Telesto', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Calypso', 7, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Proxima b', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Alpha Centauri B b', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Betelgeuse b', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Antares b', 5, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 2, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Antares', 2, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'VY Canis Majoris', 3, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Pollux', 4, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Regulus', 5, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (9, 'Deneb', 6, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (10, 'Vega', 6, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (11, 'Altair', 6, NULL, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: holes_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.holes_hole_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: galaxy galaxy_fla_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_fla_key UNIQUE (fla);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: holes holes_fla_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.holes
    ADD CONSTRAINT holes_fla_key UNIQUE (fla);


--
-- Name: holes holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.holes
    ADD CONSTRAINT holes_pkey PRIMARY KEY (holes_id);


--
-- Name: moon moon_fla_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fla_key UNIQUE (fla);


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
-- Name: planet planet_fla_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fla_key UNIQUE (fla);


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
-- Name: star star_fla_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fla_key UNIQUE (fla);


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
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

