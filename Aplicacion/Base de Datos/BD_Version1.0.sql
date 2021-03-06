PGDMP     "            	    	    w            DB_aprendamos_1.0    11.5    11.5 9    O           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            P           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            Q           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            R           1262    24738    DB_aprendamos_1.0    DATABASE     �   CREATE DATABASE "DB_aprendamos_1.0" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Honduras.1252' LC_CTYPE = 'Spanish_Honduras.1252';
 #   DROP DATABASE "DB_aprendamos_1.0";
             postgres    false            �            1259    25327    Relacion_Alumnos_curso    TABLE     �   CREATE TABLE public."Relacion_Alumnos_curso" (
    id_alumno integer NOT NULL,
    codigo_seccion character(8) NOT NULL,
    nombre_alumno character(50),
    "Nota" integer,
    "No_registro" integer NOT NULL
);
 ,   DROP TABLE public."Relacion_Alumnos_curso";
       public         postgres    false            �            1259    25814 &   Relacion_Alumnos_curso_No_registro_seq    SEQUENCE     �   CREATE SEQUENCE public."Relacion_Alumnos_curso_No_registro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."Relacion_Alumnos_curso_No_registro_seq";
       public       postgres    false    205            S           0    0 &   Relacion_Alumnos_curso_No_registro_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."Relacion_Alumnos_curso_No_registro_seq" OWNED BY public."Relacion_Alumnos_curso"."No_registro";
            public       postgres    false    206            �            1259    24773    persona    TABLE     >  CREATE TABLE public.persona (
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
       public         postgres    false    196            �            1259    24778    alumnos    TABLE     u   CREATE TABLE public.alumnos (
    id_alumno integer NOT NULL,
    empresa character(50)
)
INHERITS (public.persona);
    DROP TABLE public.alumnos;
       public         postgres    false    196            �            1259    25243    cursos    TABLE     �   CREATE TABLE public.cursos (
    codigo_curso character(8) NOT NULL,
    nombre character(50),
    modalidad character(14),
    duracion integer,
    costo integer
);
    DROP TABLE public.cursos;
       public         postgres    false            �            1259    24783    instructores    TABLE     �   CREATE TABLE public.instructores (
    id_instructor integer NOT NULL,
    especialidad character(50)
)
INHERITS (public.persona);
     DROP TABLE public.instructores;
       public         postgres    false    196            �            1259    25260 	   matricula    TABLE     �   CREATE TABLE public.matricula (
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
       public       postgres    false    204            T           0    0    matricula_codigo_matricula_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.matricula_codigo_matricula_seq OWNED BY public.matricula.codigo_matricula;
            public       postgres    false    203            �            1259    25225 	   secciones    TABLE     �   CREATE TABLE public.secciones (
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
       public         postgres    false            �
           2604    25816 "   Relacion_Alumnos_curso No_registro    DEFAULT     �   ALTER TABLE ONLY public."Relacion_Alumnos_curso" ALTER COLUMN "No_registro" SET DEFAULT nextval('public."Relacion_Alumnos_curso_No_registro_seq"'::regclass);
 U   ALTER TABLE public."Relacion_Alumnos_curso" ALTER COLUMN "No_registro" DROP DEFAULT;
       public       postgres    false    206    205            �
           2604    25263    matricula codigo_matricula    DEFAULT     �   ALTER TABLE ONLY public.matricula ALTER COLUMN codigo_matricula SET DEFAULT nextval('public.matricula_codigo_matricula_seq'::regclass);
 I   ALTER TABLE public.matricula ALTER COLUMN codigo_matricula DROP DEFAULT;
       public       postgres    false    203    204    204            K          0    25327    Relacion_Alumnos_curso 
   TABLE DATA               s   COPY public."Relacion_Alumnos_curso" (id_alumno, codigo_seccion, nombre_alumno, "Nota", "No_registro") FROM stdin;
    public       postgres    false    205   �E       E          0    24788    administradores 
   TABLE DATA               �   COPY public.administradores (idpersona, nombre, apellido, nacionalidad, email, edad, sexo, telefono, direccion, id_administrador) FROM stdin;
    public       postgres    false    199   �E       C          0    24778    alumnos 
   TABLE DATA               �   COPY public.alumnos (idpersona, nombre, apellido, nacionalidad, email, edad, sexo, telefono, direccion, id_alumno, empresa) FROM stdin;
    public       postgres    false    197   �F       H          0    25243    cursos 
   TABLE DATA               R   COPY public.cursos (codigo_curso, nombre, modalidad, duracion, costo) FROM stdin;
    public       postgres    false    202   �H       D          0    24783    instructores 
   TABLE DATA               �   COPY public.instructores (idpersona, nombre, apellido, nacionalidad, email, edad, sexo, telefono, direccion, id_instructor, especialidad) FROM stdin;
    public       postgres    false    198   �I       J          0    25260 	   matricula 
   TABLE DATA               T   COPY public.matricula (codigo_matricula, codigo_alumno, codigo_seccion) FROM stdin;
    public       postgres    false    204   K       B          0    24773    persona 
   TABLE DATA               t   COPY public.persona (idpersona, nombre, apellido, nacionalidad, email, edad, sexo, telefono, direccion) FROM stdin;
    public       postgres    false    196   @K       G          0    25225 	   secciones 
   TABLE DATA               V   COPY public.secciones (codigo_seccion, "codigo_Instructor", codigo_curso) FROM stdin;
    public       postgres    false    201   ]K       F          0    25218    validaciones_cursos 
   TABLE DATA               �   COPY public.validaciones_cursos (nombre_alumno, nombre_curso, nombre_instructor, codigo_validacion, codigo_matricula) FROM stdin;
    public       postgres    false    200   �K       U           0    0 &   Relacion_Alumnos_curso_No_registro_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."Relacion_Alumnos_curso_No_registro_seq"', 1, false);
            public       postgres    false    206            V           0    0    matricula_codigo_matricula_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.matricula_codigo_matricula_seq', 6, true);
            public       postgres    false    203            �
           2606    25835 2   Relacion_Alumnos_curso Relacion_Alumnos_curso_pkey 
   CONSTRAINT        ALTER TABLE ONLY public."Relacion_Alumnos_curso"
    ADD CONSTRAINT "Relacion_Alumnos_curso_pkey" PRIMARY KEY ("No_registro");
 `   ALTER TABLE ONLY public."Relacion_Alumnos_curso" DROP CONSTRAINT "Relacion_Alumnos_curso_pkey";
       public         postgres    false    205            �
           2606    25324    cursos UQ_cursos_nombre 
   CONSTRAINT     g   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT "UQ_cursos_nombre" UNIQUE (nombre) INCLUDE (nombre);
 C   ALTER TABLE ONLY public.cursos DROP CONSTRAINT "UQ_cursos_nombre";
       public         postgres    false    202    202            �
           2606    24792 "   administradores administrador_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.administradores
    ADD CONSTRAINT administrador_pkey PRIMARY KEY (id_administrador);
 L   ALTER TABLE ONLY public.administradores DROP CONSTRAINT administrador_pkey;
       public         postgres    false    199            �
           2606    24782    alumnos alumno_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumno_pkey PRIMARY KEY (id_alumno);
 =   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT alumno_pkey;
       public         postgres    false    197            �
           2606    25247    cursos cursos_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (codigo_curso);
 <   ALTER TABLE ONLY public.cursos DROP CONSTRAINT cursos_pkey;
       public         postgres    false    202            �
           2606    24787    instructores instructor_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.instructores
    ADD CONSTRAINT instructor_pkey PRIMARY KEY (id_instructor);
 F   ALTER TABLE ONLY public.instructores DROP CONSTRAINT instructor_pkey;
       public         postgres    false    198            �
           2606    25265    matricula matricula_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT matricula_pkey PRIMARY KEY (codigo_matricula);
 B   ALTER TABLE ONLY public.matricula DROP CONSTRAINT matricula_pkey;
       public         postgres    false    204            �
           2606    25193    persona persona_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (idpersona);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public         postgres    false    196            �
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
       public         postgres    false    200            �
           1259    25257    fki_Codigo_curso    INDEX     P   CREATE INDEX "fki_Codigo_curso" ON public.secciones USING btree (codigo_curso);
 &   DROP INDEX public."fki_Codigo_curso";
       public         postgres    false    201            �
           1259    25241    fki_ID_Instructor    INDEX     X   CREATE INDEX "fki_ID_Instructor" ON public.secciones USING btree ("codigo_Instructor");
 '   DROP INDEX public."fki_ID_Instructor";
       public         postgres    false    201            �
           1259    25349    fki_fk_alumno_codigo_seccion    INDEX     k   CREATE INDEX fki_fk_alumno_codigo_seccion ON public."Relacion_Alumnos_curso" USING btree (codigo_seccion);
 0   DROP INDEX public.fki_fk_alumno_codigo_seccion;
       public         postgres    false    205            �
           1259    25277    fki_fk_codigo_alumno    INDEX     S   CREATE INDEX fki_fk_codigo_alumno ON public.matricula USING btree (codigo_alumno);
 (   DROP INDEX public.fki_fk_codigo_alumno;
       public         postgres    false    204            �
           1259    25284    fki_fk_codigo_matricula    INDEX     c   CREATE INDEX fki_fk_codigo_matricula ON public.validaciones_cursos USING btree (codigo_matricula);
 +   DROP INDEX public.fki_fk_codigo_matricula;
       public         postgres    false    200            �
           1259    25298    fki_fk_codigo_seccion    INDEX     U   CREATE INDEX fki_fk_codigo_seccion ON public.matricula USING btree (codigo_seccion);
 )   DROP INDEX public.fki_fk_codigo_seccion;
       public         postgres    false    204            �
           1259    25338    fki_fk_id_alumno    INDEX     Z   CREATE INDEX fki_fk_id_alumno ON public."Relacion_Alumnos_curso" USING btree (id_alumno);
 $   DROP INDEX public.fki_fk_id_alumno;
       public         postgres    false    205            �
           2606    25252    secciones Codigo_curso    FK CONSTRAINT     �   ALTER TABLE ONLY public.secciones
    ADD CONSTRAINT "Codigo_curso" FOREIGN KEY (codigo_curso) REFERENCES public.cursos(codigo_curso);
 B   ALTER TABLE ONLY public.secciones DROP CONSTRAINT "Codigo_curso";
       public       postgres    false    202    2745    201            �
           2606    25236    secciones ID_Instructor    FK CONSTRAINT     �   ALTER TABLE ONLY public.secciones
    ADD CONSTRAINT "ID_Instructor" FOREIGN KEY ("codigo_Instructor") REFERENCES public.instructores(id_instructor);
 C   ALTER TABLE ONLY public.secciones DROP CONSTRAINT "ID_Instructor";
       public       postgres    false    2728    201    198            �
           2606    25272    matricula fk_codigo_alumno    FK CONSTRAINT     �   ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT fk_codigo_alumno FOREIGN KEY (codigo_alumno) REFERENCES public.alumnos(id_alumno);
 D   ALTER TABLE ONLY public.matricula DROP CONSTRAINT fk_codigo_alumno;
       public       postgres    false    204    2724    197            �
           2606    25279 '   validaciones_cursos fk_codigo_matricula    FK CONSTRAINT     �   ALTER TABLE ONLY public.validaciones_cursos
    ADD CONSTRAINT fk_codigo_matricula FOREIGN KEY (codigo_matricula) REFERENCES public.matricula(codigo_matricula);
 Q   ALTER TABLE ONLY public.validaciones_cursos DROP CONSTRAINT fk_codigo_matricula;
       public       postgres    false    204    2749    200            �
           2606    25318    matricula fk_codigo_seccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT fk_codigo_seccion FOREIGN KEY (codigo_seccion) REFERENCES public.secciones(codigo_seccion);
 E   ALTER TABLE ONLY public.matricula DROP CONSTRAINT fk_codigo_seccion;
       public       postgres    false    201    2741    204            �
           2606    25449 .   Relacion_Alumnos_curso fk_curso_codigo_seccion    FK CONSTRAINT     �   ALTER TABLE ONLY public."Relacion_Alumnos_curso"
    ADD CONSTRAINT fk_curso_codigo_seccion FOREIGN KEY (codigo_seccion) REFERENCES public.secciones(codigo_seccion);
 Z   ALTER TABLE ONLY public."Relacion_Alumnos_curso" DROP CONSTRAINT fk_curso_codigo_seccion;
       public       postgres    false    201    2741    205            �
           2606    25444 (   Relacion_Alumnos_curso fk_curso_idalumno    FK CONSTRAINT     �   ALTER TABLE ONLY public."Relacion_Alumnos_curso"
    ADD CONSTRAINT fk_curso_idalumno FOREIGN KEY (id_alumno) REFERENCES public.alumnos(id_alumno);
 T   ALTER TABLE ONLY public."Relacion_Alumnos_curso" DROP CONSTRAINT fk_curso_idalumno;
       public       postgres    false    197    2724    205            K      x������ � �      E   �   x���;�0@��9A�4Ѝ��+����O����	&�O��g�ϼ&=�XI��B���4CB&�ڸ�X{�)��`}��n�
rE�nt�Sb�k�Z�Ty�]��K��E�҈v�2�S�C��o�ŝ}*#2��烷~��XlH6�BT��*"ݡ�\��� !���a�(�i�Λn襢�� ��n	      C   �  x���Mn�0�ףS�FEY�����@�N�U7��P�JJ��w�PR�؋j!p����qFS��Wo���*�ⷶ��wX|��w��[�>h�|	6�6��a=�C"s�Uo�{K�"ϧ�rN�'�xAGT�8�!UU��;pжؙ��D�Û���u�/�(�b����TA~���LN������;�Sӷ9��Y��e��`��QQ��5��e0:}��`����*�l��l��u�b�X��Z�F�攤p�U�c��t����$�L�V��0���3��]<�d��4K�4/撖K[i?���[?�)��=^��������+x�JX�9����ҟV��ӡE6�m��N�o8�t�?P�HS���X����W�60��_(�N-�l:e��c�;O�cc�\��a�x��6ͫ�+d�'PSY|�:L��3'Cqԟ�$I�4�K      H   #  x���Qo�  �g��[ݲW��qQ1�u{�U��X0���5��$�� �|��JB`���م�BI ZpiXÀ9��Q=�	�Ӽ�����]A�?��IJv�(NI����X���]��Iu��2�}��~b4;��r�J�B��1��ޒ蹊��ݐ%��~�{��%�{\�)ʮ$~�q������-tZ�N:���7~���mdUK��l�ĸ���J�lW͍�'�����~�j3h�Cáa�F�$�����)����O��}���U���\���u��A�Nr�\#��|����2      D   0  x���Mn�0F��Sp᧰+
TE*A�݌�!HƮp�EO_��nZ�v�zeY�4���TӨ(s,t�z:��,����!����Qq<�tP���	T({�&.nGA�����mK���<���6._I�`3]� hp��o��mmc�4�~:��(~H��i���"C �2]f!M!�ˈ�B�Ҩ�yZ����a�{��dnsC����L��ҫ���0ڜ�IJd�$
��y�9y��ٱ�LR�����/�߀�\�VI��+�0k��/�_K���&U_uO�ߍ�@Y^���;�پ�&yu	!�*]�q      J   .   x�3�4�4470P .cN#N[��(`h	�r�q�"db���� ��      B      x������ � �      G   9   x�0�40PPP�4���W .Cs�H���=,fR�4�t�pv�1���qqq g�
�      F   m   x�N-J��WH-J�R 
p�����73�45G!8�495%�(-��&iƦ�1~\��%�E
��E�)���Dh��M���ANLK,-.�'�>�8�$��$���=... V�U�     