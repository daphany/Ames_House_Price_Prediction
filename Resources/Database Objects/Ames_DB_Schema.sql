--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

-- Started on 2020-11-13 19:38:57

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
-- TOC entry 204 (class 1259 OID 18116)
-- Name: ames; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ames (
    ames_order integer NOT NULL,
    pid character varying NOT NULL,
    mssubclass character varying,
    mszoning character varying,
    lotarea integer,
    street character varying,
    lotshape character varying,
    landcontour character varying,
    lotconfig character varying,
    landslope character varying,
    neighborhood character varying,
    condition1 character varying,
    condition2 character varying,
    bldgtype character varying,
    housestyle character varying,
    overallqual character varying,
    overallcond character varying,
    yearbuilt integer,
    yearremodadd integer,
    roofstyle character varying,
    roofmatl character varying,
    exterior1st character varying,
    exterior2nd character varying,
    masvnrtype character varying,
    masvnrarea integer,
    exterqual character varying,
    extercond character varying,
    foundation character varying,
    bsmtfinsf1 integer,
    bsmtfinsf2 integer,
    bsmtunfsf integer,
    totalbsmtsf integer,
    heating character varying,
    heatingqc character varying,
    centralair character varying,
    electrical character varying,
    "1stflrsf" integer,
    "2ndflrsf" integer,
    lowqualfinsf integer,
    grlivarea integer,
    bsmtfullbath integer,
    bsmthalfbath integer,
    fullbath integer,
    halfbath integer,
    bedroomabvgr integer,
    kitchenabvgr integer,
    kitchenqual character varying,
    totrmsabvgrd integer,
    functional character varying,
    fireplaces integer,
    garageyrblt integer,
    garagecars integer,
    garagearea integer,
    paveddrive character varying,
    wooddecksf integer,
    openporchsf integer,
    enclosedporch integer,
    "3ssnporch" integer,
    screenporch integer,
    poolarea integer,
    miscval integer,
    mosold integer,
    yrsold integer,
    saletype character varying,
    salecondition character varying,
    saleprice integer,
    total_area integer 
);


ALTER TABLE public.ames OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 18092)
-- Name: ames_col_desc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ames_col_desc (
    id integer NOT NULL,
    abbr character varying(10),
    description character varying(100),
    column_name character varying(20)
);


ALTER TABLE public.ames_col_desc OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 18124)
-- Name: ames_geo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ames_geo (
    geo_id integer NOT NULL,
    pid character varying NOT NULL,
    longitude numeric NOT NULL,
    latitude numeric NOT NULL
);


ALTER TABLE public.ames_geo OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 18112)
-- Name: seq_acd_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seq_acd_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_acd_id OWNER TO postgres;

--
-- TOC entry 3831 (class 0 OID 0)
-- Dependencies: 203
-- Name: seq_acd_id; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.seq_acd_id OWNED BY public.ames_col_desc.id;


--
-- TOC entry 3695 (class 2606 OID 18123)
-- Name: ames pk_ames; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ames
    ADD CONSTRAINT pk_ames PRIMARY KEY (pid);


--
-- TOC entry 3693 (class 2606 OID 18096)
-- Name: ames_col_desc pk_ames_col_desc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ames_col_desc
    ADD CONSTRAINT pk_ames_col_desc PRIMARY KEY (id);


--
-- TOC entry 3697 (class 2606 OID 18131)
-- Name: ames_geo pk_ames_geo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ames_geo
    ADD CONSTRAINT pk_ames_geo PRIMARY KEY (geo_id);


--
-- TOC entry 3698 (class 2606 OID 18132)
-- Name: ames_geo fk_ames_geo_pid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ames_geo
    ADD CONSTRAINT fk_ames_geo_pid FOREIGN KEY (pid) REFERENCES public.ames(pid);


--
-- TOC entry 3830 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2020-11-13 19:39:00

--
-- PostgreSQL database dump complete
--

