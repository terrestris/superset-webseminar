--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10
-- Dumped by pg_dump version 14.10

-- Started on 2025-05-20 13:21:08 UTC

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
-- TOC entry 314 (class 1259 OID 80861)
-- Name: wind_windkraftanlagen_punkte; Type: TABLE; Schema: public; Owner: superset
--

CREATE TABLE public.wind_windkraftanlagen_punkte (
    id integer NOT NULL,
    wkb_geometry public.geometry(Point,4326),
    unit character varying,
    value double precision,
    status character varying,
    lat double precision,
    lon double precision,
    windpark_name character varying,
    baujahr integer,
    "nabenhöhe" integer,
    rotor integer,
    anlagentyp character varying,
    hersteller character varying,
    geom json,
    inbetriebnahme date,
    planungsstand character varying,
    baufortschritt integer,
    anlage_name character varying,
    wartung character varying
);


ALTER TABLE public.wind_windkraftanlagen_punkte OWNER TO superset;

--
-- TOC entry 313 (class 1259 OID 80860)
-- Name: wind_windkraftanlagen_punkte_id_seq; Type: SEQUENCE; Schema: public; Owner: superset
--

CREATE SEQUENCE public.wind_windkraftanlagen_punkte_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wind_windkraftanlagen_punkte_id_seq OWNER TO superset;

--
-- TOC entry 4643 (class 0 OID 0)
-- Dependencies: 313
-- Name: wind_windkraftanlagen_punkte_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superset
--

ALTER SEQUENCE public.wind_windkraftanlagen_punkte_id_seq OWNED BY public.wind_windkraftanlagen_punkte.id;


--
-- TOC entry 4488 (class 2604 OID 80864)
-- Name: wind_windkraftanlagen_punkte id; Type: DEFAULT; Schema: public; Owner: superset
--

ALTER TABLE ONLY public.wind_windkraftanlagen_punkte ALTER COLUMN id SET DEFAULT nextval('public.wind_windkraftanlagen_punkte_id_seq'::regclass);


--
-- TOC entry 4637 (class 0 OID 80861)
-- Dependencies: 314
-- Data for Name: wind_windkraftanlagen_punkte; Type: TABLE DATA; Schema: public; Owner: superset
--

COPY public.wind_windkraftanlagen_punkte (id, wkb_geometry, unit, value, status, lat, lon, windpark_name, baujahr, "nabenhöhe", rotor, anlagentyp, hersteller, geom, inbetriebnahme, planungsstand, baufortschritt, anlage_name, wartung) FROM stdin;
2292	0101000020E61000008A90BA9D7D0D2040A3409FC893C04A40	MW	3.4	operational	8.026349	53.50451	Sande_1	2005	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.0263498000000002, 53.504512200000001 ] }	2005-01-01	in Betrieb	100	Sande_1_WEA01	Störung liegt vor
2900	0101000020E6100000AE64C746201621409D11A5BDC1DF4A40	MW	0.3	operational	8.543215	53.7481	Altendeich	2002	60	40	Ventora V126-4.2	ScandAir Energy	{ "type": "Point", "coordinates": [ 8.5432150999999994, 53.748109499999998 ] }	2002-01-01	in Betrieb	100	Altendeich_WEA01	Störung liegt vor
2901	0101000020E6100000CD3B4ED1911421405001309E41DF4A40	MW	0.3	operational	8.540175	53.74419	Altendeich	2002	60	40	Ventora V126-4.2	ScandAir Energy	{ "type": "Point", "coordinates": [ 8.5401752999999996, 53.744196500000001 ] }	2002-01-01	in Betrieb	100	Altendeich_WEA02	Störung liegt vor
2902	0101000020E61000005437177FDB132140BABDA4315ADF4A40	MW	0.3	operational	8.538784	53.74494	Altendeich	2002	60	40	Ventora V126-4.2	ScandAir Energy	{ "type": "Point", "coordinates": [ 8.5387845999999996, 53.744945199999997 ] }	2002-01-01	in Betrieb	100	Altendeich_WEA03	keine Mängel
2903	0101000020E6100000EC6987BF26132140257A19C572DF4A40	MW	0.3	operational	8.537405	53.74569	Altendeich	2002	60	40	Ventora V126-4.2	ScandAir Energy	{ "type": "Point", "coordinates": [ 8.5374052999999996, 53.745696500000001 ] }	2002-01-01	in Betrieb	100	Altendeich_WEA04	außer Betrieb wegen Wartung
2904	0101000020E61000000455A35703142140EC34D25279DF4A40	MW	0.3	operational	8.539088	53.74589	Altendeich	2002	60	40	Ventora V126-4.2	ScandAir Energy	{ "type": "Point", "coordinates": [ 8.5390882999999995, 53.745892099999999 ] }	2002-01-01	in Betrieb	100	Altendeich_WEA05	keine Mängel
2905	0101000020E6100000284696CCB114214081785DBF60DF4A40	MW	0.3	operational	8.540419	53.74514	Altendeich	2002	60	40	Ventora V126-4.2	ScandAir Energy	{ "type": "Point", "coordinates": [ 8.5404192999999999, 53.745139999999999 ] }	2002-01-01	in Betrieb	100	Altendeich_WEA06	außer Betrieb wegen Wartung
2906	0101000020E6100000C8B3CBB73E1421406458C51B99DF4A40	MW	0.3	operational	8.539541	53.74686	Altendeich	2002	60	40	Ventora V126-4.2	ScandAir Energy	{ "type": "Point", "coordinates": [ 8.5395413999999992, 53.746868599999999 ] }	2002-01-01	in Betrieb	100	Altendeich_WEA07	keine Mängel
2907	0101000020E6100000BB99D18F861321408143A852B3DF4A40	MW	0.3	operational	8.538136	53.74766	Altendeich	2002	60	40	Ventora V126-4.2	ScandAir Energy	{ "type": "Point", "coordinates": [ 8.5381362000000003, 53.747666700000003 ] }	2002-01-01	in Betrieb	100	Altendeich_WEA08	außer Betrieb wegen Wartung
2908	0101000020E610000074EE76BD34152140969526A5A0DF4A40	MW	0.3	operational	8.541418	53.74709	Altendeich	2002	60	40	Ventora V126-4.2	ScandAir Energy	{ "type": "Point", "coordinates": [ 8.5414180000000002, 53.747092600000002 ] }	2002-01-01	in Betrieb	100	Altendeich_WEA09	keine Mängel
2909	0101000020E6100000F9669B1BD3132140CF6BEC12D5DF4A40	MW	0.3	operational	8.53872	53.74869	Altendeich	2002	60	40	Ventora V126-4.2	ScandAir Energy	{ "type": "Point", "coordinates": [ 8.5387207000000007, 53.7486909 ] }	2002-01-01	in Betrieb	100	Altendeich_WEA10	keine Mängel
2910	0101000020E610000035423F53AF13214095607138F3DF4A40	MW	0.3	operational	8.538447	53.74961	Altendeich	2002	60	40	Ventora V126-4.2	ScandAir Energy	{ "type": "Point", "coordinates": [ 8.5384469999999997, 53.749619000000003 ] }	2002-01-01	in Betrieb	100	Altendeich_WEA11	keine Mängel
2921	0101000020E61000005116BEBED6152140B2F4A10BEADF4A40	MW	0.3	operational	8.542654	53.74933	Altendeich	2002	60	40	Ventora V126-4.2	ScandAir Energy	{ "type": "Point", "coordinates": [ 8.5426547999999993, 53.749332199999998 ] }	2002-01-01	in Betrieb	100	Altendeich_WEA12	keine Mängel
2922	0101000020E61000000DA9A27895152140EBAD81AD12E04A40	MW	0.3	operational	8.542156	53.75057	Altendeich	2002	60	40	Ventora V126-4.2	ScandAir Energy	{ "type": "Point", "coordinates": [ 8.5421566000000002, 53.750572900000002 ] }	2002-01-01	in Betrieb	100	Altendeich_WEA13	keine Mängel
2923	0101000020E6100000137EA99F37152140F12900C633E04A40	MW	0.3	operational	8.54144	53.75158	Altendeich	2002	60	40	Ventora V126-4.2	ScandAir Energy	{ "type": "Point", "coordinates": [ 8.5414405999999996, 53.7515869 ] }	2002-01-01	in Betrieb	100	Altendeich_WEA14	keine Mängel
2924	0101000020E6100000064CE0D6DD1421401C7C613255E04A40	MW	0.3	operational	8.540755	53.7526	Altendeich	2002	60	40	Ventora V126-4.2	ScandAir Energy	{ "type": "Point", "coordinates": [ 8.5407554999999995, 53.752600299999997 ] }	2002-01-01	in Betrieb	100	Altendeich_WEA15	keine Mängel
4274	0101000020E610000081B22957789F2140D52137C30DE44A40	MW	4.6	construction	8.811465	53.78167	Nordleda_3	2025	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8114658000000006, 53.781679199999999 ] }	2025-08-01	aktueller Baufortschritt gefährdet	70	Nordleda_3_WEA01	\N
4275	0101000020E6100000AD307DAF21A02140C74B378941E44A40	MW	4.6	construction	8.812757	53.78325	Nordleda_3	2025	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8127575999999994, 53.783253799999997 ] }	2025-08-01	aktueller Baufortschritt gefährdet	76	Nordleda_3_WEA02	\N
4276	0101000020E610000053B131AF239E21403A7AFCDEA6E34A40	MW	4.6	construction	8.808866	53.77853	Nordleda_3	2025	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8088662000000006, 53.778539199999997 ] }	2025-08-01	aktueller Baufortschritt gefährdet	50	Nordleda_3_WEA03	\N
4277	0101000020E6100000191F662FDB9E2140B2D7BB3FDEE34A40	MW	4.6	construction	8.810266	53.78022	Nordleda_3	2025	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8102669000000002, 53.780229900000002 ] }	2025-08-01	Zielvorgaben erreicht	90	Nordleda_3_WEA04	\N
4278	0101000020E6100000A62BD8463CA12140B2632310AFE34A40	MW	4.6	operational	8.814913	53.77878	Nordleda_2	2016	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8149131000000001, 53.778785399999997 ] }	2016-01-01	in Betrieb	100	Nordleda_2_WEA06	keine Mängel
4279	0101000020E6100000637FD93D79A021401D554D1075E34A40	MW	4.6	operational	8.813425	53.77701	Nordleda_2	2016	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8134253999999999, 53.777013599999997 ] }	2016-01-01	in Betrieb	100	Nordleda_2_WEA07	keine Mängel
4280	0101000020E6100000B5503239B5A321409DD7D825AAE34A40	MW	4.6	operational	8.819742	53.77863	Nordleda_2	2016	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8197428000000002, 53.778632899999998 ] }	2016-01-01	in Betrieb	100	Nordleda_2_WEA09	keine Mängel
4281	0101000020E6100000EBA7FFACF9A121404772F90FE9E34A40	MW	4.6	operational	8.816358	53.78055	Nordleda_2	2016	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8163581999999998, 53.780555200000002 ] }	2016-01-01	in Betrieb	100	Nordleda_2_WEA10	keine Mängel
4282	0101000020E6100000BDAC8905BEA22140DC80CF0F23E44A40	MW	4.6	operational	8.817856	53.78232	Nordleda_2	2016	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8178561999999996, 53.782327899999999 ] }	2016-01-01	in Betrieb	100	Nordleda_2_WEA11	keine Mängel
4283	0101000020E61000004DBD6E1118A321409D6340F67AE34A40	MW	4.6	operational	8.818543	53.77719	Nordleda_2	2016	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8185433, 53.777194999999999 ] }	2016-01-01	in Betrieb	100	Nordleda_2_WEA12	keine Mängel
4284	0101000020E6100000BF4351A04FA421409D4B7155D9E34A40	MW	4.6	operational	8.82092	53.78007	Nordleda_2	2016	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8209202999999992, 53.780072199999999 ] }	2016-01-01	in Betrieb	100	Nordleda_2_WEA13	keine Mängel
4285	0101000020E6100000AAB5300BEDA4214079E9263108E44A40	MW	4.6	operational	8.822121	53.7815	Nordleda_2	2016	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8221214999999997, 53.781507699999999 ] }	2016-01-01	in Betrieb	100	Nordleda_2_WEA14	keine Mängel
4286	0101000020E6100000874D64E602A7214064AF777FBCE34A40	MW	4.6	operational	8.826194	53.77919	Nordleda_2	2014	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8261947000000003, 53.779191300000001 ] }	2014-01-01	in Betrieb	100	Nordleda_2_WEA01	keine Mängel
4287	0101000020E6100000032670EB6EA621405D16139B8FE34A40	MW	4.6	operational	8.825065	53.77782	Nordleda_2	2014	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8250654999999991, 53.777827000000002 ] }	2014-01-01	in Betrieb	100	Nordleda_2_WEA02	keine Mängel
4288	0101000020E61000000490DAC4C9A5214008AC1C5A64E34A40	MW	4.6	operational	8.823805	53.7765	Nordleda_2	2014	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8238056, 53.776502800000003 ] }	2014-01-01	in Betrieb	100	Nordleda_2_WEA04	Störung liegt vor
4289	0101000020E61000009D9D0C8E92A72140DDEF5014E8E34A40	MW	4.6	operational	8.82729	53.78052	Nordleda_2	2014	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8272908000000001, 53.780529299999998 ] }	2014-01-01	in Betrieb	100	Nordleda_2_WEA03	keine Mängel
4290	0101000020E610000082AE7D01BDB02140E5D022DBF9E24A40	MW	2.7	operational	8.845192	53.77325	Nordleda_1	2004	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.8451926000000007, 53.773258300000002 ] }	2004-01-01	in Betrieb	100	Nordleda_1_WEA01	außer Betrieb wegen Wartung
4291	0101000020E61000003E062B4EB5AE2140E57E87A240E34A40	MW	2.7	operational	8.841227	53.77541	Nordleda_1	2004	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.8412276999999992, 53.775418500000001 ] }	2004-01-01	in Betrieb	100	Nordleda_1_WEA02	keine Mängel
4292	0101000020E61000003F8D7BF31BAE214097395D1613E34A40	MW	2.7	operational	8.840057	53.77402	Nordleda_1	2004	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.8400572000000004, 53.774023499999998 ] }	2004-01-01	in Betrieb	100	Nordleda_1_WEA03	außer Betrieb wegen Wartung
4293	0101000020E610000004E275FD82AD214002486DE2E4E24A40	MW	2.7	operational	8.83889	53.77261	Nordleda_1	2004	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.8388901999999998, 53.772613300000003 ] }	2004-01-01	in Betrieb	100	Nordleda_1_WEA04	keine Mängel
4295	0101000020E610000004E621533EAC2140AD69DE718AE24A40	MW	2.7	operational	8.836413	53.76985	Nordleda_1	2004	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.8364136000000002, 53.769858900000003 ] }	2004-01-01	in Betrieb	100	Nordleda_1_WEA05	Störung liegt vor
4296	0101000020E6100000897C975297AC2140BA313D6189E34A40	MW	4.6	operational	8.837092	53.77763	Nordleda_1	2014	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8370923000000001, 53.777636600000001 ] }	2014-01-01	in Betrieb	100	Nordleda_1_WEA13	Störung liegt vor
4297	0101000020E6100000C61858C7F1AB21407A36AB3E57E34A40	MW	4.6	operational	8.835829	53.7761	Nordleda_1	2014	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8358293000000003, 53.7761043 ] }	2014-01-01	in Betrieb	100	Nordleda_1_WEA14	keine Mängel
4298	0101000020E61000000C0742B280A92140C2120F289BE24A40	MW	2.7	operational	8.83106	53.77036	Nordleda_1	2004	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.8310607999999995, 53.770365499999997 ] }	2004-01-01	in Betrieb	100	Nordleda_1_WEA06	keine Mängel
4299	0101000020E6100000C3D32B6519AA2140ED815660C8E24A40	MW	2.7	operational	8.832225	53.77174	Nordleda_1	2004	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.8322257000000004, 53.771741800000001 ] }	2004-01-01	in Betrieb	100	Nordleda_1_WEA07	keine Mängel
4300	0101000020E6100000FBAE08FEB7AA214010CCD1E3F7E24A40	MW	2.7	operational	8.833435	53.77319	Nordleda_1	2004	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.8334357000000008, 53.773193800000001 ] }	2004-01-01	in Betrieb	100	Nordleda_1_WEA08	Störung liegt vor
4301	0101000020E6100000D5E940D653AB214057EC2FBB27E34A40	MW	2.7	operational	8.834624	53.77465	Nordleda_1	2004	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.8346243999999992, 53.774659 ] }	2004-01-01	in Betrieb	100	Nordleda_1_WEA09	außer Betrieb wegen Wartung
4302	0101000020E610000062BB7B80EE9B214056BC9179E4E34A40	MW	4.6	construction	8.804554	53.78041	Nordleda_3	2025	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8045542000000001, 53.780412800000001 ] }	2025-10-01	Zielvorgaben erreicht	62	Nordleda_3_WEA05	\N
4303	0101000020E61000006D74CE4F719C2140B24B546F0DE44A40	MW	4.6	construction	8.805552	53.78166	Nordleda_3	2025	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8055529000000003, 53.781666100000002 ] }	2025-10-01	Zielvorgaben erreicht	69	Nordleda_3_WEA06	\N
4304	0101000020E6100000FC00A436719A2140C72E51BD35E44A40	MW	4.6	construction	8.801645	53.78289	Nordleda_3	2025	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8016451, 53.782890399999999 ] }	2025-11-01	aktueller Baufortschritt gefährdet	35	Nordleda_3_WEA07	\N
4305	0101000020E6100000A79196CADB992140C095ECD808E44A40	MW	4.6	construction	8.800505	53.78152	Nordleda_3	2025	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8005058999999992, 53.781520999999998 ] }	2025-11-01	aktueller Baufortschritt gefährdet	38	Nordleda_3_WEA08	\N
4306	0101000020E610000036EA211ADDA92140BA4E232D95E34A40	MW	4.6	operational	8.831765	53.77799	Nordleda_1	2014	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8317653000000007, 53.777996899999998 ] }	2014-01-01	in Betrieb	100	Nordleda_1_WEA15	keine Mängel
4307	0101000020E6100000F086342A70AA2140C0E78711C2E34A40	MW	4.6	operational	8.832887	53.77936	Nordleda_1	2014	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8328872, 53.779366799999998 ] }	2014-01-01	in Betrieb	100	Nordleda_1_WEA16	keine Mängel
4308	0101000020E610000013F4177AC4A821401EC4CE143AE34A40	MW	2.7	operational	8.829624	53.77521	Nordleda_1	2004	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.8296244999999995, 53.775212400000001 ] }	2004-01-01	in Betrieb	100	Nordleda_1_WEA10	keine Mängel
4309	0101000020E610000042EBE1CB44A92140B3B5BE4868E34A40	MW	4.6	operational	8.830603	53.77662	Nordleda_1	2014	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.830603, 53.776621200000001 ] }	2014-01-01	in Betrieb	100	Nordleda_1_WEA17	keine Mängel
4310	0101000020E61000002A6F47382DA82140172B6A300DE34A40	MW	2.7	operational	8.82847	53.77384	Nordleda_1	2004	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.8284708999999992, 53.773846499999998 ] }	2004-01-01	in Betrieb	100	Nordleda_1_WEA11	keine Mängel
4311	0101000020E610000070EF1AF4A5A72140BB9BA73AE4E24A40	MW	2.7	operational	8.827438	53.77259	Nordleda_1	2004	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.8274381000000002, 53.772599100000001 ] }	2004-01-01	in Betrieb	100	Nordleda_1_WEA12	keine Mängel
4312	0101000020E6100000F7CC920035A5214025E99AC937E34A40	MW	4.6	operational	8.82267	53.77514	Nordleda_2	2014	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8226709000000003, 53.775143100000001 ] }	2014-01-01	in Betrieb	100	Nordleda_2_WEA05	keine Mängel
4313	0101000020E61000001B9FC9FE79A22140C1C58A1A4CE34A40	MW	4.6	operational	8.817337	53.77576	Nordleda_2	2016	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.8173370000000002, 53.775763599999998 ] }	2016-01-01	in Betrieb	100	Nordleda_2_WEA08	keine Mängel
4314	0101000020E61000006005F86EF3962140473D44A33BE44A40	MW	5	planned	8.794826	53.78307	Nordleda_3	2027	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.7948261999999993, 53.783078199999999 ] }	2027-04-01	Genehmigung erteilt	0	Nordleda_3_WEA09	\N
4315	0101000020E6100000C72E51BD35982140CD58349D9DE44A40	MW	5	planned	8.797285	53.78606	Nordleda_3	2027	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.7972854999999992, 53.7860637 ] }	2027-04-01	Genehmigung erteilt	0	Nordleda_3_WEA10	\N
4316	0101000020E6100000C5C8923996972140CDE49B6D6EE44A40	MW	5	planned	8.796068	53.78462	Nordleda_3	2027	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.7960683, 53.7846251 ] }	2027-04-01	Genehmigung erteilt	0	Nordleda_3_WEA11	\N
4615	0101000020E6100000A92F4B3B35572140B84082E2C7D04A40	MW	4.9	planned	8.670328	53.6311	Debstedt_2	2027	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.6703285999999995, 53.631103299999999 ] }	2027-08-01	Gutachten vorliegend, Genehmigung ausstehend	0	Debstedt_2_WEA04	\N
4616	0101000020E610000068226C787A5521404DBED9E6C6D04A40	MW	4.9	planned	8.66695	53.63107	Debstedt_2	2027	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.6669500999999993, 53.631073399999998 ] }	2027-08-01	Gutachten vorliegend, Genehmigung ausstehend	0	Debstedt_2_WEA05	\N
4617	0101000020E6100000A6F0A0D97557214085949F54FBD04A40	MW	4.9	planned	8.670821	53.63267	Debstedt_2	2027	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.6708216999999994, 53.632674799999997 ] }	2027-08-01	Gutachten vorliegend, Genehmigung ausstehend	0	Debstedt_2_WEA06	\N
4618	0101000020E6100000E06932E36D552140A2629CBF09D14A40	MW	4.9	planned	8.666854	53.63311	Debstedt_2	2027	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.6668547999999994, 53.633113399999999 ] }	2027-08-01	Gutachten vorliegend, Genehmigung ausstehend	0	Debstedt_2_WEA07	\N
4619	0101000020E6100000DA5548F9495521404CFDBCA948D14A40	MW	1	operational	8.66658	53.63503	Debstedt_1	1998	110	75	Nordvent NV110-3.8	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.6665802999999997, 53.635030299999997 ] }	1998-01-01	in Betrieb	100	Debstedt_1_WEA03	außer Betrieb wegen Wartung
4620	0101000020E61000001C0B0A83325521404C7155D977D14A40	MW	1	operational	8.666401	53.63647	Debstedt_1	1998	110	75	Nordvent NV110-3.8	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.6664010000000005, 53.636478699999998 ] }	1998-01-01	in Betrieb	100	Debstedt_1_WEA01	keine Mängel
4621	0101000020E6100000F04FA91265572140C47762D68BD14A40	MW	1	operational	8.670693	53.63708	Debstedt_1	1998	110	75	Nordvent NV110-3.8	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.6706938999999998, 53.6370887 ] }	1998-01-01	in Betrieb	100	Debstedt_1_WEA02	außer Betrieb wegen Wartung
4622	0101000020E61000009C04203F57592140043F5233B4D04A40	MW	4.9	planned	8.674762	53.63192	Debstedt_2	2027	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.6747625999999993, 53.6319266 ] }	2027-08-01	Gutachten vorliegend, Genehmigung ausstehend	0	Debstedt_2_WEA08	\N
4623	0101000020E61000006519E25817572140545227A089D04A40	MW	4.9	planned	8.6701	53.6292	Debstedt_2	2027	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.6701008000000002, 53.629207600000001 ] }	2027-08-01	Gutachten vorliegend, Genehmigung ausstehend	0	Debstedt_2_WEA09	\N
4624	0101000020E61000009ED1562591552140A3AF20CD58D04A40	MW	4.9	planned	8.667123	53.62771	Debstedt_2	2027	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.6671232000000007, 53.627714400000002 ] }	2027-08-01	Gutachten vorliegend, Genehmigung ausstehend	0	Debstedt_2_WEA10	\N
8103	0101000020E6100000F226BF4527EB1F40780B24287EC04A40	MW	3.3	operational	7.979642	53.50385	Sande_2	2020	160	120	Turbogen TG132-4.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 7.9796421999999998, 53.5038524 ] }	2020-01-01	in Betrieb	100	Sande_2_WEA01	keine Mängel
8105	0101000020E6100000D9791B9B1DF91F4006D847A7AEC04A40	MW	3	construction	7.993277	53.50533	Sande_2	2025	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 7.9932778000000004, 53.505330999999998 ] }	2025-07-01	Zielvorgaben erreicht	83	Sande_2_WEA05	\N
8106	0101000020E61000009F76F86BB2E61F40226C787AA5C04A40	MW	3.3	operational	7.97529	53.50505	Sande_2	2020	160	120	Turbogen TG132-4.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 7.9752901999999999, 53.505050599999997 ] }	2020-01-01	in Betrieb	100	Sande_2_WEA02	keine Mängel
8107	0101000020E6100000A661F88898F21F4031D3F6AFACC04A40	MW	5	construction	7.98691	53.50527	Sande_2	2025	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 7.98691, 53.505276299999998 ] }	2025-09-01	Bau unterbrochen	23	Sande_2_WEA07	\N
8108	0101000020E610000064CDC82077F11F40BED9E6C6F4C04A40	MW	5	planned	7.985806	53.50747	Sande_2	2027	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 7.9858066000000001, 53.507474199999997 ] }	2027-06-01	Bürgerbeteiligung läuft	0	Sande_2_WEA08	\N
8118	0101000020E61000006A183E22A6E41F40E292E34EE9C04A40	MW	3.3	operational	7.97329	53.50712	Sande_2	2020	160	120	Turbogen TG132-4.0	Ventora Wind Systems	\N	2020-01-01	in Betrieb	100	Sande_2_WEA03	keine Mängel
10780	0101000020E6100000D5AF743E3C0321408B321B6492D54A40	MW	0.5	operational	8.506319	53.66853	Misselwarden	1999	98	70	Aeronix A150-6.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.5063189999999995, 53.668536000000003 ] }	1999-01-01	in Betrieb	100	Misselwarden_WEA07	keine Mängel
10781	0101000020E6100000D68EE21C75042140D3872EA86FD54A40	MW	0.5	operational	8.508706	53.66747	Misselwarden	1999	98	70	Aeronix A150-6.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.5087068000000006, 53.667473100000002 ] }	1999-01-01	in Betrieb	100	Misselwarden_WEA08	Störung liegt vor
10782	0101000020E61000004CE3175E490221401AC05B2041D54A40	MW	0.5	operational	8.504466	53.66605	Misselwarden	1996	98	70	Aeronix A150-6.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.5044663000000007, 53.666058999999997 ] }	1996-01-01	in Betrieb	100	Misselwarden_WEA01	Störung liegt vor
10783	0101000020E61000001DC87A6AF5052140FD9FC37C79D54A40	MW	0.5	operational	8.511638	53.66777	Misselwarden	1999	98	70	Aeronix A150-6.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.5116382000000002, 53.667772599999999 ] }	1999-01-01	in Betrieb	100	Misselwarden_WEA09	keine Mängel
10784	0101000020E6100000E8C072840C0421400BB5A679C7D54A40	MW	0.5	operational	8.507908	53.67015	Misselwarden	1999	98	70	Aeronix A150-6.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.5079084999999992, 53.670154199999999 ] }	1999-01-01	in Betrieb	100	Misselwarden_WEA10	außer Betrieb wegen Wartung
10785	0101000020E61000002522FC8BA0012140685C381092D54A40	MW	0.5	operational	8.503178	53.66852	Misselwarden	1996	98	70	Aeronix A150-6.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.5031788000000006, 53.668524699999999 ] }	1996-01-01	in Betrieb	100	Misselwarden_WEA02	außer Betrieb wegen Wartung
10786	0101000020E61000004B5CC7B8E202214059FAD005F5D54A40	MW	0.5	operational	8.505636	53.67154	Misselwarden	1996	98	70	Aeronix A150-6.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.5056369000000007, 53.671545799999997 ] }	1996-01-01	in Betrieb	100	Misselwarden_WEA03	keine Mängel
10787	0101000020E6100000A2EE0390DA042140B64AB0389CD54A40	MW	0.5	operational	8.50948	53.66883	Misselwarden	1999	98	70	Aeronix A150-6.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.5094802999999999, 53.668836300000002 ] }	1999-01-01	in Betrieb	100	Misselwarden_WEA11	keine Mängel
10788	0101000020E61000007A724D81CC062140AF777FBC57D54A40	MW	0.5	operational	8.513279	53.66674	Misselwarden	1999	98	70	Aeronix A150-6.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.5132793000000007, 53.666746600000003 ] }	1999-01-01	in Betrieb	100	Misselwarden_WEA12	keine Mängel
10789	0101000020E61000004CE3175E49022140E8F692C668D54A40	MW	0.5	operational	8.504466	53.66726	Misselwarden	1996	98	70	Aeronix A150-6.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.5044663000000007, 53.667262299999997 ] }	1996-01-01	in Betrieb	100	Misselwarden_WEA04	keine Mängel
10790	0101000020E61000003C6876DD5B0121405951836918D64A40	MW	0.5	operational	8.502654	53.67262	Misselwarden	1996	98	70	Aeronix A150-6.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.5026542000000003, 53.672621800000002 ] }	1996-01-01	in Betrieb	100	Misselwarden_WEA05	außer Betrieb wegen Wartung
10791	0101000020E61000005874EB353D002140F6285C8FC2D54A40	MW	0.5	operational	8.500467	53.67	Misselwarden	1996	98	70	Aeronix A150-6.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.5004677999999991, 53.670001900000003 ] }	1996-01-01	in Betrieb	100	Misselwarden_WEA06	außer Betrieb wegen Wartung
13898	0101000020E61000007ADFF8DA336B214062156F641EE94A40	MW	5	planned	8.70938	53.82124	Altenwalde_2	2027	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.7093804000000006, 53.821245500000003 ] }	2027-10-01	Gutachten ausstehend	0	Altenwalde_2_WEA01	\N
13899	0101000020E6100000F81BEDB8E1672140A9FB00A436E94A40	MW	5	planned	8.702894	53.82198	Altenwalde_2	2027	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.7028940000000006, 53.821986500000001 ] }	2027-10-01	Gutachten ausstehend	0	Altenwalde_2_WEA02	\N
13900	0101000020E6100000AE635C71716421408C84B69C4BE94A40	MW	5	planned	8.696178	53.82262	Altenwalde_2	2027	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.6961785000000003, 53.8226291 ] }	2027-10-01	Gutachten ausstehend	0	Altenwalde_2_WEA03	\N
13901	0101000020E61000007B4E7ADFF86A2140E813799274E94A40	MW	3	operational	8.70893	53.82387	Altenwalde_1	2014	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.7089304999999992, 53.823873800000001 ] }	2014-01-01	in Betrieb	100	Altenwalde_1_WEA01	keine Mängel
13902	0101000020E6100000ABAE43352561214061E0B9F770E94A40	MW	3.6	operational	8.689737	53.82376	Altenwalde_1	2019	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.6897373000000009, 53.823769499999997 ] }	2019-01-01	in Betrieb	100	Altenwalde_1_WEA05	keine Mängel
13903	0101000020E610000031074147AB6A214052616C21C8E94A40	MW	3	operational	8.708338	53.82642	Altenwalde_1	2014	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.7083387999999999, 53.826428900000003 ] }	2014-01-01	in Betrieb	100	Altenwalde_1_WEA02	keine Mängel
13904	0101000020E61000001F4C8A8F4F602140E0F3C308E1E94A40	MW	3.6	operational	8.688107	53.82718	Altenwalde_1	2019	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.6881074999999992, 53.827182800000003 ] }	2019-01-01	in Betrieb	100	Altenwalde_1_WEA06	außer Betrieb wegen Wartung
13905	0101000020E6100000A30392B06F672140F59CF4BEF1E94A40	MW	3	operational	8.702024	53.82769	Altenwalde_1	2014	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.7020245000000003, 53.827691000000002 ] }	2014-01-01	in Betrieb	100	Altenwalde_1_WEA03	keine Mängel
13910	0101000020E6100000959A3DD00A642140A0C37C7901EA4A40	MW	3	operational	8.695395	53.82817	Altenwalde_1	2014	140	90	Skyvolt S142-5.5	Ventora Wind Systems	\N	2014-01-01	in Betrieb	100	Altenwalde_1_WEA04	keine Mängel
22377	0101000020E6100000FCFCF7E0B5BB1F40BA4E232D95CB4A40	MW	2.3	operational	7.933311	53.59049	Jever_1	2002	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 7.9333117, 53.590493100000003 ] }	2002-01-01	in Betrieb	100	Jever_1_WEA01	keine Mängel
22378	0101000020E6100000938E72309BB01F403997E2AAB2CB4A40	MW	4.3	operational	7.922467	53.59139	Jever_3	2023	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 7.9224673000000001, 53.591391299999998 ] }	2023-01-01	in Betrieb	100	Jever_3_WEA01	keine Mängel
22379	0101000020E6100000889E94490DAD1F400E2DB29DEFCB4A40	MW	4.3	operational	7.918996	53.59325	Jever_4	2023	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 7.9189964000000002, 53.593253099999998 ] }	2023-01-01	in Betrieb	100	Jever_4_WEA01	Störung liegt vor
23943	0101000020E6100000C2C3B46FEE9F1F4096E7C1DD59CB4A40	MW	2.3	planned	7.906183	53.58868	Jever_2	2027	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 7.9061830999999998, 53.588680099999998 ] }	2027-02-01	Genehmigung erteilt	0	Jever_2_WEA02	\N
27654	0101000020E6100000D34ECDE506A31F4088F4DBD781CB4A40	MW	2.3	operational	7.909206	53.5899	Jever_2	2003	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 7.9092064000000004, 53.5899097 ] }	2003-01-01	in Betrieb	100	Jever_2_WEA01	keine Mängel
30267	0101000020E6100000BE66B96C74562140E353008C67D04A40	MW	4.5	construction	8.668857	53.62816	Debstedt_2	2025	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.6688574000000003, 53.6281648 ] }	2025-10-01	Zielvorgaben erreicht	63	Debstedt_2_WEA01	\N
30268	0101000020E6100000C1FEEBDCB4592140E9F17B9BFED04A40	MW	4.5	planned	8.675208	53.63277	Debstedt_2	2026	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.6752081000000008, 53.632771300000002 ] }	2026-11-01	Gutachten vorliegend, Genehmigung ausstehend	0	Debstedt_2_WEA02	\N
30269	0101000020E6100000596E69352456214085B1852007D14A40	MW	4.5	planned	8.668245	53.63303	Debstedt_2	2026	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.6682450000000006, 53.633033599999997 ] }	2026-11-01	Gutachten vorliegend, Genehmigung ausstehend	0	Debstedt_2_WEA03	\N
30364	0101000020E61000001A69A9BC1D792140D07EA4880CD34A40	MW	3	operational	8.736555	53.64882	Geestland	2018	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.7365559000000008, 53.6488285 ] }	2018-01-01	in Betrieb	100	Geestland_WEA01	keine Mängel
30365	0101000020E6100000292499D53B742140102384471BD34A40	MW	3	operational	8.727019	53.64927	Geestland	2018	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.7270199000000002, 53.649273100000002 ] }	2018-01-01	in Betrieb	100	Geestland_WEA02	keine Mängel
30366	0101000020E61000001AA54BFF926C21409088299144D34A40	MW	6.15	operational	8.712059	53.65053	Geestland	2024	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.7120598000000005, 53.650535300000001 ] }	2024-01-01	in Betrieb	100	Geestland_WEA03	keine Mängel
30367	0101000020E610000097CADB114E7321404FCC7A3194D34A40	MW	5	planned	8.725205	53.65296	Geestland	2027	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.7252057000000001, 53.652967699999998 ] }	2027-05-01	Genehmigung erteilt	0	Geestland_WEA07	\N
30368	0101000020E610000011A7936C75712140079964E42CD44A40	MW	5	construction	8.721599	53.65762	Geestland	2026	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.7215994000000006, 53.657626499999999 ] }	2026-01-01	Zielvorgaben erreicht	23	Geestland_WEA05	\N
30369	0101000020E6100000F646AD307D672140DD24068195D34A40	MW	6	operational	8.702127	53.653	Geestland	2024	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.7021274000000002, 53.653006499999996 ] }	2024-01-01	in Betrieb	100	Geestland_WEA04	keine Mängel
30370	0101000020E6100000DBFD2AC0776B2140247F30F0DCD34A40	MW	6	construction	8.709898	53.65518	Geestland	2026	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 8.7098981999999996, 53.655187499999997 ] }	2026-01-01	aktueller Baufortschritt gefährdet	12	Geestland_WEA06	\N
34785	0101000020E610000077D7D9907FF61F408D9C853DEDC04A40	MW	5	construction	7.990721	53.50724	Sande_2	2025	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 7.9907214, 53.507248099999998 ] }	2025-07-01	Bau unterbrochen	35	Sande_2_WEA06	\N
34786	0101000020E6100000CEFC6A0E10EC1F405B5F24B4E5C04A40	MW	3.3	operational	7.98053	53.50701	Sande_2	2020	160	120	Turbogen TG132-4.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 7.9805308999999998, 53.507016299999997 ] }	2020-01-01	in Betrieb	100	Sande_2_WEA04	keine Mängel
36040	0101000020E6100000E4A3C519C39421406C3EAE0D15CF4A40	MW	3.2	construction	8.790551	53.61783	Alfstedt_2	2026	160	120	Turbogen TG132-4.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.7905517, 53.617832999999997 ] }	2026-03-01	Bürgerbeteiligung läuft	5	Alfstedt_2_WEA09	\N
36041	0101000020E61000009F8EC70C54962140FBE8D495CFCE4A40	MW	3.2	construction	8.79361	53.61571	Alfstedt_2	2026	160	120	Turbogen TG132-4.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.7936107999999997, 53.615710800000002 ] }	2026-03-01	Bürgerbeteiligung läuft	4	Alfstedt_2_WEA10	\N
36042	0101000020E61000002E8ECA4DD49221402DB29DEFA7CE4A40	MW	3.2	construction	8.786776	53.6145	Alfstedt_2	2026	160	120	Turbogen TG132-4.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.7867762000000003, 53.614500900000003 ] }	2026-02-01	Zielvorgaben erreicht	18	Alfstedt_2_WEA07	\N
36043	0101000020E6100000003CA242759321403C31EBC550CE4A40	MW	3.2	construction	8.788004	53.61184	Alfstedt_2	2026	160	120	Turbogen TG132-4.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.7880044999999996, 53.6118442 ] }	2026-02-01	Zielvorgaben erreicht	22	Alfstedt_2_WEA08	\N
36044	0101000020E6100000ED2AA4FCA49221402098A3C7EFCD4A40	MW	3.4	operational	8.786415	53.60888	Alfstedt_2	2024	160	120	Turbogen TG132-4.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.7864152999999998, 53.608884600000003 ] }	2024-01-01	in Betrieb	100	Alfstedt_2_WEA01	keine Mängel
36045	0101000020E6100000A0A70183A48F214003780B2428CE4A40	MW	3.4	operational	8.780552	53.6106	Alfstedt_2	2024	160	120	Turbogen TG132-4.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.7805526, 53.610606699999998 ] }	2024-01-01	in Betrieb	100	Alfstedt_2_WEA02	Störung liegt vor
36046	0101000020E610000067B45549648F214067EDB60BCDCD4A40	MW	3.4	operational	8.780062	53.60782	Alfstedt_2	2024	160	120	Turbogen TG132-4.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.7800621000000003, 53.607821899999998 ] }	2024-01-01	in Betrieb	100	Alfstedt_2_WEA03	keine Mängel
36047	0101000020E6100000FBCDC47421962140E8A4F78DAFCD4A40	MW	3.4	operational	8.793224	53.60692	Alfstedt_2	2024	160	120	Turbogen TG132-4.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.7932245000000009, 53.606927300000002 ] }	2024-01-01	in Betrieb	100	Alfstedt_2_WEA04	keine Mängel
36048	0101000020E6100000F88DAF3DB39421408C67D0D03FCD4A40	MW	3.9	operational	8.79043	53.60351	Alfstedt_1	2008	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.7904301999999994, 53.603510800000002 ] }	2008-01-01	in Betrieb	100	Alfstedt_1_WEA01	außer Betrieb wegen Wartung
36049	0101000020E61000008CBCAC890596214046B6F3FDD4CC4A40	MW	3.7	operational	8.793011	53.60025	Alfstedt_1	2008	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.7930118999999998, 53.600252500000003 ] }	2008-01-01	in Betrieb	100	Alfstedt_1_WEA02	Störung liegt vor
36050	0101000020E6100000D10836AE7F9721409ACE4E0647CD4A40	MW	3.8	operational	8.795896	53.60373	Alfstedt_1	2008	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.7958963000000008, 53.6037344 ] }	2008-01-01	in Betrieb	100	Alfstedt_1_WEA03	außer Betrieb wegen Wartung
36051	0101000020E6100000477364E5979921407D224F92AECD4A40	MW	3.4	operational	8.799987	53.60689	Alfstedt_2	2024	160	120	Turbogen TG132-4.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.7999872000000003, 53.606891699999998 ] }	2024-01-01	in Betrieb	100	Alfstedt_2_WEA05	außer Betrieb wegen Wartung
36052	0101000020E61000008FFE976BD19A2140D942908312CE4A40	MW	3.2	operational	8.802379	53.60994	Alfstedt_2	2024	160	120	Turbogen TG132-4.0	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 8.8023798000000006, 53.609947300000002 ] }	2024-01-01	in Betrieb	100	Alfstedt_2_WEA06	außer Betrieb wegen Wartung
36230	0101000020E6100000B3B6291E17B51F40B29DEFA7C6CB4A40	MW	4.5	planned	7.926846	53.592	Jever_1	2026	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 7.9268469000000001, 53.592005800000003 ] }	2026-10-01	Genehmigung erteilt	0	Jever_1_WEA07	\N
36231	0101000020E6100000C119FCFD62B61F4040C1C58A1ACC4A40	MW	4.3	operational	7.928112	53.59456	Jever_1	2023	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 7.9281129000000004, 53.594565600000003 ] }	2023-01-01	in Betrieb	100	Jever_1_WEA05	keine Mängel
36232	0101000020E61000002827DA5548B91F40F949B54FC7CB4A40	MW	4.6	operational	7.93094	53.59202	Jever_1	2023	170	150	Windcraft WC138-4.5	Nordvent GmbH	{ "type": "Point", "coordinates": [ 7.9309406999999998, 53.592029400000001 ] }	2023-01-01	in Betrieb	100	Jever_1_WEA06	keine Mängel
36233	0101000020E610000012FB04508CBC1F405E68AED348CB4A40	MW	2.35	operational	7.934129	53.58816	Jever_1	2002	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 7.9341293999999998, 53.588160999999999 ] }	2002-01-01	in Betrieb	100	Jever_1_WEA02	Störung liegt vor
36234	0101000020E6100000289A07B0C8BF1F40C959D8D30ECB4A40	MW	2.35	operational	7.937289	53.58639	Jever_1	2002	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 7.9372898999999997, 53.586399900000004 ] }	2002-01-01	in Betrieb	100	Jever_1_WEA03	außer Betrieb wegen Wartung
36235	0101000020E6100000286211C30EC31F40D68BA19C68CB4A40	MW	2.1	operational	7.940486	53.58913	Jever_1	2002	140	90	Skyvolt S142-5.5	Ventora Wind Systems	{ "type": "Point", "coordinates": [ 7.9404861000000002, 53.589139099999997 ] }	2002-01-01	in Betrieb	100	Jever_1_WEA04	keine Mängel
\.


--
-- TOC entry 4644 (class 0 OID 0)
-- Dependencies: 313
-- Name: wind_windkraftanlagen_punkte_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superset
--

SELECT pg_catalog.setval('public.wind_windkraftanlagen_punkte_id_seq', 36235, true);


--
-- TOC entry 4490 (class 2606 OID 80868)
-- Name: wind_windkraftanlagen_punkte wind_windkraftanlagen_punkte_pkey; Type: CONSTRAINT; Schema: public; Owner: superset
--

ALTER TABLE ONLY public.wind_windkraftanlagen_punkte
    ADD CONSTRAINT wind_windkraftanlagen_punkte_pkey PRIMARY KEY (id);


--
-- TOC entry 4491 (class 1259 OID 80869)
-- Name: wind_windkraftanlagen_punkte_wkb_geometry_geom_idx; Type: INDEX; Schema: public; Owner: superset
--

CREATE INDEX wind_windkraftanlagen_punkte_wkb_geometry_geom_idx ON public.wind_windkraftanlagen_punkte USING gist (wkb_geometry);


-- Completed on 2025-05-20 13:21:08 UTC

--
-- PostgreSQL database dump complete
--

