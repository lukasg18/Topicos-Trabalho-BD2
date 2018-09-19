--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

-- Started on 2018-09-19 00:54:15 BRT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2403 (class 0 OID 0)
-- Dependencies: 2402
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- TOC entry 1 (class 3079 OID 12397)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2406 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 222 (class 1259 OID 26156)
-- Name: Medicamento_Categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Medicamento_Categoria" (
    "medicamentoIdMedicamento" integer NOT NULL,
    "categoriaIdCategoria" integer NOT NULL
);


ALTER TABLE public."Medicamento_Categoria" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 26151)
-- Name: Medicamento_Laboratorio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Medicamento_Laboratorio" (
    "medicamentoIdMedicamento" integer NOT NULL,
    "laboratorioIdLaboratorio" integer NOT NULL
);


ALTER TABLE public."Medicamento_Laboratorio" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 26161)
-- Name: Medicamento_Solicitacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Medicamento_Solicitacao" (
    "medicamentoIdMedicamento" integer NOT NULL,
    "solicitacaoIdSolicitacao" integer NOT NULL
);


ALTER TABLE public."Medicamento_Solicitacao" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 26105)
-- Name: atendente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.atendente (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    data_nascimento timestamp without time zone NOT NULL,
    cpf character varying(12) NOT NULL,
    numero_registro integer NOT NULL,
    rg character varying(20) NOT NULL,
    "postoIdPosto" integer,
    "controleIdControle" integer
);


ALTER TABLE public.atendente OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 26103)
-- Name: atendente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.atendente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.atendente_id_seq OWNER TO postgres;

--
-- TOC entry 2407 (class 0 OID 0)
-- Dependencies: 209
-- Name: atendente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.atendente_id_seq OWNED BY public.atendente.id;


--
-- TOC entry 190 (class 1259 OID 26025)
-- Name: bairro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bairro (
    "idBairro" integer NOT NULL,
    nome character varying(30) NOT NULL,
    "municipioIdMunicipio" integer
);


ALTER TABLE public.bairro OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 26023)
-- Name: bairro_idBairro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."bairro_idBairro_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."bairro_idBairro_seq" OWNER TO postgres;

--
-- TOC entry 2408 (class 0 OID 0)
-- Dependencies: 189
-- Name: bairro_idBairro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."bairro_idBairro_seq" OWNED BY public.bairro."idBairro";


--
-- TOC entry 194 (class 1259 OID 26041)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    "idCategoria" integer NOT NULL,
    tipo character varying(20) NOT NULL
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 26039)
-- Name: categoria_idCategoria_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."categoria_idCategoria_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."categoria_idCategoria_seq" OWNER TO postgres;

--
-- TOC entry 2409 (class 0 OID 0)
-- Dependencies: 193
-- Name: categoria_idCategoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."categoria_idCategoria_seq" OWNED BY public.categoria."idCategoria";


--
-- TOC entry 204 (class 1259 OID 26081)
-- Name: controle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.controle (
    "idControle" integer NOT NULL,
    quantidade integer NOT NULL,
    "codigoBarras" integer NOT NULL,
    data_hora timestamp without time zone NOT NULL,
    "tipoControleIdTipoControle" integer,
    "medicamentoPostoIdMedicamentoPosto" integer
);


ALTER TABLE public.controle OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 26079)
-- Name: controle_idControle_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."controle_idControle_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."controle_idControle_seq" OWNER TO postgres;

--
-- TOC entry 2410 (class 0 OID 0)
-- Dependencies: 203
-- Name: controle_idControle_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."controle_idControle_seq" OWNED BY public.controle."idControle";


--
-- TOC entry 186 (class 1259 OID 26009)
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado (
    "idEstado" integer NOT NULL,
    nome character varying(30) NOT NULL
);


ALTER TABLE public.estado OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 26007)
-- Name: estado_idEstado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."estado_idEstado_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."estado_idEstado_seq" OWNER TO postgres;

--
-- TOC entry 2411 (class 0 OID 0)
-- Dependencies: 185
-- Name: estado_idEstado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."estado_idEstado_seq" OWNED BY public.estado."idEstado";


--
-- TOC entry 196 (class 1259 OID 26049)
-- Name: estado_medicamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado_medicamento (
    "idEstadoMedicamento" integer NOT NULL,
    tipo character varying(30) NOT NULL
);


ALTER TABLE public.estado_medicamento OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 26047)
-- Name: estado_medicamento_idEstadoMedicamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."estado_medicamento_idEstadoMedicamento_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."estado_medicamento_idEstadoMedicamento_seq" OWNER TO postgres;

--
-- TOC entry 2412 (class 0 OID 0)
-- Dependencies: 195
-- Name: estado_medicamento_idEstadoMedicamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."estado_medicamento_idEstadoMedicamento_seq" OWNED BY public.estado_medicamento."idEstadoMedicamento";


--
-- TOC entry 182 (class 1259 OID 25993)
-- Name: estado_solicitacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado_solicitacao (
    "idEstadoSolicitacao" integer NOT NULL,
    tipo character varying(30) NOT NULL
);


ALTER TABLE public.estado_solicitacao OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 25991)
-- Name: estado_solicitacao_idEstadoSolicitacao_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."estado_solicitacao_idEstadoSolicitacao_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."estado_solicitacao_idEstadoSolicitacao_seq" OWNER TO postgres;

--
-- TOC entry 2413 (class 0 OID 0)
-- Dependencies: 181
-- Name: estado_solicitacao_idEstadoSolicitacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."estado_solicitacao_idEstadoSolicitacao_seq" OWNED BY public.estado_solicitacao."idEstadoSolicitacao";


--
-- TOC entry 192 (class 1259 OID 26033)
-- Name: laboratorio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.laboratorio (
    "idLaboratorio" integer NOT NULL,
    nome character varying(30) NOT NULL
);


ALTER TABLE public.laboratorio OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 26031)
-- Name: laboratorio_idLaboratorio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."laboratorio_idLaboratorio_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."laboratorio_idLaboratorio_seq" OWNER TO postgres;

--
-- TOC entry 2414 (class 0 OID 0)
-- Dependencies: 191
-- Name: laboratorio_idLaboratorio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."laboratorio_idLaboratorio_seq" OWNED BY public.laboratorio."idLaboratorio";


--
-- TOC entry 200 (class 1259 OID 26065)
-- Name: lote; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lote (
    "idLote" integer NOT NULL,
    quantidade integer NOT NULL,
    "dataVencimento" timestamp without time zone NOT NULL,
    numero integer NOT NULL,
    "medicamentoPostoIdMedicamentoPosto" integer
);


ALTER TABLE public.lote OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 26063)
-- Name: lote_idLote_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."lote_idLote_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."lote_idLote_seq" OWNER TO postgres;

--
-- TOC entry 2415 (class 0 OID 0)
-- Dependencies: 199
-- Name: lote_idLote_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."lote_idLote_seq" OWNED BY public.lote."idLote";


--
-- TOC entry 198 (class 1259 OID 26057)
-- Name: medicamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medicamento (
    "idMedicamento" integer NOT NULL,
    nome character varying(80) NOT NULL,
    bula character varying(200) NOT NULL,
    "estadoMedicamentoIdEstadoMedicamento" integer,
    "recebimentoMedicamentoIdRecebimento" integer
);


ALTER TABLE public.medicamento OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 26055)
-- Name: medicamento_idMedicamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."medicamento_idMedicamento_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."medicamento_idMedicamento_seq" OWNER TO postgres;

--
-- TOC entry 2416 (class 0 OID 0)
-- Dependencies: 197
-- Name: medicamento_idMedicamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."medicamento_idMedicamento_seq" OWNED BY public.medicamento."idMedicamento";


--
-- TOC entry 206 (class 1259 OID 26089)
-- Name: medicamento_posto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medicamento_posto (
    "idMedicamentoPosto" integer NOT NULL,
    "postoIdPosto" integer,
    "medicamentoIdMedicamento" integer,
    "loteIdLote" integer
);


ALTER TABLE public.medicamento_posto OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 26087)
-- Name: medicamento_posto_idMedicamentoPosto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."medicamento_posto_idMedicamentoPosto_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."medicamento_posto_idMedicamentoPosto_seq" OWNER TO postgres;

--
-- TOC entry 2417 (class 0 OID 0)
-- Dependencies: 205
-- Name: medicamento_posto_idMedicamentoPosto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."medicamento_posto_idMedicamentoPosto_seq" OWNED BY public.medicamento_posto."idMedicamentoPosto";


--
-- TOC entry 188 (class 1259 OID 26017)
-- Name: municipio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.municipio (
    "idMunicipio" integer NOT NULL,
    nome character varying(80) NOT NULL,
    "estadoIdEstado" integer
);


ALTER TABLE public.municipio OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 26015)
-- Name: municipio_idMunicipio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."municipio_idMunicipio_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."municipio_idMunicipio_seq" OWNER TO postgres;

--
-- TOC entry 2418 (class 0 OID 0)
-- Dependencies: 187
-- Name: municipio_idMunicipio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."municipio_idMunicipio_seq" OWNED BY public.municipio."idMunicipio";


--
-- TOC entry 220 (class 1259 OID 26145)
-- Name: pessoa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pessoa (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    data_nascimento timestamp without time zone NOT NULL,
    cpf character varying(12) NOT NULL,
    "titularId" integer,
    "sexoIdSexo" integer
);


ALTER TABLE public.pessoa OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 26143)
-- Name: pessoa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pessoa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pessoa_id_seq OWNER TO postgres;

--
-- TOC entry 2419 (class 0 OID 0)
-- Dependencies: 219
-- Name: pessoa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pessoa_id_seq OWNED BY public.pessoa.id;


--
-- TOC entry 208 (class 1259 OID 26097)
-- Name: posto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posto (
    "idPosto" integer NOT NULL,
    complemento character varying(200) NOT NULL,
    cep integer NOT NULL,
    numero integer NOT NULL,
    "coordGeoLong" character varying(20) NOT NULL,
    "coordGeoLat" character varying(20) NOT NULL,
    "bairroIdBairro" integer
);


ALTER TABLE public.posto OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 26095)
-- Name: posto_idPosto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."posto_idPosto_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."posto_idPosto_seq" OWNER TO postgres;

--
-- TOC entry 2420 (class 0 OID 0)
-- Dependencies: 207
-- Name: posto_idPosto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."posto_idPosto_seq" OWNED BY public.posto."idPosto";


--
-- TOC entry 214 (class 1259 OID 26121)
-- Name: recebimento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recebimento (
    "idRecebimento" integer NOT NULL,
    "quantidadeMedicamentos" integer NOT NULL,
    data_hora timestamp without time zone NOT NULL,
    "pessoaId" integer,
    "titularId" integer
);


ALTER TABLE public.recebimento OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 26119)
-- Name: recebimento_idRecebimento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."recebimento_idRecebimento_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."recebimento_idRecebimento_seq" OWNER TO postgres;

--
-- TOC entry 2421 (class 0 OID 0)
-- Dependencies: 213
-- Name: recebimento_idRecebimento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."recebimento_idRecebimento_seq" OWNED BY public.recebimento."idRecebimento";


--
-- TOC entry 212 (class 1259 OID 26113)
-- Name: recebimento_medicamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recebimento_medicamento (
    "idRecebimento" integer NOT NULL,
    "quantidadeMedicamentos" integer NOT NULL,
    data_hora timestamp without time zone NOT NULL,
    "atedenteId" integer,
    "recebimentoIdRecebimento" integer
);


ALTER TABLE public.recebimento_medicamento OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 26111)
-- Name: recebimento_medicamento_idRecebimento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."recebimento_medicamento_idRecebimento_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."recebimento_medicamento_idRecebimento_seq" OWNER TO postgres;

--
-- TOC entry 2422 (class 0 OID 0)
-- Dependencies: 211
-- Name: recebimento_medicamento_idRecebimento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."recebimento_medicamento_idRecebimento_seq" OWNED BY public.recebimento_medicamento."idRecebimento";


--
-- TOC entry 218 (class 1259 OID 26137)
-- Name: sexo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sexo (
    id_sexo integer NOT NULL,
    tipo character varying(10) NOT NULL
);


ALTER TABLE public.sexo OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 26135)
-- Name: sexo_id_sexo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sexo_id_sexo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sexo_id_sexo_seq OWNER TO postgres;

--
-- TOC entry 2423 (class 0 OID 0)
-- Dependencies: 217
-- Name: sexo_id_sexo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sexo_id_sexo_seq OWNED BY public.sexo.id_sexo;


--
-- TOC entry 184 (class 1259 OID 26001)
-- Name: solicitacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.solicitacao (
    "idSolicitacao" integer NOT NULL,
    data_hora timestamp without time zone NOT NULL,
    "estadoSolicitacaoIdEstadoSolicitacao" integer,
    "titularId" integer
);


ALTER TABLE public.solicitacao OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 25999)
-- Name: solicitacao_idSolicitacao_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."solicitacao_idSolicitacao_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."solicitacao_idSolicitacao_seq" OWNER TO postgres;

--
-- TOC entry 2424 (class 0 OID 0)
-- Dependencies: 183
-- Name: solicitacao_idSolicitacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."solicitacao_idSolicitacao_seq" OWNED BY public.solicitacao."idSolicitacao";


--
-- TOC entry 202 (class 1259 OID 26073)
-- Name: tipo_controle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_controle (
    "idTipoControle" integer NOT NULL
);


ALTER TABLE public.tipo_controle OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 26071)
-- Name: tipo_controle_idTipoControle_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tipo_controle_idTipoControle_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tipo_controle_idTipoControle_seq" OWNER TO postgres;

--
-- TOC entry 2425 (class 0 OID 0)
-- Dependencies: 201
-- Name: tipo_controle_idTipoControle_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tipo_controle_idTipoControle_seq" OWNED BY public.tipo_controle."idTipoControle";


--
-- TOC entry 216 (class 1259 OID 26129)
-- Name: titular; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titular (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    data_nascimento timestamp without time zone NOT NULL,
    cpf character varying(12) NOT NULL,
    "numero_SUS" integer NOT NULL,
    rg integer NOT NULL
);


ALTER TABLE public.titular OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 26127)
-- Name: titular_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.titular_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.titular_id_seq OWNER TO postgres;

--
-- TOC entry 2426 (class 0 OID 0)
-- Dependencies: 215
-- Name: titular_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.titular_id_seq OWNED BY public.titular.id;


--
-- TOC entry 2161 (class 2604 OID 26108)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atendente ALTER COLUMN id SET DEFAULT nextval('public.atendente_id_seq'::regclass);


--
-- TOC entry 2151 (class 2604 OID 26028)
-- Name: idBairro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bairro ALTER COLUMN "idBairro" SET DEFAULT nextval('public."bairro_idBairro_seq"'::regclass);


--
-- TOC entry 2153 (class 2604 OID 26044)
-- Name: idCategoria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN "idCategoria" SET DEFAULT nextval('public."categoria_idCategoria_seq"'::regclass);


--
-- TOC entry 2158 (class 2604 OID 26084)
-- Name: idControle; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.controle ALTER COLUMN "idControle" SET DEFAULT nextval('public."controle_idControle_seq"'::regclass);


--
-- TOC entry 2149 (class 2604 OID 26012)
-- Name: idEstado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado ALTER COLUMN "idEstado" SET DEFAULT nextval('public."estado_idEstado_seq"'::regclass);


--
-- TOC entry 2154 (class 2604 OID 26052)
-- Name: idEstadoMedicamento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_medicamento ALTER COLUMN "idEstadoMedicamento" SET DEFAULT nextval('public."estado_medicamento_idEstadoMedicamento_seq"'::regclass);


--
-- TOC entry 2147 (class 2604 OID 25996)
-- Name: idEstadoSolicitacao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_solicitacao ALTER COLUMN "idEstadoSolicitacao" SET DEFAULT nextval('public."estado_solicitacao_idEstadoSolicitacao_seq"'::regclass);


--
-- TOC entry 2152 (class 2604 OID 26036)
-- Name: idLaboratorio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laboratorio ALTER COLUMN "idLaboratorio" SET DEFAULT nextval('public."laboratorio_idLaboratorio_seq"'::regclass);


--
-- TOC entry 2156 (class 2604 OID 26068)
-- Name: idLote; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lote ALTER COLUMN "idLote" SET DEFAULT nextval('public."lote_idLote_seq"'::regclass);


--
-- TOC entry 2155 (class 2604 OID 26060)
-- Name: idMedicamento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento ALTER COLUMN "idMedicamento" SET DEFAULT nextval('public."medicamento_idMedicamento_seq"'::regclass);


--
-- TOC entry 2159 (class 2604 OID 26092)
-- Name: idMedicamentoPosto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto ALTER COLUMN "idMedicamentoPosto" SET DEFAULT nextval('public."medicamento_posto_idMedicamentoPosto_seq"'::regclass);


--
-- TOC entry 2150 (class 2604 OID 26020)
-- Name: idMunicipio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio ALTER COLUMN "idMunicipio" SET DEFAULT nextval('public."municipio_idMunicipio_seq"'::regclass);


--
-- TOC entry 2166 (class 2604 OID 26148)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoa ALTER COLUMN id SET DEFAULT nextval('public.pessoa_id_seq'::regclass);


--
-- TOC entry 2160 (class 2604 OID 26100)
-- Name: idPosto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posto ALTER COLUMN "idPosto" SET DEFAULT nextval('public."posto_idPosto_seq"'::regclass);


--
-- TOC entry 2163 (class 2604 OID 26124)
-- Name: idRecebimento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento ALTER COLUMN "idRecebimento" SET DEFAULT nextval('public."recebimento_idRecebimento_seq"'::regclass);


--
-- TOC entry 2162 (class 2604 OID 26116)
-- Name: idRecebimento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento_medicamento ALTER COLUMN "idRecebimento" SET DEFAULT nextval('public."recebimento_medicamento_idRecebimento_seq"'::regclass);


--
-- TOC entry 2165 (class 2604 OID 26140)
-- Name: id_sexo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sexo ALTER COLUMN id_sexo SET DEFAULT nextval('public.sexo_id_sexo_seq'::regclass);


--
-- TOC entry 2148 (class 2604 OID 26004)
-- Name: idSolicitacao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao ALTER COLUMN "idSolicitacao" SET DEFAULT nextval('public."solicitacao_idSolicitacao_seq"'::regclass);


--
-- TOC entry 2157 (class 2604 OID 26076)
-- Name: idTipoControle; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_controle ALTER COLUMN "idTipoControle" SET DEFAULT nextval('public."tipo_controle_idTipoControle_seq"'::regclass);


--
-- TOC entry 2164 (class 2604 OID 26132)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titular ALTER COLUMN id SET DEFAULT nextval('public.titular_id_seq'::regclass);


--
-- TOC entry 2395 (class 0 OID 26156)
-- Dependencies: 222
-- Data for Name: Medicamento_Categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Medicamento_Categoria" ("medicamentoIdMedicamento", "categoriaIdCategoria") FROM stdin;
\.


--
-- TOC entry 2394 (class 0 OID 26151)
-- Dependencies: 221
-- Data for Name: Medicamento_Laboratorio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Medicamento_Laboratorio" ("medicamentoIdMedicamento", "laboratorioIdLaboratorio") FROM stdin;
\.


--
-- TOC entry 2396 (class 0 OID 26161)
-- Dependencies: 223
-- Data for Name: Medicamento_Solicitacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Medicamento_Solicitacao" ("medicamentoIdMedicamento", "solicitacaoIdSolicitacao") FROM stdin;
\.


--
-- TOC entry 2383 (class 0 OID 26105)
-- Dependencies: 210
-- Data for Name: atendente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.atendente (id, nome, data_nascimento, cpf, numero_registro, rg, "postoIdPosto", "controleIdControle") FROM stdin;
\.


--
-- TOC entry 2427 (class 0 OID 0)
-- Dependencies: 209
-- Name: atendente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.atendente_id_seq', 1, false);


--
-- TOC entry 2363 (class 0 OID 26025)
-- Dependencies: 190
-- Data for Name: bairro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bairro ("idBairro", nome, "municipioIdMunicipio") FROM stdin;
\.


--
-- TOC entry 2428 (class 0 OID 0)
-- Dependencies: 189
-- Name: bairro_idBairro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."bairro_idBairro_seq"', 1, false);


--
-- TOC entry 2367 (class 0 OID 26041)
-- Dependencies: 194
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria ("idCategoria", tipo) FROM stdin;
\.


--
-- TOC entry 2429 (class 0 OID 0)
-- Dependencies: 193
-- Name: categoria_idCategoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."categoria_idCategoria_seq"', 1, false);


--
-- TOC entry 2377 (class 0 OID 26081)
-- Dependencies: 204
-- Data for Name: controle; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.controle ("idControle", quantidade, "codigoBarras", data_hora, "tipoControleIdTipoControle", "medicamentoPostoIdMedicamentoPosto") FROM stdin;
\.


--
-- TOC entry 2430 (class 0 OID 0)
-- Dependencies: 203
-- Name: controle_idControle_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."controle_idControle_seq"', 1, false);


--
-- TOC entry 2359 (class 0 OID 26009)
-- Dependencies: 186
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estado ("idEstado", nome) FROM stdin;
\.


--
-- TOC entry 2431 (class 0 OID 0)
-- Dependencies: 185
-- Name: estado_idEstado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."estado_idEstado_seq"', 1, false);


--
-- TOC entry 2369 (class 0 OID 26049)
-- Dependencies: 196
-- Data for Name: estado_medicamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estado_medicamento ("idEstadoMedicamento", tipo) FROM stdin;
\.


--
-- TOC entry 2432 (class 0 OID 0)
-- Dependencies: 195
-- Name: estado_medicamento_idEstadoMedicamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."estado_medicamento_idEstadoMedicamento_seq"', 1, false);


--
-- TOC entry 2355 (class 0 OID 25993)
-- Dependencies: 182
-- Data for Name: estado_solicitacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estado_solicitacao ("idEstadoSolicitacao", tipo) FROM stdin;
\.


--
-- TOC entry 2433 (class 0 OID 0)
-- Dependencies: 181
-- Name: estado_solicitacao_idEstadoSolicitacao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."estado_solicitacao_idEstadoSolicitacao_seq"', 1, false);


--
-- TOC entry 2365 (class 0 OID 26033)
-- Dependencies: 192
-- Data for Name: laboratorio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.laboratorio ("idLaboratorio", nome) FROM stdin;
\.


--
-- TOC entry 2434 (class 0 OID 0)
-- Dependencies: 191
-- Name: laboratorio_idLaboratorio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."laboratorio_idLaboratorio_seq"', 1, false);


--
-- TOC entry 2373 (class 0 OID 26065)
-- Dependencies: 200
-- Data for Name: lote; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lote ("idLote", quantidade, "dataVencimento", numero, "medicamentoPostoIdMedicamentoPosto") FROM stdin;
\.


--
-- TOC entry 2435 (class 0 OID 0)
-- Dependencies: 199
-- Name: lote_idLote_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."lote_idLote_seq"', 1, false);


--
-- TOC entry 2371 (class 0 OID 26057)
-- Dependencies: 198
-- Data for Name: medicamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medicamento ("idMedicamento", nome, bula, "estadoMedicamentoIdEstadoMedicamento", "recebimentoMedicamentoIdRecebimento") FROM stdin;
\.


--
-- TOC entry 2436 (class 0 OID 0)
-- Dependencies: 197
-- Name: medicamento_idMedicamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."medicamento_idMedicamento_seq"', 1, false);


--
-- TOC entry 2379 (class 0 OID 26089)
-- Dependencies: 206
-- Data for Name: medicamento_posto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medicamento_posto ("idMedicamentoPosto", "postoIdPosto", "medicamentoIdMedicamento", "loteIdLote") FROM stdin;
\.


--
-- TOC entry 2437 (class 0 OID 0)
-- Dependencies: 205
-- Name: medicamento_posto_idMedicamentoPosto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."medicamento_posto_idMedicamentoPosto_seq"', 1, false);


--
-- TOC entry 2361 (class 0 OID 26017)
-- Dependencies: 188
-- Data for Name: municipio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.municipio ("idMunicipio", nome, "estadoIdEstado") FROM stdin;
\.


--
-- TOC entry 2438 (class 0 OID 0)
-- Dependencies: 187
-- Name: municipio_idMunicipio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."municipio_idMunicipio_seq"', 1, false);


--
-- TOC entry 2393 (class 0 OID 26145)
-- Dependencies: 220
-- Data for Name: pessoa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pessoa (id, nome, data_nascimento, cpf, "titularId", "sexoIdSexo") FROM stdin;
\.


--
-- TOC entry 2439 (class 0 OID 0)
-- Dependencies: 219
-- Name: pessoa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pessoa_id_seq', 1, false);


--
-- TOC entry 2381 (class 0 OID 26097)
-- Dependencies: 208
-- Data for Name: posto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posto ("idPosto", complemento, cep, numero, "coordGeoLong", "coordGeoLat", "bairroIdBairro") FROM stdin;
\.


--
-- TOC entry 2440 (class 0 OID 0)
-- Dependencies: 207
-- Name: posto_idPosto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."posto_idPosto_seq"', 1, false);


--
-- TOC entry 2387 (class 0 OID 26121)
-- Dependencies: 214
-- Data for Name: recebimento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recebimento ("idRecebimento", "quantidadeMedicamentos", data_hora, "pessoaId", "titularId") FROM stdin;
\.


--
-- TOC entry 2441 (class 0 OID 0)
-- Dependencies: 213
-- Name: recebimento_idRecebimento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."recebimento_idRecebimento_seq"', 1, false);


--
-- TOC entry 2385 (class 0 OID 26113)
-- Dependencies: 212
-- Data for Name: recebimento_medicamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recebimento_medicamento ("idRecebimento", "quantidadeMedicamentos", data_hora, "atedenteId", "recebimentoIdRecebimento") FROM stdin;
\.


--
-- TOC entry 2442 (class 0 OID 0)
-- Dependencies: 211
-- Name: recebimento_medicamento_idRecebimento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."recebimento_medicamento_idRecebimento_seq"', 1, false);


--
-- TOC entry 2391 (class 0 OID 26137)
-- Dependencies: 218
-- Data for Name: sexo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sexo (id_sexo, tipo) FROM stdin;
\.


--
-- TOC entry 2443 (class 0 OID 0)
-- Dependencies: 217
-- Name: sexo_id_sexo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sexo_id_sexo_seq', 1, false);


--
-- TOC entry 2357 (class 0 OID 26001)
-- Dependencies: 184
-- Data for Name: solicitacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.solicitacao ("idSolicitacao", data_hora, "estadoSolicitacaoIdEstadoSolicitacao", "titularId") FROM stdin;
\.


--
-- TOC entry 2444 (class 0 OID 0)
-- Dependencies: 183
-- Name: solicitacao_idSolicitacao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."solicitacao_idSolicitacao_seq"', 1, false);


--
-- TOC entry 2375 (class 0 OID 26073)
-- Dependencies: 202
-- Data for Name: tipo_controle; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_controle ("idTipoControle") FROM stdin;
\.


--
-- TOC entry 2445 (class 0 OID 0)
-- Dependencies: 201
-- Name: tipo_controle_idTipoControle_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tipo_controle_idTipoControle_seq"', 1, false);


--
-- TOC entry 2389 (class 0 OID 26129)
-- Dependencies: 216
-- Data for Name: titular; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.titular (id, nome, data_nascimento, cpf, "numero_SUS", rg) FROM stdin;
\.


--
-- TOC entry 2446 (class 0 OID 0)
-- Dependencies: 215
-- Name: titular_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.titular_id_seq', 1, false);


--
-- TOC entry 2202 (class 2606 OID 26134)
-- Name: PK_17a47f8d3e52e735ab39702880b; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titular
    ADD CONSTRAINT "PK_17a47f8d3e52e735ab39702880b" PRIMARY KEY (id);


--
-- TOC entry 2200 (class 2606 OID 26126)
-- Name: PK_183e2a97fc87bf9fde51308fd2e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento
    ADD CONSTRAINT "PK_183e2a97fc87bf9fde51308fd2e" PRIMARY KEY ("idRecebimento");


--
-- TOC entry 2170 (class 2606 OID 26006)
-- Name: PK_1ea30abea1e1617f161924c33eb; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao
    ADD CONSTRAINT "PK_1ea30abea1e1617f161924c33eb" PRIMARY KEY ("idSolicitacao");


--
-- TOC entry 2192 (class 2606 OID 26094)
-- Name: PK_346e0166e819419b545f6e60ecd; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "PK_346e0166e819419b545f6e60ecd" PRIMARY KEY ("idMedicamentoPosto");


--
-- TOC entry 2178 (class 2606 OID 26038)
-- Name: PK_3ec6e8865a74b47499a298b59e0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laboratorio
    ADD CONSTRAINT "PK_3ec6e8865a74b47499a298b59e0" PRIMARY KEY ("idLaboratorio");


--
-- TOC entry 2180 (class 2606 OID 26046)
-- Name: PK_477e91f3922a7b98a2a036d62cd; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT "PK_477e91f3922a7b98a2a036d62cd" PRIMARY KEY ("idCategoria");


--
-- TOC entry 2182 (class 2606 OID 26054)
-- Name: PK_613472a14875390d66c94d97104; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_medicamento
    ADD CONSTRAINT "PK_613472a14875390d66c94d97104" PRIMARY KEY ("idEstadoMedicamento");


--
-- TOC entry 2196 (class 2606 OID 26110)
-- Name: PK_695420d3280fdd5b0270622775f; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atendente
    ADD CONSTRAINT "PK_695420d3280fdd5b0270622775f" PRIMARY KEY (id);


--
-- TOC entry 2168 (class 2606 OID 25998)
-- Name: PK_733c8b1c458f84241e314dc5c65; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_solicitacao
    ADD CONSTRAINT "PK_733c8b1c458f84241e314dc5c65" PRIMARY KEY ("idEstadoSolicitacao");


--
-- TOC entry 2194 (class 2606 OID 26102)
-- Name: PK_951c400e4d50fd54f00b92c3bb1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posto
    ADD CONSTRAINT "PK_951c400e4d50fd54f00b92c3bb1" PRIMARY KEY ("idPosto");


--
-- TOC entry 2176 (class 2606 OID 26030)
-- Name: PK_95e218378cc8819aa39cf99919d; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bairro
    ADD CONSTRAINT "PK_95e218378cc8819aa39cf99919d" PRIMARY KEY ("idBairro");


--
-- TOC entry 2208 (class 2606 OID 26155)
-- Name: PK_a48ae4f9df96e345949e25443b2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Laboratorio"
    ADD CONSTRAINT "PK_a48ae4f9df96e345949e25443b2" PRIMARY KEY ("medicamentoIdMedicamento", "laboratorioIdLaboratorio");


--
-- TOC entry 2172 (class 2606 OID 26014)
-- Name: PK_b241aab02622741e8d03e871ada; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT "PK_b241aab02622741e8d03e871ada" PRIMARY KEY ("idEstado");


--
-- TOC entry 2206 (class 2606 OID 26150)
-- Name: PK_bb879ac36994545a5a917a09ba5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoa
    ADD CONSTRAINT "PK_bb879ac36994545a5a917a09ba5" PRIMARY KEY (id);


--
-- TOC entry 2184 (class 2606 OID 26062)
-- Name: PK_bcf1d0917b42f29db9155021321; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT "PK_bcf1d0917b42f29db9155021321" PRIMARY KEY ("idMedicamento");


--
-- TOC entry 2190 (class 2606 OID 26086)
-- Name: PK_bf8daf4d5b21fe93238ab13b377; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.controle
    ADD CONSTRAINT "PK_bf8daf4d5b21fe93238ab13b377" PRIMARY KEY ("idControle");


--
-- TOC entry 2198 (class 2606 OID 26118)
-- Name: PK_cb87e6d8e53fbb5ad5a6d72057f; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento_medicamento
    ADD CONSTRAINT "PK_cb87e6d8e53fbb5ad5a6d72057f" PRIMARY KEY ("idRecebimento");


--
-- TOC entry 2174 (class 2606 OID 26022)
-- Name: PK_d510a7de2b2c1b93c004449a765; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT "PK_d510a7de2b2c1b93c004449a765" PRIMARY KEY ("idMunicipio");


--
-- TOC entry 2186 (class 2606 OID 26070)
-- Name: PK_d5181dc5ec69ce4937527cf6a05; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lote
    ADD CONSTRAINT "PK_d5181dc5ec69ce4937527cf6a05" PRIMARY KEY ("idLote");


--
-- TOC entry 2212 (class 2606 OID 26165)
-- Name: PK_d8b6c88b3005737849ec9ef25e9; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Solicitacao"
    ADD CONSTRAINT "PK_d8b6c88b3005737849ec9ef25e9" PRIMARY KEY ("medicamentoIdMedicamento", "solicitacaoIdSolicitacao");


--
-- TOC entry 2204 (class 2606 OID 26142)
-- Name: PK_d9405c325ee4fbffcbe8f83ee37; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sexo
    ADD CONSTRAINT "PK_d9405c325ee4fbffcbe8f83ee37" PRIMARY KEY (id_sexo);


--
-- TOC entry 2188 (class 2606 OID 26078)
-- Name: PK_dcdf3a4e5cf930e4e6e3122a277; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_controle
    ADD CONSTRAINT "PK_dcdf3a4e5cf930e4e6e3122a277" PRIMARY KEY ("idTipoControle");


--
-- TOC entry 2210 (class 2606 OID 26160)
-- Name: PK_fd518b34e3d743151329cb4a8cf; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Categoria"
    ADD CONSTRAINT "PK_fd518b34e3d743151329cb4a8cf" PRIMARY KEY ("medicamentoIdMedicamento", "categoriaIdCategoria");


--
-- TOC entry 2231 (class 2606 OID 26256)
-- Name: FK_00abfcae567f96c0e2107b82bed; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento
    ADD CONSTRAINT "FK_00abfcae567f96c0e2107b82bed" FOREIGN KEY ("titularId") REFERENCES public.titular(id);


--
-- TOC entry 2218 (class 2606 OID 26191)
-- Name: FK_14c55ec51da084d2c99171dbcf2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT "FK_14c55ec51da084d2c99171dbcf2" FOREIGN KEY ("recebimentoMedicamentoIdRecebimento") REFERENCES public.recebimento_medicamento("idRecebimento");


--
-- TOC entry 2221 (class 2606 OID 26206)
-- Name: FK_1808309ac2bdd3b42444e816242; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.controle
    ADD CONSTRAINT "FK_1808309ac2bdd3b42444e816242" FOREIGN KEY ("medicamentoPostoIdMedicamentoPosto") REFERENCES public.medicamento_posto("idMedicamentoPosto");


--
-- TOC entry 2223 (class 2606 OID 26216)
-- Name: FK_19388db293da3dbd9a8673ee90b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "FK_19388db293da3dbd9a8673ee90b" FOREIGN KEY ("medicamentoIdMedicamento") REFERENCES public.medicamento("idMedicamento");


--
-- TOC entry 2233 (class 2606 OID 26266)
-- Name: FK_19448d9959b32dc614ce2dd70fd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoa
    ADD CONSTRAINT "FK_19448d9959b32dc614ce2dd70fd" FOREIGN KEY ("sexoIdSexo") REFERENCES public.sexo(id_sexo);


--
-- TOC entry 2239 (class 2606 OID 26296)
-- Name: FK_1f1e0f7afe0558188b62d29c038; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Solicitacao"
    ADD CONSTRAINT "FK_1f1e0f7afe0558188b62d29c038" FOREIGN KEY ("solicitacaoIdSolicitacao") REFERENCES public.solicitacao("idSolicitacao") ON DELETE CASCADE;


--
-- TOC entry 2230 (class 2606 OID 26251)
-- Name: FK_307bb1dcc300ea2a83ef65a3cdb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento
    ADD CONSTRAINT "FK_307bb1dcc300ea2a83ef65a3cdb" FOREIGN KEY ("pessoaId") REFERENCES public.pessoa(id);


--
-- TOC entry 2224 (class 2606 OID 26221)
-- Name: FK_31c0dc608d28f80f59748fdd10c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "FK_31c0dc608d28f80f59748fdd10c" FOREIGN KEY ("loteIdLote") REFERENCES public.lote("idLote");


--
-- TOC entry 2214 (class 2606 OID 26171)
-- Name: FK_339a02417d43cdf673f2ece9738; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao
    ADD CONSTRAINT "FK_339a02417d43cdf673f2ece9738" FOREIGN KEY ("titularId") REFERENCES public.titular(id);


--
-- TOC entry 2226 (class 2606 OID 26231)
-- Name: FK_35199ddca7478d340b04dfab9c7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atendente
    ADD CONSTRAINT "FK_35199ddca7478d340b04dfab9c7" FOREIGN KEY ("postoIdPosto") REFERENCES public.posto("idPosto");


--
-- TOC entry 2232 (class 2606 OID 26261)
-- Name: FK_45e3ac61378f59226dc4091709d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoa
    ADD CONSTRAINT "FK_45e3ac61378f59226dc4091709d" FOREIGN KEY ("titularId") REFERENCES public.titular(id);


--
-- TOC entry 2217 (class 2606 OID 26186)
-- Name: FK_4e1fc58b660419c267361765f40; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT "FK_4e1fc58b660419c267361765f40" FOREIGN KEY ("estadoMedicamentoIdEstadoMedicamento") REFERENCES public.estado_medicamento("idEstadoMedicamento");


--
-- TOC entry 2234 (class 2606 OID 26271)
-- Name: FK_4fa9d3691553f9af395acbe9013; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Laboratorio"
    ADD CONSTRAINT "FK_4fa9d3691553f9af395acbe9013" FOREIGN KEY ("medicamentoIdMedicamento") REFERENCES public.medicamento("idMedicamento") ON DELETE CASCADE;


--
-- TOC entry 2216 (class 2606 OID 26181)
-- Name: FK_5b0755e03593b8a48da9e2d60a0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bairro
    ADD CONSTRAINT "FK_5b0755e03593b8a48da9e2d60a0" FOREIGN KEY ("municipioIdMunicipio") REFERENCES public.municipio("idMunicipio");


--
-- TOC entry 2238 (class 2606 OID 26291)
-- Name: FK_622a5d1f8e6ae87d8ffb09a5085; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Solicitacao"
    ADD CONSTRAINT "FK_622a5d1f8e6ae87d8ffb09a5085" FOREIGN KEY ("medicamentoIdMedicamento") REFERENCES public.medicamento("idMedicamento") ON DELETE CASCADE;


--
-- TOC entry 2220 (class 2606 OID 26201)
-- Name: FK_71c2ec99bc522269d7aa2e07a88; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.controle
    ADD CONSTRAINT "FK_71c2ec99bc522269d7aa2e07a88" FOREIGN KEY ("tipoControleIdTipoControle") REFERENCES public.tipo_controle("idTipoControle");


--
-- TOC entry 2215 (class 2606 OID 26176)
-- Name: FK_768a707d408935484eafbd3bc3c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT "FK_768a707d408935484eafbd3bc3c" FOREIGN KEY ("estadoIdEstado") REFERENCES public.estado("idEstado");


--
-- TOC entry 2227 (class 2606 OID 26236)
-- Name: FK_7c23bbedbaaddef13c5b63345c4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atendente
    ADD CONSTRAINT "FK_7c23bbedbaaddef13c5b63345c4" FOREIGN KEY ("controleIdControle") REFERENCES public.controle("idControle");


--
-- TOC entry 2235 (class 2606 OID 26276)
-- Name: FK_84ac9f70c43e620672e877e13fa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Laboratorio"
    ADD CONSTRAINT "FK_84ac9f70c43e620672e877e13fa" FOREIGN KEY ("laboratorioIdLaboratorio") REFERENCES public.laboratorio("idLaboratorio") ON DELETE CASCADE;


--
-- TOC entry 2236 (class 2606 OID 26281)
-- Name: FK_981c981d9237819ec1223eeed2b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Categoria"
    ADD CONSTRAINT "FK_981c981d9237819ec1223eeed2b" FOREIGN KEY ("medicamentoIdMedicamento") REFERENCES public.medicamento("idMedicamento") ON DELETE CASCADE;


--
-- TOC entry 2219 (class 2606 OID 26196)
-- Name: FK_a1ffcd0b739d528eb3800dd8500; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lote
    ADD CONSTRAINT "FK_a1ffcd0b739d528eb3800dd8500" FOREIGN KEY ("medicamentoPostoIdMedicamentoPosto") REFERENCES public.medicamento_posto("idMedicamentoPosto");


--
-- TOC entry 2237 (class 2606 OID 26286)
-- Name: FK_a6f055bb1802e8f95a9aef5ca2d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Categoria"
    ADD CONSTRAINT "FK_a6f055bb1802e8f95a9aef5ca2d" FOREIGN KEY ("categoriaIdCategoria") REFERENCES public.categoria("idCategoria") ON DELETE CASCADE;


--
-- TOC entry 2229 (class 2606 OID 26246)
-- Name: FK_a71e89b12d9e0bd3803b7ba5129; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento_medicamento
    ADD CONSTRAINT "FK_a71e89b12d9e0bd3803b7ba5129" FOREIGN KEY ("recebimentoIdRecebimento") REFERENCES public.recebimento("idRecebimento");


--
-- TOC entry 2213 (class 2606 OID 26166)
-- Name: FK_b938895ecfe3741d96b4d847d6e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao
    ADD CONSTRAINT "FK_b938895ecfe3741d96b4d847d6e" FOREIGN KEY ("estadoSolicitacaoIdEstadoSolicitacao") REFERENCES public.estado_solicitacao("idEstadoSolicitacao");


--
-- TOC entry 2228 (class 2606 OID 26241)
-- Name: FK_dc13d563d3e12e1c870cac3e83b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento_medicamento
    ADD CONSTRAINT "FK_dc13d563d3e12e1c870cac3e83b" FOREIGN KEY ("atedenteId") REFERENCES public.atendente(id);


--
-- TOC entry 2225 (class 2606 OID 26226)
-- Name: FK_e786411690f02097b73e8be731b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posto
    ADD CONSTRAINT "FK_e786411690f02097b73e8be731b" FOREIGN KEY ("bairroIdBairro") REFERENCES public.bairro("idBairro");


--
-- TOC entry 2222 (class 2606 OID 26211)
-- Name: FK_ec1d4b0e6099481ab76718937db; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "FK_ec1d4b0e6099481ab76718937db" FOREIGN KEY ("postoIdPosto") REFERENCES public.posto("idPosto");


--
-- TOC entry 2405 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-09-19 00:54:15 BRT

--
-- PostgreSQL database dump complete
--

