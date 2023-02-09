--
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
    size integer,
    age integer,
    density numeric,
    name character varying(30) NOT NULL,
    source text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age numeric,
    size numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    galaxy_id integer NOT NULL,
    info text NOT NULL,
    name character varying(30),
    more_info_id integer NOT NULL
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    oxygen boolean,
    life boolean,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(30) NOT NULL,
    source text,
    age numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1000000, 14, 1.5, 'Milky Way', 'Wikipedia');
INSERT INTO public.galaxy VALUES (2, 96000, 13, 1.5, 'Messier 81', 'Wikipedia');
INSERT INTO public.galaxy VALUES (3, 60000, 400, 1.5, 'Whirlpool Galaxy', 'Wikipedia');
INSERT INTO public.galaxy VALUES (4, 14000, 1101, 1.5, 'Large Magellanic Cloud', 'Wikipedia');
INSERT INTO public.galaxy VALUES (5, 7000, 1001, 1.5, 'Small Magellanic Cloud', 'Wikipedia');
INSERT INTO public.galaxy VALUES (6, 50000, 13, 1.5, 'Sombrero Galaxy', 'Wikipedia');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, NULL, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, NULL, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'Callisto', NULL, NULL, 2);
INSERT INTO public.moon VALUES (6, 'Io', NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, 'Europa', NULL, NULL, 2);
INSERT INTO public.moon VALUES (8, 'Amalthea', NULL, NULL, 2);
INSERT INTO public.moon VALUES (9, 'Himalia', NULL, NULL, 2);
INSERT INTO public.moon VALUES (10, 'Thebe', NULL, NULL, 2);
INSERT INTO public.moon VALUES (11, 'Elara', NULL, NULL, 2);
INSERT INTO public.moon VALUES (12, 'Pasiphae', NULL, NULL, 2);
INSERT INTO public.moon VALUES (13, 'Metis', NULL, NULL, 2);
INSERT INTO public.moon VALUES (14, 'Carme', NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, 'Sinope', NULL, NULL, 2);
INSERT INTO public.moon VALUES (16, 'Lysithea', NULL, NULL, 2);
INSERT INTO public.moon VALUES (17, 'Anake', NULL, NULL, 2);
INSERT INTO public.moon VALUES (18, 'Leda', NULL, NULL, 2);
INSERT INTO public.moon VALUES (19, 'Adrastea', NULL, NULL, 2);
INSERT INTO public.moon VALUES (20, 'Dia', NULL, NULL, 2);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'en.wikipedia.org/wiki/Earth', 'Earth Information', 1);
INSERT INTO public.more_info VALUES (1, 'en.wikipedia.org/wiki/Sun', 'Sun Information', 2);
INSERT INTO public.more_info VALUES (1, 'en.wikipedia.org/wiki/Moon', 'Luna Information', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (NULL, NULL, 1, 'Earth', NULL, 1);
INSERT INTO public.planet VALUES (NULL, NULL, 2, 'Jupiter', NULL, 1);
INSERT INTO public.planet VALUES (NULL, NULL, 3, 'Saturn', NULL, 1);
INSERT INTO public.planet VALUES (NULL, NULL, 4, 'Mars', NULL, 1);
INSERT INTO public.planet VALUES (NULL, NULL, 5, 'Venus', NULL, 1);
INSERT INTO public.planet VALUES (NULL, NULL, 6, 'Mercury', NULL, 1);
INSERT INTO public.planet VALUES (NULL, NULL, 7, 'Neptune', NULL, 1);
INSERT INTO public.planet VALUES (NULL, NULL, 8, 'Uranus', NULL, 1);
INSERT INTO public.planet VALUES (NULL, NULL, 9, 'Pluto', NULL, 1);
INSERT INTO public.planet VALUES (NULL, NULL, 10, 'Exoplanet 1', NULL, 2);
INSERT INTO public.planet VALUES (NULL, NULL, 11, 'Exoplanet 2', NULL, 2);
INSERT INTO public.planet VALUES (NULL, NULL, 12, 'Exoplanet 3', NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 'Wikipedia', 4603);
INSERT INTO public.star VALUES (2, 1, 'Betelgeuse', 'Wikipedia', 0.01);
INSERT INTO public.star VALUES (3, 1, 'Antares', 'Wikipedia', 0.11);
INSERT INTO public.star VALUES (4, 1, 'VY Canis Majoris', 'Wikipedia', 0.82);
INSERT INTO public.star VALUES (5, 1, 'UY Scuti', 'Wikipedia', 0);
INSERT INTO public.star VALUES (6, 1, 'VY Cephei A', 'Wikipedia', 0);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT id_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_id UNIQUE (star_id);


--
-- Name: more_info unique_info; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT unique_info UNIQUE (info);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


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

