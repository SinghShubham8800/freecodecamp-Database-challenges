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
-- Name: celestialobject; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestialobject (
    celestialobject_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text,
    description text
);


ALTER TABLE public.celestialobject OWNER TO freecodecamp;

--
-- Name: celestialobject_celestialobject_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestialobject_celestialobject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestialobject_celestialobject_id_seq OWNER TO freecodecamp;

--
-- Name: celestialobject_celestialobject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestialobject_celestialobject_id_seq OWNED BY public.celestialobject.celestialobject_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_million_light_year numeric(7,4),
    galaxy_age_million_years integer,
    has_black_hole boolean,
    number_of_stars character varying(20),
    galaxy_code character(3)
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet text,
    diameter_in_km numeric(10,4),
    distance_from_planet_in_km integer,
    atmosphere_yes_or_no boolean,
    planet_id integer
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
    name character varying(30) NOT NULL,
    type text,
    star text,
    distance_from_star_au numeric(8,3),
    has_life boolean,
    star_id integer
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
    name character varying(30) NOT NULL,
    type text,
    temperature_in_k integer,
    age_billion_years numeric(9,4),
    galaxy_id integer
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
-- Name: celestialobject celestialobject_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestialobject ALTER COLUMN celestialobject_id SET DEFAULT nextval('public.celestialobject_celestialobject_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: celestialobject; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestialobject VALUES (1, 'Andromeda', 'Galaxy', 'The closest spiral galaxy to the Milky Way.');
INSERT INTO public.celestialobject VALUES (2, 'Proxima Centauri', 'Star', 'The closest star to Earth, part of the Alpha Centauri system.');
INSERT INTO public.celestialobject VALUES (3, 'Earth', 'Planet', 'The third planet from the Sun, capable of supporting life.');
INSERT INTO public.celestialobject VALUES (4, 'Titan', 'Moon', 'A moon of Saturn, known for its thick atmosphere and lakes of liquid methane.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0.0000, 14, true, '100–400 Billion', 'MW ');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2.5370, 10, true, '1 Trillion', 'AD ');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 2.7300, 12, false, '40 Billion', 'TG ');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 23.0000, 9, true, '100 Billion', 'WP ');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 28.0000, 8, false, '80 Billion', 'SB ');
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 53.5000, 10, true, '120 Billion', 'M87');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth', 3474.0000, 384400, false, 13);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars', 22.2000, 9378, false, 14);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars', 12.4000, 23460, false, 14);
INSERT INTO public.moon VALUES (4, 'Io', 'Jupiter', 3643.0000, 421700, true, 16);
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiter', 3121.0000, 670900, true, 16);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Jupiter', 5268.0000, 1070400, true, 16);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Jupiter', 4800.0000, 1882700, true, 16);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn', 5150.0000, 1222000, true, 17);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Saturn', 1528.0000, 527040, true, 17);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Saturn', 1469.0000, 3561300, false, 17);
INSERT INTO public.moon VALUES (11, 'Mimas', 'Saturn', 396.0000, 185520, false, 17);
INSERT INTO public.moon VALUES (12, 'Enceladus', 'Saturn', 504.0000, 237950, true, 17);
INSERT INTO public.moon VALUES (13, 'Triton', 'Neptune', 2706.0000, 355000, true, 19);
INSERT INTO public.moon VALUES (14, 'Charon', 'Pluto', 1212.0000, 195900, true, 21);
INSERT INTO public.moon VALUES (15, 'Miranda', 'Uranus', 471.0000, 129200, true, 18);
INSERT INTO public.moon VALUES (16, 'Ariel', 'Uranus', 1150.0000, 190900, true, 18);
INSERT INTO public.moon VALUES (17, 'Umbriel', 'Uranus', 1170.0000, 266000, true, 18);
INSERT INTO public.moon VALUES (18, 'Titania', 'Uranus', 1578.0000, 436300, true, 18);
INSERT INTO public.moon VALUES (19, 'Oberon', 'Uranus', 1523.0000, 583500, true, 18);
INSERT INTO public.moon VALUES (20, 'Cyllene', 'Jupiter', 22.8000, 292500, false, 16);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Earth', 'Terrestrial', 'Sun', 1.000, true, 1);
INSERT INTO public.planet VALUES (14, 'Mars', 'Terrestrial', 'Sun', 1.500, false, 1);
INSERT INTO public.planet VALUES (15, 'Venus', 'Terrestrial', 'Sun', 0.720, false, 1);
INSERT INTO public.planet VALUES (16, 'Jupiter', 'Gas Giant', 'Sun', 5.200, false, 1);
INSERT INTO public.planet VALUES (17, 'Saturn', 'Gas Giant', 'Sun', 9.500, false, 1);
INSERT INTO public.planet VALUES (18, 'Uranus', 'Ice Giant', 'Sun', 19.800, false, 1);
INSERT INTO public.planet VALUES (19, 'Neptune', 'Ice Giant', 'Sun', 30.100, false, 1);
INSERT INTO public.planet VALUES (20, 'Proxima b', 'Exoplanet', 'Proxima', 0.050, false, 4);
INSERT INTO public.planet VALUES (21, 'Kepler-22b', 'Exoplanet', 'Unknown', 0.850, false, 5);
INSERT INTO public.planet VALUES (22, 'Kepler-62f', 'Exoplanet', 'Unknown', 0.450, false, 5);
INSERT INTO public.planet VALUES (23, 'HD 209458 b', 'Hot Jupiter', 'Unknown', 0.047, false, 6);
INSERT INTO public.planet VALUES (24, 'Mercury', 'Terrestrial', 'Sun', 0.390, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type Main', 5778, 4.6000, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'A-type Main', 9940, 0.2400, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red Supergiant', 3500, 8.0000, 1);
INSERT INTO public.star VALUES (4, 'Proxima', 'Red Dwarf', 3042, 4.8500, 2);
INSERT INTO public.star VALUES (5, 'Rigel', 'Blue Supergiant', 12000, 8.5000, 3);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 'G-type Main', 5790, 5.5000, 2);


--
-- Name: celestialobject_celestialobject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestialobject_celestialobject_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: celestialobject celestialobject_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestialobject
    ADD CONSTRAINT celestialobject_name_key UNIQUE (name);


--
-- Name: celestialobject celestialobject_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestialobject
    ADD CONSTRAINT celestialobject_pkey PRIMARY KEY (celestialobject_id);


--
-- Name: galaxy galaxy_galaxy_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_code_key UNIQUE (galaxy_code);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

