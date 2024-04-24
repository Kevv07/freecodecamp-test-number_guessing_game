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
-- Name: game_history; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_history (
    username character varying(22),
    number_of_guesses integer
);


ALTER TABLE public.game_history OWNER TO freecodecamp;

--
-- Data for Name: game_history; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_history VALUES ('user_1713964287287', 740);
INSERT INTO public.game_history VALUES ('user_1713964287287', 299);
INSERT INTO public.game_history VALUES ('user_1713964287286', 590);
INSERT INTO public.game_history VALUES ('user_1713964287286', 969);
INSERT INTO public.game_history VALUES ('user_1713964287287', 622);
INSERT INTO public.game_history VALUES ('user_1713964287287', 895);
INSERT INTO public.game_history VALUES ('user_1713964287287', 587);
INSERT INTO public.game_history VALUES ('user_1713964379478', 62);
INSERT INTO public.game_history VALUES ('user_1713964379478', 5);
INSERT INTO public.game_history VALUES ('user_1713964379477', 308);
INSERT INTO public.game_history VALUES ('user_1713964379477', 993);
INSERT INTO public.game_history VALUES ('user_1713964379478', 9);
INSERT INTO public.game_history VALUES ('user_1713964379478', 691);
INSERT INTO public.game_history VALUES ('user_1713964379478', 69);


--
-- PostgreSQL database dump complete
--

