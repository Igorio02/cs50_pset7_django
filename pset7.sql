--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO pset7_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: pset7_user
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO pset7_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pset7_user
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO pset7_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: pset7_user
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO pset7_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pset7_user
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO pset7_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: pset7_user
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO pset7_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pset7_user
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO pset7_user;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO pset7_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: pset7_user
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO pset7_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pset7_user
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: pset7_user
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO pset7_user;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pset7_user
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO pset7_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: pset7_user
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO pset7_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pset7_user
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO pset7_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: pset7_user
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO pset7_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pset7_user
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO pset7_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: pset7_user
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO pset7_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pset7_user
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO pset7_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: pset7_user
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO pset7_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pset7_user
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO pset7_user;

--
-- Name: stocks_financeuser; Type: TABLE; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE TABLE stocks_financeuser (
    id integer NOT NULL,
    cash double precision NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE stocks_financeuser OWNER TO pset7_user;

--
-- Name: stocks_financeuser_id_seq; Type: SEQUENCE; Schema: public; Owner: pset7_user
--

CREATE SEQUENCE stocks_financeuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stocks_financeuser_id_seq OWNER TO pset7_user;

--
-- Name: stocks_financeuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pset7_user
--

ALTER SEQUENCE stocks_financeuser_id_seq OWNED BY stocks_financeuser.id;


--
-- Name: stocks_stockholding; Type: TABLE; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE TABLE stocks_stockholding (
    id integer NOT NULL,
    symbol character varying(5) NOT NULL,
    owner_id integer NOT NULL,
    shares integer NOT NULL,
    CONSTRAINT stocks_stockholding_shares_check CHECK ((shares >= 0))
);


ALTER TABLE stocks_stockholding OWNER TO pset7_user;

--
-- Name: stocks_stockholding_id_seq; Type: SEQUENCE; Schema: public; Owner: pset7_user
--

CREATE SEQUENCE stocks_stockholding_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stocks_stockholding_id_seq OWNER TO pset7_user;

--
-- Name: stocks_stockholding_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pset7_user
--

ALTER SEQUENCE stocks_stockholding_id_seq OWNED BY stocks_stockholding.id;


--
-- Name: stocks_transaction; Type: TABLE; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE TABLE stocks_transaction (
    id integer NOT NULL,
    date timestamp with time zone NOT NULL,
    type integer NOT NULL,
    holding_id integer NOT NULL,
    price double precision NOT NULL,
    shares integer NOT NULL,
    CONSTRAINT stocks_transaction_shares_check CHECK ((shares >= 0))
);


ALTER TABLE stocks_transaction OWNER TO pset7_user;

--
-- Name: stocks_transaction_id_seq; Type: SEQUENCE; Schema: public; Owner: pset7_user
--

CREATE SEQUENCE stocks_transaction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stocks_transaction_id_seq OWNER TO pset7_user;

--
-- Name: stocks_transaction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pset7_user
--

ALTER SEQUENCE stocks_transaction_id_seq OWNED BY stocks_transaction.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY stocks_financeuser ALTER COLUMN id SET DEFAULT nextval('stocks_financeuser_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY stocks_stockholding ALTER COLUMN id SET DEFAULT nextval('stocks_stockholding_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY stocks_transaction ALTER COLUMN id SET DEFAULT nextval('stocks_transaction_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: pset7_user
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pset7_user
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: pset7_user
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pset7_user
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: pset7_user
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add finance user	7	add_financeuser
20	Can change finance user	7	change_financeuser
21	Can delete finance user	7	delete_financeuser
22	Can add stock holding	8	add_stockholding
23	Can change stock holding	8	change_stockholding
24	Can delete stock holding	8	delete_stockholding
25	Can add transaction	9	add_transaction
26	Can change transaction	9	change_transaction
27	Can delete transaction	9	delete_transaction
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pset7_user
--

SELECT pg_catalog.setval('auth_permission_id_seq', 27, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: pset7_user
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$24000$WwT9j6jNMbTy$Mqi6ebena8Hd3dyZPMCnZSY5PfAQtnMndEIr4m4QYi4=	\N	t	admin			02igorio@gmail.com	t	t	2016-07-17 19:26:36.528425+03
2	pbkdf2_sha256$24000$govaSVUs2Zi2$XN3CuqYk+n9VIFNol6GuYFneIQeD8fl0uMKNLmpyOYM=	2016-07-17 19:29:11.282825+03	f	test				f	t	2016-07-17 19:29:11.081727+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: pset7_user
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pset7_user
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pset7_user
--

SELECT pg_catalog.setval('auth_user_id_seq', 2, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: pset7_user
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pset7_user
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: pset7_user
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pset7_user
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: pset7_user
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	stocks	financeuser
8	stocks	stockholding
9	stocks	transaction
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pset7_user
--

SELECT pg_catalog.setval('django_content_type_id_seq', 9, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: pset7_user
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-07-17 19:25:28.632952+03
2	auth	0001_initial	2016-07-17 19:25:29.738457+03
3	admin	0001_initial	2016-07-17 19:25:30.015608+03
4	admin	0002_logentry_remove_auto_add	2016-07-17 19:25:30.070262+03
5	contenttypes	0002_remove_content_type_name	2016-07-17 19:25:30.136205+03
6	auth	0002_alter_permission_name_max_length	2016-07-17 19:25:30.169961+03
7	auth	0003_alter_user_email_max_length	2016-07-17 19:25:30.216026+03
8	auth	0004_alter_user_username_opts	2016-07-17 19:25:30.242141+03
9	auth	0005_alter_user_last_login_null	2016-07-17 19:25:30.292117+03
10	auth	0006_require_contenttypes_0002	2016-07-17 19:25:30.303392+03
11	auth	0007_alter_validators_add_error_messages	2016-07-17 19:25:30.331893+03
12	sessions	0001_initial	2016-07-17 19:25:30.560359+03
13	stocks	0001_initial	2016-07-17 19:25:31.072626+03
14	stocks	0002_auto_20150526_1755	2016-07-17 19:25:31.11654+03
15	stocks	0003_auto_20150530_1712	2016-07-17 19:25:31.730313+03
16	stocks	0004_auto_20150601_0305	2016-07-17 19:25:32.08567+03
17	stocks	0005_transaction_shares	2016-07-17 19:25:32.285356+03
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pset7_user
--

SELECT pg_catalog.setval('django_migrations_id_seq', 17, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: pset7_user
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
uy2i0yapfs9i7g8tflutppvf46em9fut	NmVmMjQ3NmZiZmIwNDdkYjE1MmFhMDIwM2IzMDNmYjJiNmQ4MGEzNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImMyZjg0ZmM3ZTIxZWY3YjliZTM0MTllZWNkNDk3ZDQ5NGJhODA4ZmUiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2016-07-31 19:29:11.294057+03
\.


--
-- Data for Name: stocks_financeuser; Type: TABLE DATA; Schema: public; Owner: pset7_user
--

COPY stocks_financeuser (id, cash, user_id) FROM stdin;
1	10000	2
\.


--
-- Name: stocks_financeuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pset7_user
--

SELECT pg_catalog.setval('stocks_financeuser_id_seq', 1, true);


--
-- Data for Name: stocks_stockholding; Type: TABLE DATA; Schema: public; Owner: pset7_user
--

COPY stocks_stockholding (id, symbol, owner_id, shares) FROM stdin;
2	MS	1	0
1	MSFT	1	0
\.


--
-- Name: stocks_stockholding_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pset7_user
--

SELECT pg_catalog.setval('stocks_stockholding_id_seq', 2, true);


--
-- Data for Name: stocks_transaction; Type: TABLE DATA; Schema: public; Owner: pset7_user
--

COPY stocks_transaction (id, date, type, holding_id, price, shares) FROM stdin;
1	2016-07-17 19:33:54.13783+03	1	1	53.7000000000000028	2
2	2016-07-17 19:34:00.670089+03	2	1	53.7000000000000028	1
3	2016-07-17 19:34:07.660608+03	1	2	28.0100000000000016	3
4	2016-07-17 19:34:13.403848+03	2	2	28.0100000000000016	2
5	2016-07-17 20:05:52.415931+03	2	2	28.0100000000000016	1
6	2016-07-17 20:06:12.165181+03	2	1	53.7000000000000028	1
\.


--
-- Name: stocks_transaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pset7_user
--

SELECT pg_catalog.setval('stocks_transaction_id_seq', 6, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: stocks_financeuser_pkey; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY stocks_financeuser
    ADD CONSTRAINT stocks_financeuser_pkey PRIMARY KEY (id);


--
-- Name: stocks_financeuser_user_id_key; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY stocks_financeuser
    ADD CONSTRAINT stocks_financeuser_user_id_key UNIQUE (user_id);


--
-- Name: stocks_stockholding_pkey; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY stocks_stockholding
    ADD CONSTRAINT stocks_stockholding_pkey PRIMARY KEY (id);


--
-- Name: stocks_transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: pset7_user; Tablespace: 
--

ALTER TABLE ONLY stocks_transaction
    ADD CONSTRAINT stocks_transaction_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: stocks_stockholding_5e7b1936; Type: INDEX; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE INDEX stocks_stockholding_5e7b1936 ON stocks_stockholding USING btree (owner_id);


--
-- Name: stocks_transaction_0d436bea; Type: INDEX; Schema: public; Owner: pset7_user; Tablespace: 
--

CREATE INDEX stocks_transaction_0d436bea ON stocks_transaction USING btree (holding_id);


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: stocks_financeuser_user_id_007366a0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY stocks_financeuser
    ADD CONSTRAINT stocks_financeuser_user_id_007366a0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: stocks_stockholding_owner_id_57e984f6_fk_stocks_financeuser_id; Type: FK CONSTRAINT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY stocks_stockholding
    ADD CONSTRAINT stocks_stockholding_owner_id_57e984f6_fk_stocks_financeuser_id FOREIGN KEY (owner_id) REFERENCES stocks_financeuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: stocks_transactio_holding_id_82aba518_fk_stocks_stockholding_id; Type: FK CONSTRAINT; Schema: public; Owner: pset7_user
--

ALTER TABLE ONLY stocks_transaction
    ADD CONSTRAINT stocks_transactio_holding_id_82aba518_fk_stocks_stockholding_id FOREIGN KEY (holding_id) REFERENCES stocks_stockholding(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

