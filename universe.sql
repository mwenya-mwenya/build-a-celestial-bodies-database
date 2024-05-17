--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
    name character varying(50) NOT NULL,
    galaxy_type character varying(50),
    galaxy_age_in_billions numeric(3,2),
    number_of_stars_in_billions integer
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
    name character varying(50) NOT NULL,
    moon_type character varying(50),
    moon_age_in_billions numeric(3,2),
    size_in_billions_tonnes integer,
    fictional boolean,
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
    name character varying(50) NOT NULL,
    planet_type character varying(50),
    planet_age_in_billions numeric(3,2),
    size_in_billions_tonnes integer,
    fictional boolean,
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
-- Name: potential_life_forms; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.potential_life_forms (
    potential_life_forms_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    planet_id integer
);


ALTER TABLE public.potential_life_forms OWNER TO freecodecamp;

--
-- Name: potential_life_forms_life_form__id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.potential_life_forms_life_form__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.potential_life_forms_life_form__id_seq OWNER TO freecodecamp;

--
-- Name: potential_life_forms_life_form__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.potential_life_forms_life_form__id_seq OWNED BY public.potential_life_forms.potential_life_forms_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_type character varying(50),
    star_age_in_billions numeric(3,2),
    size_in_billions_tonnes integer,
    fictional boolean,
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
-- Name: potential_life_forms potential_life_forms_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.potential_life_forms ALTER COLUMN potential_life_forms_id SET DEFAULT nextval('public.potential_life_forms_life_form__id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Spiral galaxy', 1.11, 30);
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxies', 'merging galaxies', 1.15, 30);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 'Barred spiral galaxy', 1.16, 30);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 'Spiral galaxy', 1.11, 30);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 'Spiral galaxy', 1.52, 30);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'Spiral galaxy', 9.63, 30);
INSERT INTO public.galaxy VALUES (7, 'Pinwheel Galaxy', 'Spiral galaxy', 3.33, 30);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Natural satellite', 4.51, 3, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Natural satellite', 4.51, 3, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Natural satellite', 4.51, 3, NULL, 3);
INSERT INTO public.moon VALUES (4, 'Lo', 'Galilean moon', 4.51, 3, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 'Galilean moon', 4.51, 3, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Galilean moon', 4.51, 3, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Titan', 'Regular moon', 4.51, 3, NULL, 1);
INSERT INTO public.moon VALUES (8, 'Enceladus', 'Regular moon', 4.51, 3, NULL, 2);
INSERT INTO public.moon VALUES (9, 'Titania', 'Regular moon', 4.51, 3, NULL, 3);
INSERT INTO public.moon VALUES (10, 'Oberon', 'Regular moon', 4.51, 3, NULL, 4);
INSERT INTO public.moon VALUES (11, 'Triton', 'Natural satellite', 4.51, 3, NULL, 5);
INSERT INTO public.moon VALUES (12, 'Callisto', 'Natural satellite', 4.51, 3, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Palooza', 'Natural satellite', 4.51, 3, NULL, 1);
INSERT INTO public.moon VALUES (14, 'Lysithea', 'Natural satellite', 4.51, 3, NULL, 2);
INSERT INTO public.moon VALUES (15, 'Carme', 'Natural satellite', 4.51, 3, NULL, 3);
INSERT INTO public.moon VALUES (16, 'Ananke', 'Natural satellite', 4.51, 3, NULL, 4);
INSERT INTO public.moon VALUES (17, 'Leda', 'Natural satellite', 4.51, 3, NULL, 5);
INSERT INTO public.moon VALUES (18, 'Thebe', 'Natural satellite', 4.51, 3, NULL, 6);
INSERT INTO public.moon VALUES (19, 'Metis', 'Natural satellite', 4.51, 3, NULL, 1);
INSERT INTO public.moon VALUES (20, 'Adrastea', 'Natural satellite', 4.51, 3, NULL, 2);
INSERT INTO public.moon VALUES (21, 'Themisto', 'Natural satellite', 4.51, 3, NULL, 3);
INSERT INTO public.moon VALUES (22, 'Megaclite', 'Natural satellite', 4.51, 3, NULL, 4);
INSERT INTO public.moon VALUES (23, 'Chaldene', 'Natural satellite', 4.51, 3, NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', 4.50, 9, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', 4.50, 4, false, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', 4.50, 4, false, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', 4.50, 6, false, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas giant planet', 4.50, 7, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas giant planet', 4.50, 2, false, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice giant planet', 4.50, 6, false, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice giant planet', 4.50, 7, false, 4);
INSERT INTO public.planet VALUES (9, 'Titawin', 'Terrestrial', 4.50, 3, false, 1);
INSERT INTO public.planet VALUES (10, 'Upsilon', 'Terrestrial', 4.50, 8, false, 2);
INSERT INTO public.planet VALUES (11, 'Kappa Andromedae', 'Terrestrial', 4.50, 4, false, 3);
INSERT INTO public.planet VALUES (12, 'Nirbiru', 'Terrestrial', 4.50, 100, true, 1);
INSERT INTO public.planet VALUES (13, 'Planet X', 'Terrestrial', 4.50, 99, true, 1);


--
-- Data for Name: potential_life_forms; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.potential_life_forms VALUES (1, 'Greys', 'Roswell incident Grey sometimes green skinned humanoids', 2);
INSERT INTO public.potential_life_forms VALUES (2, 'Nordic aliens', 'Humanoids with stereotypical Nordic features tall, blonde hair and blue eyes', 4);
INSERT INTO public.potential_life_forms VALUES (3, 'Reptilians', 'Ancient astronauts see ancient astronauts in popular culture', 3);
INSERT INTO public.potential_life_forms VALUES (4, 'reptiloids', 'Orion reptilian-humanoid matriarchy see reptilian conspiracy theory', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 'flare', 3.15, 50, false, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'flare', 4.60, 30, false, 2);
INSERT INTO public.star VALUES (3, 'Toliman', 'circumstellar', 3.15, 50, false, 3);
INSERT INTO public.star VALUES (4, 'Rigil Kentaurus', 'circumstellar', 4.60, 30, false, 4);
INSERT INTO public.star VALUES (5, 'Alpha Canis Minoris', 'circumstellar', 3.15, 50, false, 3);
INSERT INTO public.star VALUES (6, 'Epsilon Eridani', 'flare', 4.60, 30, false, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: potential_life_forms_life_form__id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.potential_life_forms_life_form__id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: potential_life_forms potential_life_forms_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.potential_life_forms
    ADD CONSTRAINT potential_life_forms_name_key UNIQUE (name);


--
-- Name: potential_life_forms potential_life_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.potential_life_forms
    ADD CONSTRAINT potential_life_forms_pkey PRIMARY KEY (potential_life_forms_id);


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

