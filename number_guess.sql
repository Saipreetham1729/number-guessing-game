--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    user_id integer NOT NULL,
    guesses integer NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 70);
INSERT INTO public.games VALUES (2, 2, 385);
INSERT INTO public.games VALUES (3, 1, 723);
INSERT INTO public.games VALUES (4, 1, 148);
INSERT INTO public.games VALUES (5, 1, 690);
INSERT INTO public.games VALUES (6, 3, 76);
INSERT INTO public.games VALUES (7, 3, 382);
INSERT INTO public.games VALUES (8, 4, 711);
INSERT INTO public.games VALUES (9, 4, 729);
INSERT INTO public.games VALUES (10, 3, 639);
INSERT INTO public.games VALUES (11, 3, 353);
INSERT INTO public.games VALUES (12, 3, 657);
INSERT INTO public.games VALUES (13, 5, 54);
INSERT INTO public.games VALUES (14, 5, 809);
INSERT INTO public.games VALUES (15, 6, 103);
INSERT INTO public.games VALUES (16, 6, 738);
INSERT INTO public.games VALUES (17, 5, 452);
INSERT INTO public.games VALUES (18, 5, 200);
INSERT INTO public.games VALUES (19, 5, 708);
INSERT INTO public.games VALUES (20, 7, 128);
INSERT INTO public.games VALUES (21, 7, 516);
INSERT INTO public.games VALUES (22, 8, 240);
INSERT INTO public.games VALUES (23, 8, 37);
INSERT INTO public.games VALUES (24, 7, 858);
INSERT INTO public.games VALUES (25, 7, 746);
INSERT INTO public.games VALUES (26, 7, 563);
INSERT INTO public.games VALUES (27, 9, 783);
INSERT INTO public.games VALUES (28, 9, 254);
INSERT INTO public.games VALUES (29, 10, 281);
INSERT INTO public.games VALUES (30, 10, 900);
INSERT INTO public.games VALUES (31, 9, 900);
INSERT INTO public.games VALUES (32, 9, 691);
INSERT INTO public.games VALUES (33, 9, 725);
INSERT INTO public.games VALUES (34, 11, 813);
INSERT INTO public.games VALUES (35, 11, 84);
INSERT INTO public.games VALUES (36, 12, 590);
INSERT INTO public.games VALUES (37, 12, 618);
INSERT INTO public.games VALUES (38, 11, 551);
INSERT INTO public.games VALUES (39, 11, 663);
INSERT INTO public.games VALUES (40, 11, 508);
INSERT INTO public.games VALUES (41, 13, 11);
INSERT INTO public.games VALUES (42, 14, 23);
INSERT INTO public.games VALUES (43, 14, 156);
INSERT INTO public.games VALUES (44, 15, 400);
INSERT INTO public.games VALUES (45, 15, 835);
INSERT INTO public.games VALUES (46, 14, 261);
INSERT INTO public.games VALUES (47, 14, 304);
INSERT INTO public.games VALUES (48, 14, 896);
INSERT INTO public.games VALUES (49, 16, 285);
INSERT INTO public.games VALUES (50, 16, 474);
INSERT INTO public.games VALUES (51, 17, 511);
INSERT INTO public.games VALUES (52, 17, 446);
INSERT INTO public.games VALUES (53, 16, 600);
INSERT INTO public.games VALUES (54, 16, 877);
INSERT INTO public.games VALUES (55, 16, 650);
INSERT INTO public.games VALUES (56, 18, 132);
INSERT INTO public.games VALUES (57, 18, 40);
INSERT INTO public.games VALUES (58, 19, 776);
INSERT INTO public.games VALUES (59, 19, 110);
INSERT INTO public.games VALUES (60, 18, 366);
INSERT INTO public.games VALUES (61, 18, 92);
INSERT INTO public.games VALUES (62, 18, 257);
INSERT INTO public.games VALUES (63, 20, 974);
INSERT INTO public.games VALUES (64, 20, 949);
INSERT INTO public.games VALUES (65, 21, 865);
INSERT INTO public.games VALUES (66, 21, 375);
INSERT INTO public.games VALUES (67, 20, 807);
INSERT INTO public.games VALUES (68, 20, 159);
INSERT INTO public.games VALUES (69, 20, 181);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1782048467966');
INSERT INTO public.users VALUES (2, 'user_1782048467965');
INSERT INTO public.users VALUES (3, 'user_1782048891478');
INSERT INTO public.users VALUES (4, 'user_1782048891477');
INSERT INTO public.users VALUES (5, 'user_1782049010003');
INSERT INTO public.users VALUES (6, 'user_1782049010002');
INSERT INTO public.users VALUES (7, 'user_1782049097497');
INSERT INTO public.users VALUES (8, 'user_1782049097496');
INSERT INTO public.users VALUES (9, 'user_1782049196200');
INSERT INTO public.users VALUES (10, 'user_1782049196199');
INSERT INTO public.users VALUES (11, 'user_1782049220487');
INSERT INTO public.users VALUES (12, 'user_1782049220486');
INSERT INTO public.users VALUES (13, 'Sai');
INSERT INTO public.users VALUES (14, 'user_1782049336513');
INSERT INTO public.users VALUES (15, 'user_1782049336512');
INSERT INTO public.users VALUES (16, 'user_1782049367335');
INSERT INTO public.users VALUES (17, 'user_1782049367334');
INSERT INTO public.users VALUES (18, 'user_1782049388892');
INSERT INTO public.users VALUES (19, 'user_1782049388891');
INSERT INTO public.users VALUES (20, 'user_1782049398916');
INSERT INTO public.users VALUES (21, 'user_1782049398915');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 69, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 21, true);


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

