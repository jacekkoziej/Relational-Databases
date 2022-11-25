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

 Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp


CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF
-8';


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


 Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp


CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30),
    diameter numeric NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;


 Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp


CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;


 Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp


CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;


 Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp


CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    planet_types text,
    has_life boolean,
    is_spherical boolean,
    description text,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;


 Name: star; Type: TABLE; Schema: public; Owner: freecodecamp


CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;


 Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp


INSERT INTO public.asteroid VALUES (1, 'Duża', 150000);
INSERT INTO public.asteroid VALUES (2, 'Średnia', 150000);
INSERT INTO public.asteroid VALUES (3, 'Mała', 150000);



 Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp


INSERT INTO public.galaxy VALUES (1, 'Droga mleczna', 500, NULL, 'Galaktyka w której znajduje się Słońce');
INSERT INTO public.galaxy VALUES (2, 'galaktyka obca', 343124, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'alien galactic', 123, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, NULL, 0, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, NULL, 0, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, NULL, 0, NULL, NULL);



 Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp


INSERT INTO public.moon VALUES (1, 'Księżyc', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Księżyc Merkurego', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Księżyc Marsa', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, NULL, 2);



 Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp


INSERT INTO public.planet VALUES (1, 'Ziemia', NULL, NULL, NULL, true, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Merkury', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Mars', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);



 Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp


INSERT INTO public.star VALUES (1, 'Gwiazda północna', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Słońce', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Obca', NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (4, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, NULL, NULL, NULL, NULL, 1);



 Name: asteroid asteroid_asteroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp


ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_asteroid_id_key UNIQUE (asteroid_id);



 Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp


ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);



 Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp


ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);



 Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp


ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);



 Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp


ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);



 Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp


ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);



 Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp


ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);



 Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp


ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);



 Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp


ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);



 Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp


ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);



 Name: star star_star_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp


ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key1 UNIQUE (star_id);



 Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp


ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);



 Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp


ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);