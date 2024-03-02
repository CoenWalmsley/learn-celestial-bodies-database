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
    age integer NOT NULL,
    distance_from_earth integer,
    has_life boolean,
    constrain name
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    colour character varying(10),
    planet_id integer,
    distance_from_home_planet numeric(2,0)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life boolean,
    planet_type text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.species (
    species_id integer NOT NULL,
    name character varying(30) NOT NULL,
    life_form character varying(30) NOT NULL,
    is_extinct boolean,
    planet_id integer
);


ALTER TABLE public.species OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer,
    life_status text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 220000000, 2540000, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 130000000, 0, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 500000000, 3040000, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 525000000, 54600000, false, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 110000000, 3120000, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 290000000, 29000000, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Grey', 1, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Yellow', 2, 1);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Red', 2, 2);
INSERT INTO public.moon VALUES (4, 'Io', 'Yellow', 3, 1);
INSERT INTO public.moon VALUES (5, 'Europa', 'White', 3, 2);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Brown', 3, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Grey', 3, 4);
INSERT INTO public.moon VALUES (8, 'Mimas', 'Grey', 4, 1);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'White', 4, 2);
INSERT INTO public.moon VALUES (10, 'Tethys', 'White', 4, 3);
INSERT INTO public.moon VALUES (11, 'Dione', 'White', 4, 4);
INSERT INTO public.moon VALUES (12, 'Rhea', 'Brown', 4, 5);
INSERT INTO public.moon VALUES (13, 'Titan', 'Orange', 4, 6);
INSERT INTO public.moon VALUES (14, 'Iapetus', 'Brown', 4, 7);
INSERT INTO public.moon VALUES (15, 'Miranda', 'Grey', 5, 1);
INSERT INTO public.moon VALUES (16, 'Ariel', 'Blue', 5, 2);
INSERT INTO public.moon VALUES (17, 'Umbriel', 'Brown', 5, 3);
INSERT INTO public.moon VALUES (18, 'Titania', 'Brown', 5, 4);
INSERT INTO public.moon VALUES (19, 'Oberon', 'Brown', 5, 5);
INSERT INTO public.moon VALUES (20, 'Triton', 'Pink', 6, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', false, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (5, 'Saturn', false, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (6, 'Uranus', false, 'Ice Giant', 1);
INSERT INTO public.planet VALUES (7, 'Neptune', false, 'Ice Giant', 1);
INSERT INTO public.planet VALUES (8, 'Mercury', false, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', true, 'Terrestrial', 2);
INSERT INTO public.planet VALUES (10, 'HD 209458 b', false, 'Gas Giant', 2);
INSERT INTO public.planet VALUES (11, 'Gliese 581 c', true, 'Terrestrial', 2);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri b', true, 'Terrestrial', 2);


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.species VALUES (1, 'Human', 'Mammal', false, 1);
INSERT INTO public.species VALUES (2, 'Vulcan', 'Humanoid', false, 2);
INSERT INTO public.species VALUES (3, 'Klingon', 'Humanoid', false, 2);
INSERT INTO public.species VALUES (4, 'Wookiee', 'Mammal', false, 3);
INSERT INTO public.species VALUES (5, 'Ewok', 'Mammal', false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600000, 'Main Sequence', 2);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 6000000, 'Main Sequence', 2);
INSERT INTO public.star VALUES (3, 'Sirius', 250000, 'Main Sequence', 2);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 8000, 'Red Giant', 2);
INSERT INTO public.star VALUES (5, 'Vega', 450000, 'Main Sequence', 2);
INSERT INTO public.star VALUES (6, 'Canopus', 80000, 'Main Sequence', 2);


--
-- Name: galaxy galaxy_constrain_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constrain_key UNIQUE (constrain);


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
-- Name: species species_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_name_key UNIQUE (name);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (species_id);


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
-- Name: species species_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

