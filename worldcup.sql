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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(30) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (69, 2018, 'Final', 1091, 1092, 4, 2);
INSERT INTO public.games VALUES (70, 2018, 'Third Place', 1093, 1094, 2, 0);
INSERT INTO public.games VALUES (71, 2018, 'Semi-Final', 1092, 1094, 2, 1);
INSERT INTO public.games VALUES (72, 2018, 'Semi-Final', 1091, 1093, 1, 0);
INSERT INTO public.games VALUES (73, 2018, 'Quarter-Final', 1092, 1095, 3, 2);
INSERT INTO public.games VALUES (74, 2018, 'Quarter-Final', 1094, 1096, 2, 0);
INSERT INTO public.games VALUES (75, 2018, 'Quarter-Final', 1093, 1097, 2, 1);
INSERT INTO public.games VALUES (76, 2018, 'Quarter-Final', 1091, 1098, 2, 0);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 1094, 1099, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 1096, 1100, 1, 0);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 1093, 1101, 3, 2);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 1097, 1102, 2, 0);
INSERT INTO public.games VALUES (81, 2018, 'Eighth-Final', 1092, 1103, 2, 1);
INSERT INTO public.games VALUES (82, 2018, 'Eighth-Final', 1095, 1104, 2, 1);
INSERT INTO public.games VALUES (83, 2018, 'Eighth-Final', 1098, 1105, 2, 1);
INSERT INTO public.games VALUES (84, 2018, 'Eighth-Final', 1091, 1106, 4, 3);
INSERT INTO public.games VALUES (85, 2014, 'Final', 1107, 1106, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Third Place', 1108, 1097, 3, 0);
INSERT INTO public.games VALUES (87, 2014, 'Semi-Final', 1106, 1108, 1, 0);
INSERT INTO public.games VALUES (88, 2014, 'Semi-Final', 1107, 1097, 7, 1);
INSERT INTO public.games VALUES (89, 2014, 'Quarter-Final', 1108, 1109, 1, 0);
INSERT INTO public.games VALUES (90, 2014, 'Quarter-Final', 1106, 1093, 1, 0);
INSERT INTO public.games VALUES (91, 2014, 'Quarter-Final', 1097, 1099, 2, 1);
INSERT INTO public.games VALUES (92, 2014, 'Quarter-Final', 1107, 1091, 1, 0);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 1097, 1110, 2, 1);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 1099, 1098, 2, 0);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 1091, 1111, 2, 0);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 1107, 1112, 2, 1);
INSERT INTO public.games VALUES (97, 2014, 'Eighth-Final', 1108, 1102, 2, 1);
INSERT INTO public.games VALUES (98, 2014, 'Eighth-Final', 1109, 1113, 2, 1);
INSERT INTO public.games VALUES (99, 2014, 'Eighth-Final', 1106, 1100, 1, 0);
INSERT INTO public.games VALUES (100, 2014, 'Eighth-Final', 1093, 1114, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 1091);
INSERT INTO public.teams VALUES ('Croatia', 1092);
INSERT INTO public.teams VALUES ('Belgium', 1093);
INSERT INTO public.teams VALUES ('England', 1094);
INSERT INTO public.teams VALUES ('Russia', 1095);
INSERT INTO public.teams VALUES ('Sweden', 1096);
INSERT INTO public.teams VALUES ('Brazil', 1097);
INSERT INTO public.teams VALUES ('Uruguay', 1098);
INSERT INTO public.teams VALUES ('Colombia', 1099);
INSERT INTO public.teams VALUES ('Switzerland', 1100);
INSERT INTO public.teams VALUES ('Japan', 1101);
INSERT INTO public.teams VALUES ('Mexico', 1102);
INSERT INTO public.teams VALUES ('Denmark', 1103);
INSERT INTO public.teams VALUES ('Spain', 1104);
INSERT INTO public.teams VALUES ('Portugal', 1105);
INSERT INTO public.teams VALUES ('Argentina', 1106);
INSERT INTO public.teams VALUES ('Germany', 1107);
INSERT INTO public.teams VALUES ('Netherlands', 1108);
INSERT INTO public.teams VALUES ('Costa Rica', 1109);
INSERT INTO public.teams VALUES ('Chile', 1110);
INSERT INTO public.teams VALUES ('Nigeria', 1111);
INSERT INTO public.teams VALUES ('Algeria', 1112);
INSERT INTO public.teams VALUES ('Greece', 1113);
INSERT INTO public.teams VALUES ('United States', 1114);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 100, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1114, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

