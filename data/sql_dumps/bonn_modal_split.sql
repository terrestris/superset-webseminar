--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10
-- Dumped by pg_dump version 14.10

-- Started on 2025-05-20 13:18:50 UTC

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
-- TOC entry 300 (class 1259 OID 80424)
-- Name: bonn_modal_split; Type: TABLE; Schema: public; Owner: superset
--

CREATE TABLE public.bonn_modal_split (
    street text,
    year date,
    modal text,
    total integer,
    percentage integer
);


ALTER TABLE public.bonn_modal_split OWNER TO superset;

--
-- TOC entry 4632 (class 0 OID 80424)
-- Dependencies: 300
-- Data for Name: bonn_modal_split; Type: TABLE DATA; Schema: public; Owner: superset
--

COPY public.bonn_modal_split (street, year, modal, total, percentage) FROM stdin;
Oxfordstraße	2019-01-01	Auto	22440	41
Oxfordstraße	2019-01-01	Zu Fuß	15325	28
Oxfordstraße	2019-01-01	Fahrrad	8210	15
Oxfordstraße	2019-01-01	ÖPNV	8757	16
Römerstraße	2019-01-01	Auto	8618	35
Römerstraße	2019-01-01	Zu Fuß	7633	31
Römerstraße	2019-01-01	Fahrrad	4186	17
Römerstraße	2019-01-01	ÖPNV	4186	17
Kölnstraße	2019-01-01	Auto	7214	35
Kölnstraße	2019-01-01	Zu Fuß	6390	31
Kölnstraße	2019-01-01	Fahrrad	3504	17
Kölnstraße	2019-01-01	ÖPNV	3504	17
Oxfordstraße	2020-01-01	Auto	22440	41
Oxfordstraße	2020-01-01	Zu Fuß	15325	28
Oxfordstraße	2020-01-01	Fahrrad	8210	15
Oxfordstraße	2020-01-01	ÖPNV	8757	16
Römerstraße	2020-01-01	Auto	8618	35
Römerstraße	2020-01-01	Zu Fuß	7633	31
Römerstraße	2020-01-01	Fahrrad	4186	17
Römerstraße	2020-01-01	ÖPNV	4186	17
Kölnstraße	2020-01-01	Auto	7214	35
Kölnstraße	2020-01-01	Zu Fuß	6390	31
Kölnstraße	2020-01-01	Fahrrad	3504	17
Kölnstraße	2020-01-01	ÖPNV	3504	17
Oxfordstraße	2021-01-01	Auto	22440	41
Oxfordstraße	2021-01-01	Zu Fuß	15325	28
Oxfordstraße	2021-01-01	Fahrrad	8210	15
Oxfordstraße	2021-01-01	ÖPNV	8757	16
Römerstraße	2021-01-01	Auto	8618	35
Römerstraße	2021-01-01	Zu Fuß	7633	31
Römerstraße	2021-01-01	Fahrrad	4186	17
Römerstraße	2021-01-01	ÖPNV	4186	17
Kölnstraße	2021-01-01	Auto	7214	35
Kölnstraße	2021-01-01	Zu Fuß	6390	31
Kölnstraße	2021-01-01	Fahrrad	3504	17
Kölnstraße	2021-01-01	ÖPNV	3504	17
Oxfordstraße	2022-01-01	Auto	22440	41
Oxfordstraße	2022-01-01	Zu Fuß	15325	28
Oxfordstraße	2022-01-01	Fahrrad	8210	15
Oxfordstraße	2022-01-01	ÖPNV	8757	16
Römerstraße	2022-01-01	Auto	8618	35
Römerstraße	2022-01-01	Zu Fuß	7633	31
Römerstraße	2022-01-01	Fahrrad	4186	17
Römerstraße	2022-01-01	ÖPNV	4186	17
Kölnstraße	2022-01-01	Auto	7214	35
Kölnstraße	2022-01-01	Zu Fuß	6390	31
Kölnstraße	2022-01-01	Fahrrad	3504	17
Kölnstraße	2022-01-01	ÖPNV	3504	17
Oxfordstraße	2023-01-01	Auto	19199	30
Oxfordstraße	2023-01-01	Zu Fuß	19839	31
Oxfordstraße	2023-01-01	Fahrrad	13439	21
Oxfordstraße	2023-01-01	ÖPNV	11519	18
Römerstraße	2023-01-01	Auto	8603	37
Römerstraße	2023-01-01	Zu Fuß	6278	27
Römerstraße	2023-01-01	Fahrrad	3953	17
Römerstraße	2023-01-01	ÖPNV	4418	19
Kölnstraße	2023-01-01	Auto	9460	37
Kölnstraße	2023-01-01	Zu Fuß	6903	27
Kölnstraße	2023-01-01	Fahrrad	4346	17
Kölnstraße	2023-01-01	ÖPNV	4858	19
Oxfordstraße	2024-01-01	Auto	19199	30
Oxfordstraße	2024-01-01	Zu Fuß	19839	31
Oxfordstraße	2024-01-01	Fahrrad	13439	21
Oxfordstraße	2024-01-01	ÖPNV	11519	18
Römerstraße	2024-01-01	Auto	8603	37
Römerstraße	2024-01-01	Zu Fuß	6278	27
Römerstraße	2024-01-01	Fahrrad	3953	17
Römerstraße	2024-01-01	ÖPNV	4418	19
Kölnstraße	2024-01-01	Auto	9460	37
Kölnstraße	2024-01-01	Zu Fuß	6903	27
Kölnstraße	2024-01-01	Fahrrad	4346	17
Kölnstraße	2024-01-01	ÖPNV	4858	19
\.


-- Completed on 2025-05-20 13:18:51 UTC

--
-- PostgreSQL database dump complete
--

