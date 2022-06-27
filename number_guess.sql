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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(100) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (22, 14, 32);
INSERT INTO public.games VALUES (23, 940, 33);
INSERT INTO public.games VALUES (24, 424, 33);
INSERT INTO public.games VALUES (25, 143, 34);
INSERT INTO public.games VALUES (26, 622, 34);
INSERT INTO public.games VALUES (27, 651, 33);
INSERT INTO public.games VALUES (28, 853, 33);
INSERT INTO public.games VALUES (29, 886, 33);
INSERT INTO public.games VALUES (30, 321, 35);
INSERT INTO public.games VALUES (31, 256, 35);
INSERT INTO public.games VALUES (32, 381, 36);
INSERT INTO public.games VALUES (33, 261, 36);
INSERT INTO public.games VALUES (34, 80, 35);
INSERT INTO public.games VALUES (35, 9, 35);
INSERT INTO public.games VALUES (36, 91, 35);
INSERT INTO public.games VALUES (37, 716, 37);
INSERT INTO public.games VALUES (38, 785, 37);
INSERT INTO public.games VALUES (39, 453, 38);
INSERT INTO public.games VALUES (40, 188, 38);
INSERT INTO public.games VALUES (41, 335, 37);
INSERT INTO public.games VALUES (42, 679, 37);
INSERT INTO public.games VALUES (43, 211, 37);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (12, 'Lukas');
INSERT INTO public.users VALUES (13, 'user_1656344669261');
INSERT INTO public.users VALUES (14, 'user_1656344669260');
INSERT INTO public.users VALUES (15, 'user_1656344687812');
INSERT INTO public.users VALUES (16, 'user_1656344687811');
INSERT INTO public.users VALUES (17, 'user_1656344727094');
INSERT INTO public.users VALUES (18, 'user_1656344727093');
INSERT INTO public.users VALUES (19, 'user_1656345184808');
INSERT INTO public.users VALUES (20, 'user_1656345184807');
INSERT INTO public.users VALUES (21, 'user_1656345203325');
INSERT INTO public.users VALUES (22, 'user_1656345203324');
INSERT INTO public.users VALUES (23, 'user_1656345218465');
INSERT INTO public.users VALUES (24, 'user_1656345218464');
INSERT INTO public.users VALUES (25, 'Uy');
INSERT INTO public.users VALUES (26, 'user_1656345410548');
INSERT INTO public.users VALUES (27, 'user_1656345410547');
INSERT INTO public.users VALUES (28, 'user_1656345423361');
INSERT INTO public.users VALUES (29, 'user_1656345423360');
INSERT INTO public.users VALUES (30, 'user_1656345486185');
INSERT INTO public.users VALUES (31, 'user_1656345486184');
INSERT INTO public.users VALUES (32, 'Oi');
INSERT INTO public.users VALUES (33, 'user_1656345677432');
INSERT INTO public.users VALUES (34, 'user_1656345677431');
INSERT INTO public.users VALUES (35, 'user_1656345701316');
INSERT INTO public.users VALUES (36, 'user_1656345701315');
INSERT INTO public.users VALUES (37, 'user_1656345734295');
INSERT INTO public.users VALUES (38, 'user_1656345734294');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 43, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 38, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

