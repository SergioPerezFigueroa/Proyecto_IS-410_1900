PGDMP     7    4            	    w            DB_aprendamos_1.0    11.5    11.5 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    24738    DB_aprendamos_1.0    DATABASE     �   CREATE DATABASE "DB_aprendamos_1.0" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Honduras.1252' LC_CTYPE = 'Spanish_Honduras.1252';
 #   DROP DATABASE "DB_aprendamos_1.0";
             postgres    false            �            1259    25327    Relacion_Alumnos_curso    TABLE     �   CREATE TABLE public."Relacion_Alumnos_curso" (
    id_alumno integer NOT NULL,
    codigo_seccion character(8) NOT NULL,
    nombre_alumno character(50),
    "Nota" integer
);
 ,   DROP TABLE public."Relacion_Alumnos_curso";
       public         postgres    false            �            1259    24773    persona    TABLE     >  CREATE TABLE public.persona (
    idpersona bigint NOT NULL,
    nombre character(50) NOT NULL,
    apellido character(50) NOT NULL,
    nacionalidad character(50) NOT NULL,
    email character(50),
    edad integer NOT NULL,
    sexo character(15) NOT NULL,
    telefono character(10),
    direccion character(50)
);
    DROP TABLE public.persona;
       public         postgres    false            �            1259    24788    administradores    TABLE     i   CREATE TABLE public.administradores (
    id_administrador integer NOT NULL
)
INHERITS (public.persona);
 #   DROP TABLE public.administradores;
       public         postgres    false    196            �            1259    25389 
   algoritmos    TABLE     m   CREATE TABLE public.algoritmos (
    no_lista integer NOT NULL
)
INHERITS (public."Relacion_Alumnos_curso");
    DROP TABLE public.algoritmos;
       public         postgres    false    205            �            1259    25387    algoritmos_no_lista_seq    SEQUENCE     �   CREATE SEQUENCE public.algoritmos_no_lista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.algoritmos_no_lista_seq;
       public       postgres    false    215            �           0    0    algoritmos_no_lista_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.algoritmos_no_lista_seq OWNED BY public.algoritmos.no_lista;
            public       postgres    false    214            �            1259    24778    alumnos    TABLE     u   CREATE TABLE public.alumnos (
    id_alumno integer NOT NULL,
    empresa character(50)
)
INHERITS (public.persona);
    DROP TABLE public.alumnos;
       public         postgres    false    196            �            1259    25381    autocad    TABLE     j   CREATE TABLE public.autocad (
    no_lista integer NOT NULL
)
INHERITS (public."Relacion_Alumnos_curso");
    DROP TABLE public.autocad;
       public         postgres    false    205            �            1259    25379    autocad_no_lista_seq    SEQUENCE     �   CREATE SEQUENCE public.autocad_no_lista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.autocad_no_lista_seq;
       public       postgres    false    213            �           0    0    autocad_no_lista_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.autocad_no_lista_seq OWNED BY public.autocad.no_lista;
            public       postgres    false    212            �            1259    25243    cursos    TABLE     �   CREATE TABLE public.cursos (
    codigo_curso character(8) NOT NULL,
    nombre character(50),
    modalidad character(14),
    duracion integer,
    costo integer
);
    DROP TABLE public.cursos;
       public         postgres    false            �            1259    25365    excel1    TABLE     i   CREATE TABLE public.excel1 (
    no_lista integer NOT NULL
)
INHERITS (public."Relacion_Alumnos_curso");
    DROP TABLE public.excel1;
       public         postgres    false    205            �            1259    25363    excel1_no_lista_seq    SEQUENCE     �   CREATE SEQUENCE public.excel1_no_lista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.excel1_no_lista_seq;
       public       postgres    false    209            �           0    0    excel1_no_lista_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.excel1_no_lista_seq OWNED BY public.excel1.no_lista;
            public       postgres    false    208            �            1259    25373    excel2    TABLE     i   CREATE TABLE public.excel2 (
    no_lista integer NOT NULL
)
INHERITS (public."Relacion_Alumnos_curso");
    DROP TABLE public.excel2;
       public         postgres    false    205            �            1259    25371    excel2_no_lista_seq    SEQUENCE     �   CREATE SEQUENCE public.excel2_no_lista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.excel2_no_lista_seq;
       public       postgres    false    211            �           0    0    excel2_no_lista_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.excel2_no_lista_seq OWNED BY public.excel2.no_lista;
            public       postgres    false    210            �            1259    24783    instructores    TABLE     �   CREATE TABLE public.instructores (
    id_instructor integer NOT NULL,
    especialidad character(50)
)
INHERITS (public.persona);
     DROP TABLE public.instructores;
       public         postgres    false    196            �            1259    25430    java    TABLE     g   CREATE TABLE public.java (
    no_lista integer NOT NULL
)
INHERITS (public."Relacion_Alumnos_curso");
    DROP TABLE public.java;
       public         postgres    false    205            �            1259    25428    java_no_lista_seq    SEQUENCE     �   CREATE SEQUENCE public.java_no_lista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.java_no_lista_seq;
       public       postgres    false    225            �           0    0    java_no_lista_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.java_no_lista_seq OWNED BY public.java.no_lista;
            public       postgres    false    224            �            1259    25260 	   matricula    TABLE     �   CREATE TABLE public.matricula (
    codigo_matricula integer NOT NULL,
    codigo_alumno integer,
    codigo_seccion character(8)
);
    DROP TABLE public.matricula;
       public         postgres    false            �            1259    25258    matricula_codigo_matricula_seq    SEQUENCE     �   CREATE SEQUENCE public.matricula_codigo_matricula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.matricula_codigo_matricula_seq;
       public       postgres    false    204            �           0    0    matricula_codigo_matricula_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.matricula_codigo_matricula_seq OWNED BY public.matricula.codigo_matricula;
            public       postgres    false    203            �            1259    25422    motivacion_trabajo    TABLE     u   CREATE TABLE public.motivacion_trabajo (
    no_lista integer NOT NULL
)
INHERITS (public."Relacion_Alumnos_curso");
 &   DROP TABLE public.motivacion_trabajo;
       public         postgres    false    205            �            1259    25420    motivacion_trabajo_no_lista_seq    SEQUENCE     �   CREATE SEQUENCE public.motivacion_trabajo_no_lista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.motivacion_trabajo_no_lista_seq;
       public       postgres    false    223            �           0    0    motivacion_trabajo_no_lista_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.motivacion_trabajo_no_lista_seq OWNED BY public.motivacion_trabajo.no_lista;
            public       postgres    false    222            �            1259    25357    poo    TABLE     f   CREATE TABLE public.poo (
    no_lista integer NOT NULL
)
INHERITS (public."Relacion_Alumnos_curso");
    DROP TABLE public.poo;
       public         postgres    false    205            �            1259    25355    poo_no_lista_seq    SEQUENCE     �   CREATE SEQUENCE public.poo_no_lista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.poo_no_lista_seq;
       public       postgres    false    207            �           0    0    poo_no_lista_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.poo_no_lista_seq OWNED BY public.poo.no_lista;
            public       postgres    false    206            �            1259    25397    redes1    TABLE     i   CREATE TABLE public.redes1 (
    no_lista integer NOT NULL
)
INHERITS (public."Relacion_Alumnos_curso");
    DROP TABLE public.redes1;
       public         postgres    false    205            �            1259    25395    redes1_no_lista_seq    SEQUENCE     �   CREATE SEQUENCE public.redes1_no_lista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.redes1_no_lista_seq;
       public       postgres    false    217            �           0    0    redes1_no_lista_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.redes1_no_lista_seq OWNED BY public.redes1.no_lista;
            public       postgres    false    216            �            1259    25405    redes2    TABLE     i   CREATE TABLE public.redes2 (
    no_lista integer NOT NULL
)
INHERITS (public."Relacion_Alumnos_curso");
    DROP TABLE public.redes2;
       public         postgres    false    205            �            1259    25403    redes2_no_lista_seq    SEQUENCE     �   CREATE SEQUENCE public.redes2_no_lista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.redes2_no_lista_seq;
       public       postgres    false    219            �           0    0    redes2_no_lista_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.redes2_no_lista_seq OWNED BY public.redes2.no_lista;
            public       postgres    false    218            �            1259    25413    redes3    TABLE     i   CREATE TABLE public.redes3 (
    no_lista integer NOT NULL
)
INHERITS (public."Relacion_Alumnos_curso");
    DROP TABLE public.redes3;
       public         postgres    false    205            �            1259    25411    redes3_no_lista_seq    SEQUENCE     �   CREATE SEQUENCE public.redes3_no_lista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.redes3_no_lista_seq;
       public       postgres    false    221            �           0    0    redes3_no_lista_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.redes3_no_lista_seq OWNED BY public.redes3.no_lista;
            public       postgres    false    220            �            1259    25225 	   secciones    TABLE     �   CREATE TABLE public.secciones (
    codigo_seccion character(8) NOT NULL,
    "codigo_Instructor" integer,
    codigo_curso character(8)
);
    DROP TABLE public.secciones;
       public         postgres    false            �            1259    25218    validaciones_cursos    TABLE     �   CREATE TABLE public.validaciones_cursos (
    nombre_alumno character(50),
    nombre_curso character(50),
    nombre_instructor character(50),
    codigo_validacion character(6) NOT NULL,
    codigo_matricula integer
);
 '   DROP TABLE public.validaciones_cursos;
       public         postgres    false            �            1259    25438    word1    TABLE     h   CREATE TABLE public.word1 (
    no_lista integer NOT NULL
)
INHERITS (public."Relacion_Alumnos_curso");
    DROP TABLE public.word1;
       public         postgres    false    205            �            1259    25436    word1_no_lista_seq    SEQUENCE     �   CREATE SEQUENCE public.word1_no_lista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.word1_no_lista_seq;
       public       postgres    false    227            �           0    0    word1_no_lista_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.word1_no_lista_seq OWNED BY public.word1.no_lista;
            public       postgres    false    226            �
           2604    25392    algoritmos no_lista    DEFAULT     z   ALTER TABLE ONLY public.algoritmos ALTER COLUMN no_lista SET DEFAULT nextval('public.algoritmos_no_lista_seq'::regclass);
 B   ALTER TABLE public.algoritmos ALTER COLUMN no_lista DROP DEFAULT;
       public       postgres    false    215    214    215            �
           2604    25384    autocad no_lista    DEFAULT     t   ALTER TABLE ONLY public.autocad ALTER COLUMN no_lista SET DEFAULT nextval('public.autocad_no_lista_seq'::regclass);
 ?   ALTER TABLE public.autocad ALTER COLUMN no_lista DROP DEFAULT;
       public       postgres    false    212    213    213            �
           2604    25368    excel1 no_lista    DEFAULT     r   ALTER TABLE ONLY public.excel1 ALTER COLUMN no_lista SET DEFAULT nextval('public.excel1_no_lista_seq'::regclass);
 >   ALTER TABLE public.excel1 ALTER COLUMN no_lista DROP DEFAULT;
       public       postgres    false    209    208    209            �
           2604    25376    excel2 no_lista    DEFAULT     r   ALTER TABLE ONLY public.excel2 ALTER COLUMN no_lista SET DEFAULT nextval('public.excel2_no_lista_seq'::regclass);
 >   ALTER TABLE public.excel2 ALTER COLUMN no_lista DROP DEFAULT;
       public       postgres    false    211    210    211            �
           2604    25433    java no_lista    DEFAULT     n   ALTER TABLE ONLY public.java ALTER COLUMN no_lista SET DEFAULT nextval('public.java_no_lista_seq'::regclass);
 <   ALTER TABLE public.java ALTER COLUMN no_lista DROP DEFAULT;
       public       postgres    false    224    225    225            �
           2604    25263    matricula codigo_matricula    DEFAULT     �   ALTER TABLE ONLY public.matricula ALTER COLUMN codigo_matricula SET DEFAULT nextval('public.matricula_codigo_matricula_seq'::regclass);
 I   ALTER TABLE public.matricula ALTER COLUMN codigo_matricula DROP DEFAULT;
       public       postgres    false    203    204    204            �
           2604    25425    motivacion_trabajo no_lista    DEFAULT     �   ALTER TABLE ONLY public.motivacion_trabajo ALTER COLUMN no_lista SET DEFAULT nextval('public.motivacion_trabajo_no_lista_seq'::regclass);
 J   ALTER TABLE public.motivacion_trabajo ALTER COLUMN no_lista DROP DEFAULT;
       public       postgres    false    223    222    223            �
           2604    25360    poo no_lista    DEFAULT     l   ALTER TABLE ONLY public.poo ALTER COLUMN no_lista SET DEFAULT nextval('public.poo_no_lista_seq'::regclass);
 ;   ALTER TABLE public.poo ALTER COLUMN no_lista DROP DEFAULT;
       public       postgres    false    207    206    207            �
           2604    25400    redes1 no_lista    DEFAULT     r   ALTER TABLE ONLY public.redes1 ALTER COLUMN no_lista SET DEFAULT nextval('public.redes1_no_lista_seq'::regclass);
 >   ALTER TABLE public.redes1 ALTER COLUMN no_lista DROP DEFAULT;
       public       postgres    false    216    217    217            �
           2604    25408    redes2 no_lista    DEFAULT     r   ALTER TABLE ONLY public.redes2 ALTER COLUMN no_lista SET DEFAULT nextval('public.redes2_no_lista_seq'::regclass);
 >   ALTER TABLE public.redes2 ALTER COLUMN no_lista DROP DEFAULT;
       public       postgres    false    219    218    219            �
           2604    25416    redes3 no_lista    DEFAULT     r   ALTER TABLE ONLY public.redes3 ALTER COLUMN no_lista SET DEFAULT nextval('public.redes3_no_lista_seq'::regclass);
 >   ALTER TABLE public.redes3 ALTER COLUMN no_lista DROP DEFAULT;
       public       postgres    false    220    221    221            �
           2604    25441    word1 no_lista    DEFAULT     p   ALTER TABLE ONLY public.word1 ALTER COLUMN no_lista SET DEFAULT nextval('public.word1_no_lista_seq'::regclass);
 =   ALTER TABLE public.word1 ALTER COLUMN no_lista DROP DEFAULT;
       public       postgres    false    227    226    227            �          0    25327    Relacion_Alumnos_curso 
   TABLE DATA               d   COPY public."Relacion_Alumnos_curso" (id_alumno, codigo_seccion, nombre_alumno, "Nota") FROM stdin;
    public       postgres    false    205   ��       �          0    24788    administradores 
   TABLE DATA               �   COPY public.administradores (idpersona, nombre, apellido, nacionalidad, email, edad, sexo, telefono, direccion, id_administrador) FROM stdin;
    public       postgres    false    199   ��       �          0    25389 
   algoritmos 
   TABLE DATA               `   COPY public.algoritmos (id_alumno, codigo_seccion, nombre_alumno, no_lista, "Nota") FROM stdin;
    public       postgres    false    215   ��       �          0    24778    alumnos 
   TABLE DATA               �   COPY public.alumnos (idpersona, nombre, apellido, nacionalidad, email, edad, sexo, telefono, direccion, id_alumno, empresa) FROM stdin;
    public       postgres    false    197   ��       �          0    25381    autocad 
   TABLE DATA               ]   COPY public.autocad (id_alumno, codigo_seccion, nombre_alumno, no_lista, "Nota") FROM stdin;
    public       postgres    false    213   x�       �          0    25243    cursos 
   TABLE DATA               R   COPY public.cursos (codigo_curso, nombre, modalidad, duracion, costo) FROM stdin;
    public       postgres    false    202   ��       �          0    25365    excel1 
   TABLE DATA               \   COPY public.excel1 (id_alumno, codigo_seccion, nombre_alumno, no_lista, "Nota") FROM stdin;
    public       postgres    false    209   ��       �          0    25373    excel2 
   TABLE DATA               \   COPY public.excel2 (id_alumno, codigo_seccion, nombre_alumno, no_lista, "Nota") FROM stdin;
    public       postgres    false    211   ��       �          0    24783    instructores 
   TABLE DATA               �   COPY public.instructores (idpersona, nombre, apellido, nacionalidad, email, edad, sexo, telefono, direccion, id_instructor, especialidad) FROM stdin;
    public       postgres    false    198   �       �          0    25430    java 
   TABLE DATA               Z   COPY public.java (id_alumno, codigo_seccion, nombre_alumno, no_lista, "Nota") FROM stdin;
    public       postgres    false    225   B�       �          0    25260 	   matricula 
   TABLE DATA               T   COPY public.matricula (codigo_matricula, codigo_alumno, codigo_seccion) FROM stdin;
    public       postgres    false    204   _�       �          0    25422    motivacion_trabajo 
   TABLE DATA               h   COPY public.motivacion_trabajo (id_alumno, codigo_seccion, nombre_alumno, no_lista, "Nota") FROM stdin;
    public       postgres    false    223   ��       �          0    24773    persona 
   TABLE DATA               t   COPY public.persona (idpersona, nombre, apellido, nacionalidad, email, edad, sexo, telefono, direccion) FROM stdin;
    public       postgres    false    196   ��       �          0    25357    poo 
   TABLE DATA               Y   COPY public.poo (id_alumno, codigo_seccion, nombre_alumno, no_lista, "Nota") FROM stdin;
    public       postgres    false    207   ��       �          0    25397    redes1 
   TABLE DATA               \   COPY public.redes1 (id_alumno, codigo_seccion, nombre_alumno, no_lista, "Nota") FROM stdin;
    public       postgres    false    217   ��       �          0    25405    redes2 
   TABLE DATA               \   COPY public.redes2 (id_alumno, codigo_seccion, nombre_alumno, no_lista, "Nota") FROM stdin;
    public       postgres    false    219   �       �          0    25413    redes3 
   TABLE DATA               \   COPY public.redes3 (id_alumno, codigo_seccion, nombre_alumno, no_lista, "Nota") FROM stdin;
    public       postgres    false    221   .�       �          0    25225 	   secciones 
   TABLE DATA               V   COPY public.secciones (codigo_seccion, "codigo_Instructor", codigo_curso) FROM stdin;
    public       postgres    false    201   K�       �          0    25218    validaciones_cursos 
   TABLE DATA               �   COPY public.validaciones_cursos (nombre_alumno, nombre_curso, nombre_instructor, codigo_validacion, codigo_matricula) FROM stdin;
    public       postgres    false    200   ��       �          0    25438    word1 
   TABLE DATA               [   COPY public.word1 (id_alumno, codigo_seccion, nombre_alumno, no_lista, "Nota") FROM stdin;
    public       postgres    false    227   �       �           0    0    algoritmos_no_lista_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.algoritmos_no_lista_seq', 1, false);
            public       postgres    false    214            �           0    0    autocad_no_lista_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.autocad_no_lista_seq', 1, false);
            public       postgres    false    212            �           0    0    excel1_no_lista_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.excel1_no_lista_seq', 1, false);
            public       postgres    false    208            �           0    0    excel2_no_lista_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.excel2_no_lista_seq', 1, false);
            public       postgres    false    210            �           0    0    java_no_lista_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.java_no_lista_seq', 1, false);
            public       postgres    false    224            �           0    0    matricula_codigo_matricula_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.matricula_codigo_matricula_seq', 6, true);
            public       postgres    false    203                        0    0    motivacion_trabajo_no_lista_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.motivacion_trabajo_no_lista_seq', 1, false);
            public       postgres    false    222                       0    0    poo_no_lista_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.poo_no_lista_seq', 1, false);
            public       postgres    false    206                       0    0    redes1_no_lista_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.redes1_no_lista_seq', 1, false);
            public       postgres    false    216                       0    0    redes2_no_lista_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.redes2_no_lista_seq', 1, false);
            public       postgres    false    218                       0    0    redes3_no_lista_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.redes3_no_lista_seq', 1, false);
            public       postgres    false    220                       0    0    word1_no_lista_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.word1_no_lista_seq', 1, false);
            public       postgres    false    226                       2606    25324    cursos UQ_cursos_nombre 
   CONSTRAINT     g   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT "UQ_cursos_nombre" UNIQUE (nombre) INCLUDE (nombre);
 C   ALTER TABLE ONLY public.cursos DROP CONSTRAINT "UQ_cursos_nombre";
       public         postgres    false    202    202            �
           2606    24792 "   administradores administrador_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.administradores
    ADD CONSTRAINT administrador_pkey PRIMARY KEY (id_administrador);
 L   ALTER TABLE ONLY public.administradores DROP CONSTRAINT administrador_pkey;
       public         postgres    false    199                       2606    25394    algoritmos algoritmos_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.algoritmos
    ADD CONSTRAINT algoritmos_pkey PRIMARY KEY (no_lista);
 D   ALTER TABLE ONLY public.algoritmos DROP CONSTRAINT algoritmos_pkey;
       public         postgres    false    215            �
           2606    24782    alumnos alumno_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumno_pkey PRIMARY KEY (id_alumno);
 =   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT alumno_pkey;
       public         postgres    false    197                       2606    25386    autocad autocad_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.autocad
    ADD CONSTRAINT autocad_pkey PRIMARY KEY (no_lista);
 >   ALTER TABLE ONLY public.autocad DROP CONSTRAINT autocad_pkey;
       public         postgres    false    213                       2606    25247    cursos cursos_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (codigo_curso);
 <   ALTER TABLE ONLY public.cursos DROP CONSTRAINT cursos_pkey;
       public         postgres    false    202                       2606    25370    excel1 excel1_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.excel1
    ADD CONSTRAINT excel1_pkey PRIMARY KEY (no_lista);
 <   ALTER TABLE ONLY public.excel1 DROP CONSTRAINT excel1_pkey;
       public         postgres    false    209                       2606    25378    excel2 excel2_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.excel2
    ADD CONSTRAINT excel2_pkey PRIMARY KEY (no_lista);
 <   ALTER TABLE ONLY public.excel2 DROP CONSTRAINT excel2_pkey;
       public         postgres    false    211            �
           2606    24787    instructores instructor_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.instructores
    ADD CONSTRAINT instructor_pkey PRIMARY KEY (id_instructor);
 F   ALTER TABLE ONLY public.instructores DROP CONSTRAINT instructor_pkey;
       public         postgres    false    198            /           2606    25435    java java_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.java
    ADD CONSTRAINT java_pkey PRIMARY KEY (no_lista);
 8   ALTER TABLE ONLY public.java DROP CONSTRAINT java_pkey;
       public         postgres    false    225                       2606    25265    matricula matricula_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT matricula_pkey PRIMARY KEY (codigo_matricula);
 B   ALTER TABLE ONLY public.matricula DROP CONSTRAINT matricula_pkey;
       public         postgres    false    204            +           2606    25427 *   motivacion_trabajo motivacion_trabajo_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.motivacion_trabajo
    ADD CONSTRAINT motivacion_trabajo_pkey PRIMARY KEY (no_lista);
 T   ALTER TABLE ONLY public.motivacion_trabajo DROP CONSTRAINT motivacion_trabajo_pkey;
       public         postgres    false    223            �
           2606    25193    persona persona_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (idpersona);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public         postgres    false    196                       2606    25362    poo poo_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.poo
    ADD CONSTRAINT poo_pkey PRIMARY KEY (no_lista);
 6   ALTER TABLE ONLY public.poo DROP CONSTRAINT poo_pkey;
       public         postgres    false    207                       2606    25402    redes1 redes1_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.redes1
    ADD CONSTRAINT redes1_pkey PRIMARY KEY (no_lista);
 <   ALTER TABLE ONLY public.redes1 DROP CONSTRAINT redes1_pkey;
       public         postgres    false    217            #           2606    25410    redes2 redes2_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.redes2
    ADD CONSTRAINT redes2_pkey PRIMARY KEY (no_lista);
 <   ALTER TABLE ONLY public.redes2 DROP CONSTRAINT redes2_pkey;
       public         postgres    false    219            '           2606    25418    redes3 redes3_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.redes3
    ADD CONSTRAINT redes3_pkey PRIMARY KEY (no_lista);
 <   ALTER TABLE ONLY public.redes3 DROP CONSTRAINT redes3_pkey;
       public         postgres    false    221            �
           2606    25317    secciones secciones_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.secciones
    ADD CONSTRAINT secciones_pkey PRIMARY KEY (codigo_seccion);
 B   ALTER TABLE ONLY public.secciones DROP CONSTRAINT secciones_pkey;
       public         postgres    false    201            �
           2606    25315 ,   administradores uq_administradores_idpersona 
   CONSTRAINT     l   ALTER TABLE ONLY public.administradores
    ADD CONSTRAINT uq_administradores_idpersona UNIQUE (idpersona);
 V   ALTER TABLE ONLY public.administradores DROP CONSTRAINT uq_administradores_idpersona;
       public         postgres    false    199            �
           2606    25311    alumnos uq_alumnos_idpersona 
   CONSTRAINT     \   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT uq_alumnos_idpersona UNIQUE (idpersona);
 F   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT uq_alumnos_idpersona;
       public         postgres    false    197            �
           2606    25313 &   instructores uq_instructores_idpersona 
   CONSTRAINT     f   ALTER TABLE ONLY public.instructores
    ADD CONSTRAINT uq_instructores_idpersona UNIQUE (idpersona);
 P   ALTER TABLE ONLY public.instructores DROP CONSTRAINT uq_instructores_idpersona;
       public         postgres    false    198            �
           2606    25222 ,   validaciones_cursos validaciones_cursos_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.validaciones_cursos
    ADD CONSTRAINT validaciones_cursos_pkey PRIMARY KEY (codigo_validacion);
 V   ALTER TABLE ONLY public.validaciones_cursos DROP CONSTRAINT validaciones_cursos_pkey;
       public         postgres    false    200            3           2606    25443    word1 word1_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.word1
    ADD CONSTRAINT word1_pkey PRIMARY KEY (no_lista);
 :   ALTER TABLE ONLY public.word1 DROP CONSTRAINT word1_pkey;
       public         postgres    false    227            �
           1259    25257    fki_Codigo_curso    INDEX     P   CREATE INDEX "fki_Codigo_curso" ON public.secciones USING btree (codigo_curso);
 &   DROP INDEX public."fki_Codigo_curso";
       public         postgres    false    201            �
           1259    25241    fki_ID_Instructor    INDEX     X   CREATE INDEX "fki_ID_Instructor" ON public.secciones USING btree ("codigo_Instructor");
 '   DROP INDEX public."fki_ID_Instructor";
       public         postgres    false    201                       1259    25349    fki_fk_alumno_codigo_seccion    INDEX     k   CREATE INDEX fki_fk_alumno_codigo_seccion ON public."Relacion_Alumnos_curso" USING btree (codigo_seccion);
 0   DROP INDEX public.fki_fk_alumno_codigo_seccion;
       public         postgres    false    205                       1259    25459    fki_fk_autocad_alumno    INDEX     N   CREATE INDEX fki_fk_autocad_alumno ON public.autocad USING btree (id_alumno);
 )   DROP INDEX public.fki_fk_autocad_alumno;
       public         postgres    false    213                       1259    25465    fki_fk_autocad_seccion    INDEX     T   CREATE INDEX fki_fk_autocad_seccion ON public.autocad USING btree (codigo_seccion);
 *   DROP INDEX public.fki_fk_autocad_seccion;
       public         postgres    false    213                       1259    25277    fki_fk_codigo_alumno    INDEX     S   CREATE INDEX fki_fk_codigo_alumno ON public.matricula USING btree (codigo_alumno);
 (   DROP INDEX public.fki_fk_codigo_alumno;
       public         postgres    false    204            �
           1259    25284    fki_fk_codigo_matricula    INDEX     c   CREATE INDEX fki_fk_codigo_matricula ON public.validaciones_cursos USING btree (codigo_matricula);
 +   DROP INDEX public.fki_fk_codigo_matricula;
       public         postgres    false    200                       1259    25298    fki_fk_codigo_seccion    INDEX     U   CREATE INDEX fki_fk_codigo_seccion ON public.matricula USING btree (codigo_seccion);
 )   DROP INDEX public.fki_fk_codigo_seccion;
       public         postgres    false    204                       1259    25483    fki_fk_excel2_alumno    INDEX     L   CREATE INDEX fki_fk_excel2_alumno ON public.excel2 USING btree (id_alumno);
 (   DROP INDEX public.fki_fk_excel2_alumno;
       public         postgres    false    211                       1259    25489    fki_fk_excel2_seccion    INDEX     R   CREATE INDEX fki_fk_excel2_seccion ON public.excel2 USING btree (codigo_seccion);
 )   DROP INDEX public.fki_fk_excel2_seccion;
       public         postgres    false    211                       1259    25471    fki_fk_excel_alumnos    INDEX     L   CREATE INDEX fki_fk_excel_alumnos ON public.excel1 USING btree (id_alumno);
 (   DROP INDEX public.fki_fk_excel_alumnos;
       public         postgres    false    209                       1259    25477    fki_fk_excel_seccion    INDEX     Q   CREATE INDEX fki_fk_excel_seccion ON public.excel1 USING btree (codigo_seccion);
 (   DROP INDEX public.fki_fk_excel_seccion;
       public         postgres    false    209            	           1259    25338    fki_fk_id_alumno    INDEX     Z   CREATE INDEX fki_fk_id_alumno ON public."Relacion_Alumnos_curso" USING btree (id_alumno);
 $   DROP INDEX public.fki_fk_id_alumno;
       public         postgres    false    205            ,           1259    25495    fki_fk_java_alumnos    INDEX     I   CREATE INDEX fki_fk_java_alumnos ON public.java USING btree (id_alumno);
 '   DROP INDEX public.fki_fk_java_alumnos;
       public         postgres    false    225            -           1259    25501    fki_fk_java_secciones    INDEX     P   CREATE INDEX fki_fk_java_secciones ON public.java USING btree (codigo_seccion);
 )   DROP INDEX public.fki_fk_java_secciones;
       public         postgres    false    225            (           1259    25507    fki_fk_mot_trab_alumnos    INDEX     [   CREATE INDEX fki_fk_mot_trab_alumnos ON public.motivacion_trabajo USING btree (id_alumno);
 +   DROP INDEX public.fki_fk_mot_trab_alumnos;
       public         postgres    false    223            )           1259    25513    fki_fk_mot_trab_secciones    INDEX     b   CREATE INDEX fki_fk_mot_trab_secciones ON public.motivacion_trabajo USING btree (codigo_seccion);
 -   DROP INDEX public.fki_fk_mot_trab_secciones;
       public         postgres    false    223            
           1259    25519    fki_fk_poo_alumnos    INDEX     G   CREATE INDEX fki_fk_poo_alumnos ON public.poo USING btree (id_alumno);
 &   DROP INDEX public.fki_fk_poo_alumnos;
       public         postgres    false    207                       1259    25525    fki_fk_poo_secciones    INDEX     N   CREATE INDEX fki_fk_poo_secciones ON public.poo USING btree (codigo_seccion);
 (   DROP INDEX public.fki_fk_poo_secciones;
       public         postgres    false    207                       1259    25531    fki_fk_red1_alumnos    INDEX     K   CREATE INDEX fki_fk_red1_alumnos ON public.redes1 USING btree (id_alumno);
 '   DROP INDEX public.fki_fk_red1_alumnos;
       public         postgres    false    217                       1259    25537    fki_fk_red1_secciones    INDEX     R   CREATE INDEX fki_fk_red1_secciones ON public.redes1 USING btree (codigo_seccion);
 )   DROP INDEX public.fki_fk_red1_secciones;
       public         postgres    false    217                        1259    25543    fki_fk_red2_alumnos    INDEX     K   CREATE INDEX fki_fk_red2_alumnos ON public.redes2 USING btree (id_alumno);
 '   DROP INDEX public.fki_fk_red2_alumnos;
       public         postgres    false    219            !           1259    25549    fki_fk_red2_secciones    INDEX     R   CREATE INDEX fki_fk_red2_secciones ON public.redes2 USING btree (codigo_seccion);
 )   DROP INDEX public.fki_fk_red2_secciones;
       public         postgres    false    219            $           1259    25555    fki_fk_red3_alumnos    INDEX     K   CREATE INDEX fki_fk_red3_alumnos ON public.redes3 USING btree (id_alumno);
 '   DROP INDEX public.fki_fk_red3_alumnos;
       public         postgres    false    221            %           1259    25561    fki_fk_red3_secciones    INDEX     R   CREATE INDEX fki_fk_red3_secciones ON public.redes3 USING btree (codigo_seccion);
 )   DROP INDEX public.fki_fk_red3_secciones;
       public         postgres    false    221            0           1259    25567    fki_fk_word_alumno    INDEX     I   CREATE INDEX fki_fk_word_alumno ON public.word1 USING btree (id_alumno);
 &   DROP INDEX public.fki_fk_word_alumno;
       public         postgres    false    227            1           1259    25573    fki_fk_word_secciones    INDEX     Q   CREATE INDEX fki_fk_word_secciones ON public.word1 USING btree (codigo_seccion);
 )   DROP INDEX public.fki_fk_word_secciones;
       public         postgres    false    227            6           2606    25252    secciones Codigo_curso    FK CONSTRAINT     �   ALTER TABLE ONLY public.secciones
    ADD CONSTRAINT "Codigo_curso" FOREIGN KEY (codigo_curso) REFERENCES public.cursos(codigo_curso);
 B   ALTER TABLE ONLY public.secciones DROP CONSTRAINT "Codigo_curso";
       public       postgres    false    2819    201    202            5           2606    25236    secciones ID_Instructor    FK CONSTRAINT     �   ALTER TABLE ONLY public.secciones
    ADD CONSTRAINT "ID_Instructor" FOREIGN KEY ("codigo_Instructor") REFERENCES public.instructores(id_instructor);
 C   ALTER TABLE ONLY public.secciones DROP CONSTRAINT "ID_Instructor";
       public       postgres    false    2802    201    198            A           2606    25454    autocad fk_autocad_alumno    FK CONSTRAINT     �   ALTER TABLE ONLY public.autocad
    ADD CONSTRAINT fk_autocad_alumno FOREIGN KEY (id_alumno) REFERENCES public.alumnos(id_alumno);
 C   ALTER TABLE ONLY public.autocad DROP CONSTRAINT fk_autocad_alumno;
       public       postgres    false    2798    197    213            B           2606    25460    autocad fk_autocad_seccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.autocad
    ADD CONSTRAINT fk_autocad_seccion FOREIGN KEY (codigo_seccion) REFERENCES public.secciones(codigo_seccion);
 D   ALTER TABLE ONLY public.autocad DROP CONSTRAINT fk_autocad_seccion;
       public       postgres    false    2815    213    201            7           2606    25272    matricula fk_codigo_alumno    FK CONSTRAINT     �   ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT fk_codigo_alumno FOREIGN KEY (codigo_alumno) REFERENCES public.alumnos(id_alumno);
 D   ALTER TABLE ONLY public.matricula DROP CONSTRAINT fk_codigo_alumno;
       public       postgres    false    2798    204    197            4           2606    25279 '   validaciones_cursos fk_codigo_matricula    FK CONSTRAINT     �   ALTER TABLE ONLY public.validaciones_cursos
    ADD CONSTRAINT fk_codigo_matricula FOREIGN KEY (codigo_matricula) REFERENCES public.matricula(codigo_matricula);
 Q   ALTER TABLE ONLY public.validaciones_cursos DROP CONSTRAINT fk_codigo_matricula;
       public       postgres    false    204    2823    200            8           2606    25318    matricula fk_codigo_seccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT fk_codigo_seccion FOREIGN KEY (codigo_seccion) REFERENCES public.secciones(codigo_seccion);
 E   ALTER TABLE ONLY public.matricula DROP CONSTRAINT fk_codigo_seccion;
       public       postgres    false    204    2815    201            :           2606    25449 .   Relacion_Alumnos_curso fk_curso_codigo_seccion    FK CONSTRAINT     �   ALTER TABLE ONLY public."Relacion_Alumnos_curso"
    ADD CONSTRAINT fk_curso_codigo_seccion FOREIGN KEY (codigo_seccion) REFERENCES public.secciones(codigo_seccion);
 Z   ALTER TABLE ONLY public."Relacion_Alumnos_curso" DROP CONSTRAINT fk_curso_codigo_seccion;
       public       postgres    false    205    2815    201            9           2606    25444 (   Relacion_Alumnos_curso fk_curso_idalumno    FK CONSTRAINT     �   ALTER TABLE ONLY public."Relacion_Alumnos_curso"
    ADD CONSTRAINT fk_curso_idalumno FOREIGN KEY (id_alumno) REFERENCES public.alumnos(id_alumno);
 T   ALTER TABLE ONLY public."Relacion_Alumnos_curso" DROP CONSTRAINT fk_curso_idalumno;
       public       postgres    false    2798    197    205            ?           2606    25478    excel2 fk_excel2_alumno    FK CONSTRAINT     �   ALTER TABLE ONLY public.excel2
    ADD CONSTRAINT fk_excel2_alumno FOREIGN KEY (id_alumno) REFERENCES public.alumnos(id_alumno);
 A   ALTER TABLE ONLY public.excel2 DROP CONSTRAINT fk_excel2_alumno;
       public       postgres    false    2798    197    211            @           2606    25484    excel2 fk_excel2_seccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.excel2
    ADD CONSTRAINT fk_excel2_seccion FOREIGN KEY (codigo_seccion) REFERENCES public.secciones(codigo_seccion);
 B   ALTER TABLE ONLY public.excel2 DROP CONSTRAINT fk_excel2_seccion;
       public       postgres    false    2815    211    201            =           2606    25466    excel1 fk_excel_alumnos    FK CONSTRAINT     �   ALTER TABLE ONLY public.excel1
    ADD CONSTRAINT fk_excel_alumnos FOREIGN KEY (id_alumno) REFERENCES public.alumnos(id_alumno);
 A   ALTER TABLE ONLY public.excel1 DROP CONSTRAINT fk_excel_alumnos;
       public       postgres    false    209    2798    197            >           2606    25472    excel1 fk_excel_seccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.excel1
    ADD CONSTRAINT fk_excel_seccion FOREIGN KEY (codigo_seccion) REFERENCES public.secciones(codigo_seccion);
 A   ALTER TABLE ONLY public.excel1 DROP CONSTRAINT fk_excel_seccion;
       public       postgres    false    209    2815    201            K           2606    25490    java fk_java_alumnos    FK CONSTRAINT     ~   ALTER TABLE ONLY public.java
    ADD CONSTRAINT fk_java_alumnos FOREIGN KEY (id_alumno) REFERENCES public.alumnos(id_alumno);
 >   ALTER TABLE ONLY public.java DROP CONSTRAINT fk_java_alumnos;
       public       postgres    false    225    2798    197            L           2606    25496    java fk_java_secciones    FK CONSTRAINT     �   ALTER TABLE ONLY public.java
    ADD CONSTRAINT fk_java_secciones FOREIGN KEY (codigo_seccion) REFERENCES public.secciones(codigo_seccion);
 @   ALTER TABLE ONLY public.java DROP CONSTRAINT fk_java_secciones;
       public       postgres    false    201    2815    225            I           2606    25502 &   motivacion_trabajo fk_mot_trab_alumnos    FK CONSTRAINT     �   ALTER TABLE ONLY public.motivacion_trabajo
    ADD CONSTRAINT fk_mot_trab_alumnos FOREIGN KEY (id_alumno) REFERENCES public.alumnos(id_alumno);
 P   ALTER TABLE ONLY public.motivacion_trabajo DROP CONSTRAINT fk_mot_trab_alumnos;
       public       postgres    false    197    223    2798            J           2606    25508 (   motivacion_trabajo fk_mot_trab_secciones    FK CONSTRAINT     �   ALTER TABLE ONLY public.motivacion_trabajo
    ADD CONSTRAINT fk_mot_trab_secciones FOREIGN KEY (codigo_seccion) REFERENCES public.secciones(codigo_seccion);
 R   ALTER TABLE ONLY public.motivacion_trabajo DROP CONSTRAINT fk_mot_trab_secciones;
       public       postgres    false    2815    201    223            ;           2606    25514    poo fk_poo_alumnos    FK CONSTRAINT     |   ALTER TABLE ONLY public.poo
    ADD CONSTRAINT fk_poo_alumnos FOREIGN KEY (id_alumno) REFERENCES public.alumnos(id_alumno);
 <   ALTER TABLE ONLY public.poo DROP CONSTRAINT fk_poo_alumnos;
       public       postgres    false    197    207    2798            <           2606    25520    poo fk_poo_secciones    FK CONSTRAINT     �   ALTER TABLE ONLY public.poo
    ADD CONSTRAINT fk_poo_secciones FOREIGN KEY (codigo_seccion) REFERENCES public.secciones(codigo_seccion);
 >   ALTER TABLE ONLY public.poo DROP CONSTRAINT fk_poo_secciones;
       public       postgres    false    201    207    2815            C           2606    25526    redes1 fk_red1_alumnos    FK CONSTRAINT     �   ALTER TABLE ONLY public.redes1
    ADD CONSTRAINT fk_red1_alumnos FOREIGN KEY (id_alumno) REFERENCES public.alumnos(id_alumno);
 @   ALTER TABLE ONLY public.redes1 DROP CONSTRAINT fk_red1_alumnos;
       public       postgres    false    217    2798    197            D           2606    25532    redes1 fk_red1_secciones    FK CONSTRAINT     �   ALTER TABLE ONLY public.redes1
    ADD CONSTRAINT fk_red1_secciones FOREIGN KEY (codigo_seccion) REFERENCES public.secciones(codigo_seccion);
 B   ALTER TABLE ONLY public.redes1 DROP CONSTRAINT fk_red1_secciones;
       public       postgres    false    201    217    2815            E           2606    25538    redes2 fk_red2_alumnos    FK CONSTRAINT     �   ALTER TABLE ONLY public.redes2
    ADD CONSTRAINT fk_red2_alumnos FOREIGN KEY (id_alumno) REFERENCES public.alumnos(id_alumno);
 @   ALTER TABLE ONLY public.redes2 DROP CONSTRAINT fk_red2_alumnos;
       public       postgres    false    197    219    2798            F           2606    25544    redes2 fk_red2_secciones    FK CONSTRAINT     �   ALTER TABLE ONLY public.redes2
    ADD CONSTRAINT fk_red2_secciones FOREIGN KEY (codigo_seccion) REFERENCES public.secciones(codigo_seccion);
 B   ALTER TABLE ONLY public.redes2 DROP CONSTRAINT fk_red2_secciones;
       public       postgres    false    201    2815    219            G           2606    25550    redes3 fk_red3_alumnos    FK CONSTRAINT     �   ALTER TABLE ONLY public.redes3
    ADD CONSTRAINT fk_red3_alumnos FOREIGN KEY (id_alumno) REFERENCES public.alumnos(id_alumno);
 @   ALTER TABLE ONLY public.redes3 DROP CONSTRAINT fk_red3_alumnos;
       public       postgres    false    197    221    2798            H           2606    25556    redes3 fk_red3_secciones    FK CONSTRAINT     �   ALTER TABLE ONLY public.redes3
    ADD CONSTRAINT fk_red3_secciones FOREIGN KEY (codigo_seccion) REFERENCES public.secciones(codigo_seccion);
 B   ALTER TABLE ONLY public.redes3 DROP CONSTRAINT fk_red3_secciones;
       public       postgres    false    201    221    2815            M           2606    25562    word1 fk_word_alumno    FK CONSTRAINT     ~   ALTER TABLE ONLY public.word1
    ADD CONSTRAINT fk_word_alumno FOREIGN KEY (id_alumno) REFERENCES public.alumnos(id_alumno);
 >   ALTER TABLE ONLY public.word1 DROP CONSTRAINT fk_word_alumno;
       public       postgres    false    197    227    2798            N           2606    25568    word1 fk_word_secciones    FK CONSTRAINT     �   ALTER TABLE ONLY public.word1
    ADD CONSTRAINT fk_word_secciones FOREIGN KEY (codigo_seccion) REFERENCES public.secciones(codigo_seccion);
 A   ALTER TABLE ONLY public.word1 DROP CONSTRAINT fk_word_secciones;
       public       postgres    false    2815    227    201            �      x������ � �      �   �   x���;�0@��9A�4Ѝ��+����O����	&�O��g�ϼ&=�XI��B���4CB&�ڸ�X{�)��`}��n�
rE�nt�Sb�k�Z�Ty�]��K��E�҈v�2�S�C��o�ŝ}*#2��烷~��XlH6�BT��*"ݡ�\��� !���a�(�i�Λn襢�� ��n	      �      x������ � �      �   �  x���Mn�0�ףS�FEY�����@�N�U7��P�JJ��w�PR�؋j!p����qFS��Wo���*�ⷶ��wX|��w��[�>h�|	6�6��a=�C"s�Uo�{K�"ϧ�rN�'�xAGT�8�!UU��;pжؙ��D�Û���u�/�(�b����TA~���LN������;�Sӷ9��Y��e��`��QQ��5��e0:}��`����*�l��l��u�b�X��Z�F�攤p�U�c��t����$�L�V��0���3��]<�d��4K�4/撖K[i?���[?�)��=^��������+x�JX�9����ҟV��ӡE6�m��N�o8�t�?P�HS���X����W�60��_(�N-�l:e��c�;O�cc�\��a�x��6ͫ�+d�'PSY|�:L��3'Cqԟ�$I�4�K      �      x������ � �      �   #  x���Qo�  �g��[ݲW��qQ1�u{�U��X0���5��$�� �|��JB`���م�BI ZpiXÀ9��Q=�	�Ӽ�����]A�?��IJv�(NI����X���]��Iu��2�}��~b4;��r�J�B��1��ޒ蹊��ݐ%��~�{��%�{\�)ʮ$~�q������-tZ�N:���7~���mdUK��l�ĸ���J�lW͍�'�����~�j3h�Cáa�F�$�����)����O��}���U���\���u��A�Nr�\#��|����2      �      x������ � �      �      x������ � �      �   0  x���Mn�0F��Sp᧰+
TE*A�݌�!HƮp�EO_��nZ�v�zeY�4���TӨ(s,t�z:��,����!����Qq<�tP���	T({�&.nGA�����mK���<���6._I�`3]� hp��o��mmc�4�~:��(~H��i���"C �2]f!M!�ˈ�B�Ҩ�yZ����a�{��dnsC����L��ҫ���0ڜ�IJd�$
��y�9y��ٱ�LR�����/�߀�\�VI��+�0k��/�_K���&U_uO�ߍ�@Y^���;�پ�&yu	!�*]�q      �      x������ � �      �   .   x�3�4�4470P .cN#N[��(`h	�r�q�"db���� ��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   9   x�0�40PPP�4���W .Cs�H���=,fR�4�t�pv�1���qqq g�
�      �   m   x�N-J��WH-J�R 
p�����73�45G!8�495%�(-��&iƦ�1~\��%�E
��E�)���Dh��M���ANLK,-.�'�>�8�$��$���=... V�U�      �      x������ � �     