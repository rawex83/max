PGDMP         3                w            admin_region    11.3    11.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16393    admin_region    DATABASE     �   CREATE DATABASE admin_region WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE admin_region;
             postgres    false            �            1259    16426 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         admin_region    false            �            1259    16424    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       admin_region    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       admin_region    false    202            �            1259    16436    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         admin_region    false            �            1259    16434    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       admin_region    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       admin_region    false    204            �            1259    16418    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         admin_region    false            �            1259    16416    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       admin_region    false    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       admin_region    false    200            �            1259    16444 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         admin_region    false            �            1259    16454    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         admin_region    false            �            1259    16452    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       admin_region    false    209            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       admin_region    false    208            �            1259    16442    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       admin_region    false    207            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       admin_region    false    206            �            1259    16462    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         admin_region    false            �            1259    16460 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       admin_region    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       admin_region    false    210            �            1259    16522    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         admin_region    false            �            1259    16520    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       admin_region    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       admin_region    false    212            �            1259    16408    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         admin_region    false            �            1259    16406    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       admin_region    false    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       admin_region    false    198            �            1259    16397    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         admin_region    false            �            1259    16395    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       admin_region    false    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       admin_region    false    196            �            1259    16553    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         admin_region    false            �            1259    16604    hockey_club    TABLE     �   CREATE TABLE public.hockey_club (
    id integer NOT NULL,
    naz character varying(1500) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.hockey_club;
       public         admin_region    false            �            1259    16602    hockey_club_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hockey_club_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hockey_club_id_seq;
       public       admin_region    false    224            �           0    0    hockey_club_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.hockey_club_id_seq OWNED BY public.hockey_club.id;
            public       admin_region    false    223            �            1259    16577    hockey_image    TABLE     �   CREATE TABLE public.hockey_image (
    id integer NOT NULL,
    img character varying(150) NOT NULL,
    naz character varying(100) NOT NULL,
    modal character varying(15) NOT NULL
);
     DROP TABLE public.hockey_image;
       public         admin_region    false            �            1259    16575    hockey_image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hockey_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.hockey_image_id_seq;
       public       admin_region    false    218            �           0    0    hockey_image_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.hockey_image_id_seq OWNED BY public.hockey_image.id;
            public       admin_region    false    217            �            1259    16565    hockey_main    TABLE     �   CREATE TABLE public.hockey_main (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    text character varying(500) NOT NULL
);
    DROP TABLE public.hockey_main;
       public         admin_region    false            �            1259    16563    hockey_main_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hockey_main_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hockey_main_id_seq;
       public       admin_region    false    216            �           0    0    hockey_main_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.hockey_main_id_seq OWNED BY public.hockey_main.id;
            public       admin_region    false    215            �            1259    16585    hockey_models    TABLE     �   CREATE TABLE public.hockey_models (
    id integer NOT NULL,
    img character varying(50) NOT NULL,
    text character varying(1000) NOT NULL,
    modal character varying(50) NOT NULL
);
 !   DROP TABLE public.hockey_models;
       public         admin_region    false            �            1259    16583    hockey_models_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hockey_models_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.hockey_models_id_seq;
       public       admin_region    false    220            �           0    0    hockey_models_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.hockey_models_id_seq OWNED BY public.hockey_models.id;
            public       admin_region    false    219            �            1259    16596    hockey_team    TABLE     �  CREATE TABLE public.hockey_team (
    id integer NOT NULL,
    img character varying(50) NOT NULL,
    name character varying(150) NOT NULL,
    "position" character varying(50) NOT NULL,
    age character varying(2) NOT NULL,
    rost character varying(3) NOT NULL,
    ves character varying(3) NOT NULL,
    hvat character varying(10) NOT NULL,
    model character varying(50) NOT NULL,
    contract character varying(50) NOT NULL
);
    DROP TABLE public.hockey_team;
       public         admin_region    false            �            1259    16594    hockey_team_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hockey_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hockey_team_id_seq;
       public       admin_region    false    222            �           0    0    hockey_team_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.hockey_team_id_seq OWNED BY public.hockey_team.id;
            public       admin_region    false    221            �
           2604    16429    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       admin_region    false    202    203    203            �
           2604    16439    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       admin_region    false    204    205    205            �
           2604    16421    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       admin_region    false    201    200    201            �
           2604    16447    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       admin_region    false    206    207    207            �
           2604    16457    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       admin_region    false    208    209    209            �
           2604    16465    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       admin_region    false    211    210    211            �
           2604    16525    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       admin_region    false    212    213    213            �
           2604    16411    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       admin_region    false    198    199    199            �
           2604    16400    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       admin_region    false    196    197    197            �
           2604    16607    hockey_club id    DEFAULT     p   ALTER TABLE ONLY public.hockey_club ALTER COLUMN id SET DEFAULT nextval('public.hockey_club_id_seq'::regclass);
 =   ALTER TABLE public.hockey_club ALTER COLUMN id DROP DEFAULT;
       public       admin_region    false    224    223    224            �
           2604    16580    hockey_image id    DEFAULT     r   ALTER TABLE ONLY public.hockey_image ALTER COLUMN id SET DEFAULT nextval('public.hockey_image_id_seq'::regclass);
 >   ALTER TABLE public.hockey_image ALTER COLUMN id DROP DEFAULT;
       public       admin_region    false    218    217    218            �
           2604    16568    hockey_main id    DEFAULT     p   ALTER TABLE ONLY public.hockey_main ALTER COLUMN id SET DEFAULT nextval('public.hockey_main_id_seq'::regclass);
 =   ALTER TABLE public.hockey_main ALTER COLUMN id DROP DEFAULT;
       public       admin_region    false    216    215    216            �
           2604    16588    hockey_models id    DEFAULT     t   ALTER TABLE ONLY public.hockey_models ALTER COLUMN id SET DEFAULT nextval('public.hockey_models_id_seq'::regclass);
 ?   ALTER TABLE public.hockey_models ALTER COLUMN id DROP DEFAULT;
       public       admin_region    false    220    219    220            �
           2604    16599    hockey_team id    DEFAULT     p   ALTER TABLE ONLY public.hockey_team ALTER COLUMN id SET DEFAULT nextval('public.hockey_team_id_seq'::regclass);
 =   ALTER TABLE public.hockey_team ALTER COLUMN id DROP DEFAULT;
       public       admin_region    false    222    221    222            �          0    16426 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       admin_region    false    203   _�       �          0    16436    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       admin_region    false    205   |�       �          0    16418    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       admin_region    false    201   ��       �          0    16444 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       admin_region    false    207   ��       �          0    16454    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       admin_region    false    209   Q�       �          0    16462    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       admin_region    false    211   n�       �          0    16522    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       admin_region    false    213   ��       �          0    16408    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       admin_region    false    199   �       �          0    16397    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       admin_region    false    197   ��       �          0    16553    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       admin_region    false    214   ٳ       �          0    16604    hockey_club 
   TABLE DATA               4   COPY public.hockey_club (id, naz, name) FROM stdin;
    public       admin_region    false    224   ��       �          0    16577    hockey_image 
   TABLE DATA               ;   COPY public.hockey_image (id, img, naz, modal) FROM stdin;
    public       admin_region    false    218   K�       �          0    16565    hockey_main 
   TABLE DATA               5   COPY public.hockey_main (id, name, text) FROM stdin;
    public       admin_region    false    216   @�       �          0    16585    hockey_models 
   TABLE DATA               =   COPY public.hockey_models (id, img, text, modal) FROM stdin;
    public       admin_region    false    220   �       �          0    16596    hockey_team 
   TABLE DATA               g   COPY public.hockey_team (id, img, name, "position", age, rost, ves, hvat, model, contract) FROM stdin;
    public       admin_region    false    222   �       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       admin_region    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       admin_region    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
            public       admin_region    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       admin_region    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
            public       admin_region    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       admin_region    false    210            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 49, true);
            public       admin_region    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
            public       admin_region    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);
            public       admin_region    false    196            �           0    0    hockey_club_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.hockey_club_id_seq', 1, true);
            public       admin_region    false    223            �           0    0    hockey_image_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hockey_image_id_seq', 7, true);
            public       admin_region    false    217            �           0    0    hockey_main_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.hockey_main_id_seq', 1, true);
            public       admin_region    false    215            �           0    0    hockey_models_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hockey_models_id_seq', 6, true);
            public       admin_region    false    219            �           0    0    hockey_team_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.hockey_team_id_seq', 3, true);
            public       admin_region    false    221            �
           2606    16551    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         admin_region    false    203            �
           2606    16488 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         admin_region    false    205    205            �
           2606    16441 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         admin_region    false    205            �
           2606    16431    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         admin_region    false    203            �
           2606    16474 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         admin_region    false    201    201            �
           2606    16423 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         admin_region    false    201                       2606    16459 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         admin_region    false    209                       2606    16503 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         admin_region    false    209    209            �
           2606    16449    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         admin_region    false    207                       2606    16467 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         admin_region    false    211                       2606    16517 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         admin_region    false    211    211            �
           2606    16545     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         admin_region    false    207                       2606    16531 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         admin_region    false    213            �
           2606    16415 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         admin_region    false    199    199            �
           2606    16413 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         admin_region    false    199            �
           2606    16405 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         admin_region    false    197                       2606    16560 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         admin_region    false    214                       2606    16612    hockey_club hockey_club_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.hockey_club
    ADD CONSTRAINT hockey_club_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.hockey_club DROP CONSTRAINT hockey_club_pkey;
       public         admin_region    false    224                       2606    16582    hockey_image hockey_image_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.hockey_image
    ADD CONSTRAINT hockey_image_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.hockey_image DROP CONSTRAINT hockey_image_pkey;
       public         admin_region    false    218                       2606    16570    hockey_main hockey_main_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.hockey_main
    ADD CONSTRAINT hockey_main_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.hockey_main DROP CONSTRAINT hockey_main_pkey;
       public         admin_region    false    216                       2606    16593     hockey_models hockey_models_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.hockey_models
    ADD CONSTRAINT hockey_models_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.hockey_models DROP CONSTRAINT hockey_models_pkey;
       public         admin_region    false    220                       2606    16601    hockey_team hockey_team_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.hockey_team
    ADD CONSTRAINT hockey_team_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.hockey_team DROP CONSTRAINT hockey_team_pkey;
       public         admin_region    false    222            �
           1259    16552    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         admin_region    false    203            �
           1259    16489 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         admin_region    false    205            �
           1259    16490 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         admin_region    false    205            �
           1259    16475 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         admin_region    false    201                        1259    16505 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         admin_region    false    209                       1259    16504 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         admin_region    false    209                       1259    16519 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         admin_region    false    211            	           1259    16518 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         admin_region    false    211            �
           1259    16546     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         admin_region    false    207                       1259    16542 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         admin_region    false    213                       1259    16543 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         admin_region    false    213                       1259    16562 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         admin_region    false    214                       1259    16561 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         admin_region    false    214                        2606    16482 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       admin_region    false    2799    205    201                       2606    16477 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       admin_region    false    203    2804    205                       2606    16468 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       admin_region    false    201    199    2794            "           2606    16497 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       admin_region    false    209    2804    203            !           2606    16492 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       admin_region    false    209    207    2812            $           2606    16511 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       admin_region    false    2799    201    211            #           2606    16506 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       admin_region    false    211    2812    207            %           2606    16532 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       admin_region    false    199    213    2794            &           2606    16537 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       admin_region    false    2812    213    207            �      x������ � �      �      x������ � �      �   �  x�m�KN�0��}�� �I�Zs$Z�Dj��IA�!زGB��$D�3�7�O�+�J����q���y^��b���]6۽P�>_�gx�	��u^.5Sn(��B�tá
0xS�[�ځ�F�l��뢮��	��9�qb���,;�LB#q3_��V��H!�K5�q�<v!Q��#��$	)�
�N}���[�A@�V�������#�:\܁qX�ai79�+ϫ���ڠ�o�A�#RMiH�1���<�Q�Cf�!�Y�k���1�L�y;=c�=0�����ʓp�͓9�w�g���f_�bq뼰��^�������1�qr�{1D;N�y6�����|�_�mb
��:_j���C15�=kQ�k�c!e�!���-��O�b�v��[˔ݕ�u���ݚ�v;��ܟ��D6���g~���Z{�'��lt���4��b���h/#��`�!��HB�s�VO�U(��b��]�,��<�8�4*�ؠ2�䍻έ�8�R���      �   �   x�]��
�0��W��4��&�)�Һ���u!H�UC����7n80p �K]^Ź�[�t �{�B�[]U8.Rls7Q<��+m�Ln����؄KS������l����)L�U�0<�2�A,!�H�ۺ'���z�-�Yk]�^o��=&�J������=.Q      �      x������ � �      �      x������ � �      �   i  x���͎�H �s�)��v�Ҫ���j_9q�7�����A��AB�xw�����v�	��?����+�"���s�5@��r���x��W��a�����������y�e�n����Y����*�����X���������ᮗ6��wۏ����q���y����l.����Ɔ��T{�徽۝O�$�,HV�"��<�HȂQ�a��'��(�\��8�B��@��,��h�WRB�Bܓ2�X� �����4+��Њ>`.
��d'�Y������s_9/>�=_8�9��`
�&��������/��n8���cƫq_��[.K�߻��]��I�J��%5�C�:#����p���7�7�����t��a_Py�� ���I}����K��S�2���5��U�6�m�M�9�\���WW�`��TI�:��K|�6Gc��������=y��hC@ �����2�xv<Q͒PdͿ��"���!dV&��#.j�:�HƸ@.�<so\�'�w�G��A~9��8.2����q�DES�<L�����qil�i���<o����'���U���K�!	`�G���2�Q�)�y1X	G>���&/��bG�M�z7i�+�����1��C�h*��o8�}"�xg���-g��\P�N�S���t�K/���#����9k�ӎ�\�:�I���^�P�m�ǾJ�������T����>�i��z	�v+[�%$��~r�V�Hc��5S��Ӂ.���u�$ !^�l���Ǻp��@yyn�.^G�kjb���4�m�SԄ����^jS��!��y�������q�8��)�'��e��$(�,���'���|�� T      �   y   x�M�K!��cĿwq�L�!MhXp{���W�R��B�(�s����T���$�_��6��gr��'k���.���u\i��AɆ�ۤ��g��,f?Ec�`�D���73�=�      �   <  x���ێ�0���S�}�h���,�,7q���)����;6	�	mVBp���?�1;�v��8^:?d ��j��ru& �=�=ᛀRb���V@B|ډ�M��k"�(��SS����H�yG��Ù�/��M����;��8 
���9�cZ��vg{|Ց�t	CRF�~�Kܪ����m]�U�U&�̒���}o;�7�0Ē"o�ikߞ��-����]U��7߸�~i!"%�"�kI��jB7n��J�J�BXj���0��+nl��f>[rA*�q�h��T�K�)v3ۖt�ܗ����������i���Co?������Ң�7�y����];��T<e�%U�1��M�pU��0u_�"�dы��qB�v}�����v<�'H���&��������W���=�����o %P���R�G+Ḣ@$@�"��G^��S�b����׏�.Qr	4�%p�K[5�zlN���]������m���b�+{����*1�gT������>^�DL#H�br��TZ�D=z�ҥ�Ō��ߚ���lbk1��@���a���Cֳ�      �     x�=�Mo�  @��W�h(�Lv�NC#���٥S@�cq������û�����c�gH�[�j���ݿ,>��D�}ϲ���E&:�-���f�X���[�I�L��ZDr��uF,V�]8ʽ�ɡ,R�դ#����f�g��x�oY�'b.C�*�<6�=��/�#x�E���}�*���G���ʥz�H�
�5�{���qx&j��N���"�dZdi+�r�SO4{7�#�p�Qc-9��!��8�^ �G��I���W���IO�di�      �   A  x��Umn�@�N�?[)��Js�즤��V���j��_�c\���^�'���]�u	�T`�c���{o{Gz��Z��d�2�N�����k�k���7�	~s3U������r�1S�	�e�s���ٗ��R���P��Ja8G�L鹼���t�59��I�y��/�9�����{�	�j��7����a�=��V�ǈw�3�x_�G��hf�͌x �L�`=@�ļ�!di&"�*8���P�7��iO�T*oP���n�.d����k�U1�D��fР���N;����Y�Iq� bv������9�g;���	L7�X4hD>� pl>�L�?_�ɑZ온�O�]2jaU�-��C���OC襉S*L�(��2+��E���a1mK+І��{xB'�V2�Ĉ���ZAz��	&>&��d��T��X��(��	�pVzIʳ��i3�S�hfl^뢩�T�uh�.�y�kGg���۲ek��r���I�KM��M�H������O�G��ԎΙ)�� l$�R4%e�V� ��k���YXTCa(N,� �|Ǿc��R��<���n��	)����Ph�$YE�]o2��6p'ܳ��	94�/���JO�u�у��`"aU�Br��9�ee�8�
_���53p�A-tU��20WX�3b��%�圠�J��F!�Hҷ[�,����0����!�(��c��^"i��*�)�ݓv`����wƤ����`�W�^�,�x���o�c��KA���w$���n`3] �n�|��|7v��k%1�������{�!��u�v;���Z��      �   �   x�u�=n�@�k�),Q���S�4H���(� ��t�"��Cd�
on���XT��V3��iދ��|0�u����.����̦�u^� {Ժ�5J|�@�R�A���v$���{�%���!�Yq��G�Oԡn8����5��cM���;(��yC%�z�������+�Q5TO2�:�.��6Pi�"��$�eVX�JxN�(Sy�(3�����_�k氽�|�ɤ��?y��w      �   �  x�}�aN�@��S�(��R�]z��*��P$ �T�	��ĉ-�o�Г��%D��Q�3~��͛��t����T�֩��[?��PC�ƀF��-oc��-�	ݫX���?4���&~U�y�U��@�kz��Gj���L�qWw�2��!jU�q ����ה��;hT�>a�$�	8�=�\o���Ut�E��>�|����&�;�|��-���cf��&q7!
�z[�S��P�^w�[MdΓl�-���DJ"ލ��/��,��UR8%[�ki�7 3`�Mӥs&�����	>0>yt �Nw��h�;V/����-�����3=ӡ��h�%�6�هnw�==��'A֥Wa�i�?��Wu �O�L�<��p��[�֕o+d�W/o�Sjv����~I����5{�����K�:_6:��?,��*      �   
  x��Y�n��m=���\^���� i�"��6@I�-C�u����n�(Z�(�Z�
�	ξB���}s�B�.I�6,��g�3��7�|����|���W_�[�a�O?�a��ow��?������f�'왁��(<��/��7�4c<�;���v�͊ۨԺ�f���/��L�v&�wf�y�#�����y8�G��Ԍ�c˜�w��j�m��
���1ð'
̄�_gfJw�WO������c>Q�O�r(����̃��m��������}�IM�l�T�:*|��B%b�=�[OX�l �R������Lx��Էk�yg�H&|�u��s�X7�@>�yq���Îx�R���ݦ�oT\~�'Um1�⬣�@��([�֭�]Q
�]�"O�u�i�*n��qn�d�QjI�TV�B�D�q�ꉎy�~}�H��^��h�7��9鰐��`��6�u��!"$��%d�4|x����ZA[PSC&��R5�Iu~�T���zJkQ�����Pssk�~��R������Lȟ !`!�Q8wa�1�ť����r6Q}�v��R� �	�B��M�D0,W�yx1�x$����Eǩ�F��n�[[&y*\�6R������p��(C�gS��B�RZ���8���-�ew"%��L�^Rcb��+_Ãp�٬�n��6K�'������^A;񴝼�,����ĝ��h������~�W�E����C�݈ŐW����^�^�O�e&fb�H�!O^�S~���EN�������
_�?E2f`|�md�^���k��S�˅^���������&�sշWȄ��L�H�򖈋���֐)�*��xv���Y�E>��݊zQ2�m�V��;�ws�z��Q*��u�h��oly��#AƢ��@�@DnCV�J�Qx�m���VyB�)�g�x ��"���O���?gE*"�o��>�vb�Z�i����Z��E�r�@f|_��~��l�HI�31ɚ<�=@l�x�><��L���˅�'�:/K�����9uN�"j[�T�5�="��V��o�&�`ו�6��[? ��e�t�|���������t6��j,Ig���F� �k��W"�Y]��d����	�<���YPp�^�&XVa�>z�ت�S�KjHw�ZH�ͦ����A6M|�����m�!n���+`��*�p�F9F��OUG66�'�4�Y�&7n�8n2�_�h�%ǭ�4Yk�ϣ� S3�鲝Ӷ��7k�"�����'��� ��uBj���� ��TNB^NbUN�_N�V��{g�u�0�Q���:��
���[���BzZ��V�R�8�M�`�����}��!��y#�!i�LG	���!E�e \B�N\�)�X������Ҹ��'���?��$u�z���eQ+P���GTP�bdm�Y��M��-^r8j��/��\��u�O����6f�uUߤ$�����%N��`>�i@��I�S.�r4�+̫:��/�z�{�w���p,A�1���	�w�b�p
�r� f��^f���=�]e��>�}�}$ ��{
�t	�8Ge{6��/��Y�x%�ɸ���u4�iyA��;!��_*�F˿��y��o�y�er`��.{e�����}d�C��U
��Mܴ������F�2�_$s,���bV�tm?��@ ���DB�V�u��uvMRt���S�,�!��N8�șc�0���a��E�D�)<���� ���XoLh3^>�	�S�#u]��r�pī4w[|/pbqE��0�iE����y���\�)���P��	��>\y �h�����5.�e\�,*Qs�2�:Z��r\�]]�W�kG�C�[�!�:r4�Y�^��b�h���<�%�cS #�E����+Φ:�juˑ����X���2;V�;݆�X��ř$g�0?뵅n�$�З�ڜ�FFo�u�A�*WW$��:iVL�Cb�x;u���n�,�*�X1oU0v�"c���x�ň�s� X��=��G� _�9G�s(�i�ާ���dY>F)���Z�*ĭ�X���g�0��d�M���ct��G/X��nh��VMX"gJNz��xTT/�(!q�&�����g�Rc%���	��s����$8iE�y��R'^y���D*i��嶜��u��M	��|&�=/#?
�%�S^�1�5�;=Gl/[XE<�H87wW�!<��|[ȩo�
 ����J-���� ����N5���H�S����E�mşۨog�/W֝#��!�嶘q��}%~{�=�~D�6K"W��C���D���x���\��J�K����J�B��;m���3=g�NrC��#C/-_	�KKb�*/��*1���T�TEw��E�bvn{o[z�˛qJqE��cM)��ch4gP�樊�aJs[$�hZ���lݧ`�Nʐa�R+��I�� "����GD�tr|��d*�C��j��/1@��=�[�un<ϥX��ʥ���W�R��v��ܘ��T.��RG��SΓ@@��P��pz����e��9���z0���W666��98      �   �   x���KJA����!�L��6�����@BPܺH��Ƞ��	�l����z��Yì�.
�A���d�.Z��h��>9=
�X��)0Enq�5���P�K��Nx)�ͼ��7�
oxm�O3����+��5�q�w�����.qG�:uF��5?�L�+�N5f�9,+v~�0��I쇨ۑ4�����!��<QkS����3�s�T<}��_�ǉ1�:�[     