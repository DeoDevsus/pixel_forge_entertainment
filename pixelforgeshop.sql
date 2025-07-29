--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    correo character varying(100) NOT NULL,
    fecha_registro date NOT NULL,
    pais character varying(50) NOT NULL
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- Name: clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clientes_id_seq OWNER TO postgres;

--
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;


--
-- Name: desarrolladoras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.desarrolladoras (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    sede character varying(100) NOT NULL
);


ALTER TABLE public.desarrolladoras OWNER TO postgres;

--
-- Name: desarrolladoras_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.desarrolladoras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.desarrolladoras_id_seq OWNER TO postgres;

--
-- Name: desarrolladoras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.desarrolladoras_id_seq OWNED BY public.desarrolladoras.id;


--
-- Name: detalle_ventas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalle_ventas (
    id integer NOT NULL,
    id_venta integer NOT NULL,
    id_juego integer NOT NULL,
    cantidad integer NOT NULL,
    precio_unitario numeric(10,2) NOT NULL
);


ALTER TABLE public.detalle_ventas OWNER TO postgres;

--
-- Name: detalle_ventas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detalle_ventas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.detalle_ventas_id_seq OWNER TO postgres;

--
-- Name: detalle_ventas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detalle_ventas_id_seq OWNED BY public.detalle_ventas.id;


--
-- Name: juegos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.juegos (
    id integer NOT NULL,
    titulo character varying(100) NOT NULL,
    genero character varying(50) NOT NULL,
    fecha_lanzamiento date NOT NULL,
    id_desarrolladora integer NOT NULL
);


ALTER TABLE public.juegos OWNER TO postgres;

--
-- Name: juegos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.juegos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.juegos_id_seq OWNER TO postgres;

--
-- Name: juegos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.juegos_id_seq OWNED BY public.juegos.id;


--
-- Name: plataformas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plataformas (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    fabricante character varying(50) NOT NULL
);


ALTER TABLE public.plataformas OWNER TO postgres;

--
-- Name: plataformas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.plataformas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.plataformas_id_seq OWNER TO postgres;

--
-- Name: plataformas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.plataformas_id_seq OWNED BY public.plataformas.id;


--
-- Name: stock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stock (
    id integer NOT NULL,
    id_juego integer NOT NULL,
    id_plataforma integer NOT NULL,
    unidades integer NOT NULL
);


ALTER TABLE public.stock OWNER TO postgres;

--
-- Name: stock_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stock_id_seq OWNER TO postgres;

--
-- Name: stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stock_id_seq OWNED BY public.stock.id;


--
-- Name: usuarios_api; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios_api (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    token text NOT NULL
);


ALTER TABLE public.usuarios_api OWNER TO postgres;

--
-- Name: usuarios_api_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_api_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_api_id_seq OWNER TO postgres;

--
-- Name: usuarios_api_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_api_id_seq OWNED BY public.usuarios_api.id;


--
-- Name: ventas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ventas (
    id integer NOT NULL,
    fecha timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    id_cliente integer NOT NULL,
    total numeric(10,2) NOT NULL
);


ALTER TABLE public.ventas OWNER TO postgres;

--
-- Name: ventas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ventas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ventas_id_seq OWNER TO postgres;

--
-- Name: ventas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ventas_id_seq OWNED BY public.ventas.id;


--
-- Name: clientes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);


--
-- Name: desarrolladoras id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desarrolladoras ALTER COLUMN id SET DEFAULT nextval('public.desarrolladoras_id_seq'::regclass);


--
-- Name: detalle_ventas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_ventas ALTER COLUMN id SET DEFAULT nextval('public.detalle_ventas_id_seq'::regclass);


--
-- Name: juegos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.juegos ALTER COLUMN id SET DEFAULT nextval('public.juegos_id_seq'::regclass);


--
-- Name: plataformas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plataformas ALTER COLUMN id SET DEFAULT nextval('public.plataformas_id_seq'::regclass);


--
-- Name: stock id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock ALTER COLUMN id SET DEFAULT nextval('public.stock_id_seq'::regclass);


--
-- Name: usuarios_api id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_api ALTER COLUMN id SET DEFAULT nextval('public.usuarios_api_id_seq'::regclass);


--
-- Name: ventas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas ALTER COLUMN id SET DEFAULT nextval('public.ventas_id_seq'::regclass);


--
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (id, nombre, correo, fecha_registro, pais) FROM stdin;
1	Pedro Gamer	pedro@pixelforge.com	2025-07-28	Venezuela
3	David Streamer	david@pixelforge.com	2025-06-14	Venezuela
\.


--
-- Data for Name: desarrolladoras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.desarrolladoras (id, nombre, sede) FROM stdin;
\.


--
-- Data for Name: detalle_ventas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalle_ventas (id, id_venta, id_juego, cantidad, precio_unitario) FROM stdin;
\.


--
-- Data for Name: juegos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.juegos (id, titulo, genero, fecha_lanzamiento, id_desarrolladora) FROM stdin;
\.


--
-- Data for Name: plataformas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.plataformas (id, nombre, fabricante) FROM stdin;
\.


--
-- Data for Name: stock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stock (id, id_juego, id_plataforma, unidades) FROM stdin;
\.


--
-- Data for Name: usuarios_api; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios_api (id, nombre, token) FROM stdin;
\.


--
-- Data for Name: ventas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ventas (id, fecha, id_cliente, total) FROM stdin;
\.


--
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_id_seq', 3, true);


--
-- Name: desarrolladoras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.desarrolladoras_id_seq', 1, false);


--
-- Name: detalle_ventas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detalle_ventas_id_seq', 1, false);


--
-- Name: juegos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.juegos_id_seq', 1, false);


--
-- Name: plataformas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.plataformas_id_seq', 1, false);


--
-- Name: stock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stock_id_seq', 1, false);


--
-- Name: usuarios_api_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_api_id_seq', 1, false);


--
-- Name: ventas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ventas_id_seq', 1, false);


--
-- Name: clientes clientes_correo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_correo_key UNIQUE (correo);


--
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);


--
-- Name: desarrolladoras desarrolladoras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desarrolladoras
    ADD CONSTRAINT desarrolladoras_pkey PRIMARY KEY (id);


--
-- Name: detalle_ventas detalle_ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_ventas
    ADD CONSTRAINT detalle_ventas_pkey PRIMARY KEY (id);


--
-- Name: juegos juegos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.juegos
    ADD CONSTRAINT juegos_pkey PRIMARY KEY (id);


--
-- Name: plataformas plataformas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plataformas
    ADD CONSTRAINT plataformas_pkey PRIMARY KEY (id);


--
-- Name: stock stock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (id);


--
-- Name: usuarios_api usuarios_api_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_api
    ADD CONSTRAINT usuarios_api_pkey PRIMARY KEY (id);


--
-- Name: ventas ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (id);


--
-- Name: detalle_ventas detalle_ventas_id_juego_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_ventas
    ADD CONSTRAINT detalle_ventas_id_juego_fkey FOREIGN KEY (id_juego) REFERENCES public.juegos(id);


--
-- Name: detalle_ventas detalle_ventas_id_venta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_ventas
    ADD CONSTRAINT detalle_ventas_id_venta_fkey FOREIGN KEY (id_venta) REFERENCES public.ventas(id);


--
-- Name: juegos juegos_id_desarrolladora_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.juegos
    ADD CONSTRAINT juegos_id_desarrolladora_fkey FOREIGN KEY (id_desarrolladora) REFERENCES public.desarrolladoras(id);


--
-- Name: stock stock_id_juego_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_id_juego_fkey FOREIGN KEY (id_juego) REFERENCES public.juegos(id);


--
-- Name: stock stock_id_plataforma_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_id_plataforma_fkey FOREIGN KEY (id_plataforma) REFERENCES public.plataformas(id);


--
-- Name: ventas ventas_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id);


--
-- PostgreSQL database dump complete
--

