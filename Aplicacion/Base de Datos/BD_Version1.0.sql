PGDMP     2                	    w            DB_aprendamos_1.0    11.5    11.5 *    8           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            9           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            :           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ;           1262    24738    DB_aprendamos_1.0    DATABASE     �   CREATE DATABASE "DB_aprendamos_1.0" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Honduras.1252' LC_CTYPE = 'Spanish_Honduras.1252';
 #   DROP DATABASE "DB_aprendamos_1.0";
             postgres    false            �            1259    24773    persona    TABLE     >  CREATE TABLE public.persona (
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
       public         postgres    false            �            1259    24788    administrador    TABLE     g   CREATE TABLE public.administrador (
    id_administrador integer NOT NULL
)
INHERITS (public.persona);
 !   DROP TABLE public.administrador;
       public         postgres    false    196            �            1259    24778    alumno    TABLE     t   CREATE TABLE public.alumno (
    id_alumno integer NOT NULL,
    empresa character(50)
)
INHERITS (public.persona);
    DROP TABLE public.alumno;
       public         postgres    false    196            �            1259    25243    cursos    TABLE     �   CREATE TABLE public.cursos (
    codigo_curso character(8) NOT NULL,
    nombre character(50),
    modalidad character(14),
    duracion integer
);
    DROP TABLE public.cursos;
       public         postgres    false            �            1259    24783 
   instructor    TABLE     �   CREATE TABLE public.instructor (
    id_instructor integer NOT NULL,
    especialidad character(50)
)
INHERITS (public.persona);
    DROP TABLE public.instructor;
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
       public       postgres    false    204            <           0    0    matricula_codigo_matricula_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.matricula_codigo_matricula_seq OWNED BY public.matricula.codigo_matricula;
            public       postgres    false    203            �            1259    25225 	   secciones    TABLE     �   CREATE TABLE public.secciones (
    id_secciones character(8) NOT NULL,
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
           2604    25263    matricula codigo_matricula    DEFAULT     �   ALTER TABLE ONLY public.matricula ALTER COLUMN codigo_matricula SET DEFAULT nextval('public.matricula_codigo_matricula_seq'::regclass);
 I   ALTER TABLE public.matricula ALTER COLUMN codigo_matricula DROP DEFAULT;
       public       postgres    false    204    203    204            0          0    24788    administrador 
   TABLE DATA               �   COPY public.administrador (idpersona, nombre, apellido, nacionalidad, email, edad, sexo, telefono, direccion, id_administrador) FROM stdin;
    public       postgres    false    199   (1       .          0    24778    alumno 
   TABLE DATA               �   COPY public.alumno (idpersona, nombre, apellido, nacionalidad, email, edad, sexo, telefono, direccion, id_alumno, empresa) FROM stdin;
    public       postgres    false    197   �1       3          0    25243    cursos 
   TABLE DATA               K   COPY public.cursos (codigo_curso, nombre, modalidad, duracion) FROM stdin;
    public       postgres    false    202   �3       /          0    24783 
   instructor 
   TABLE DATA               �   COPY public.instructor (idpersona, nombre, apellido, nacionalidad, email, edad, sexo, telefono, direccion, id_instructor, especialidad) FROM stdin;
    public       postgres    false    198   �4       5          0    25260 	   matricula 
   TABLE DATA               T   COPY public.matricula (codigo_matricula, codigo_alumno, codigo_seccion) FROM stdin;
    public       postgres    false    204   �5       -          0    24773    persona 
   TABLE DATA               t   COPY public.persona (idpersona, nombre, apellido, nacionalidad, email, edad, sexo, telefono, direccion) FROM stdin;
    public       postgres    false    196   +6       2          0    25225 	   secciones 
   TABLE DATA               T   COPY public.secciones (id_secciones, "codigo_Instructor", codigo_curso) FROM stdin;
    public       postgres    false    201   H6       1          0    25218    validaciones_cursos 
   TABLE DATA               �   COPY public.validaciones_cursos (nombre_alumno, nombre_curso, nombre_instructor, codigo_validacion, codigo_matricula) FROM stdin;
    public       postgres    false    200   �6       =           0    0    matricula_codigo_matricula_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.matricula_codigo_matricula_seq', 6, true);
            public       postgres    false    203            �
           2606    24792     administrador administrador_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT administrador_pkey PRIMARY KEY (id_administrador);
 J   ALTER TABLE ONLY public.administrador DROP CONSTRAINT administrador_pkey;
       public         postgres    false    199            �
           2606    24782    alumno alumno_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT alumno_pkey PRIMARY KEY (id_alumno);
 <   ALTER TABLE ONLY public.alumno DROP CONSTRAINT alumno_pkey;
       public         postgres    false    197            �
           2606    25247    cursos cursos_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (codigo_curso);
 <   ALTER TABLE ONLY public.cursos DROP CONSTRAINT cursos_pkey;
       public         postgres    false    202            �
           2606    24787    instructor instructor_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT instructor_pkey PRIMARY KEY (id_instructor);
 D   ALTER TABLE ONLY public.instructor DROP CONSTRAINT instructor_pkey;
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
           2606    25286    secciones secciones_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.secciones
    ADD CONSTRAINT secciones_pkey PRIMARY KEY (id_secciones);
 B   ALTER TABLE ONLY public.secciones DROP CONSTRAINT secciones_pkey;
       public         postgres    false    201            �
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
           1259    25277    fki_fk_codigo_alumno    INDEX     S   CREATE INDEX fki_fk_codigo_alumno ON public.matricula USING btree (codigo_alumno);
 (   DROP INDEX public.fki_fk_codigo_alumno;
       public         postgres    false    204            �
           1259    25284    fki_fk_codigo_matricula    INDEX     c   CREATE INDEX fki_fk_codigo_matricula ON public.validaciones_cursos USING btree (codigo_matricula);
 +   DROP INDEX public.fki_fk_codigo_matricula;
       public         postgres    false    200            �
           1259    25298    fki_fk_codigo_seccion    INDEX     U   CREATE INDEX fki_fk_codigo_seccion ON public.matricula USING btree (codigo_seccion);
 )   DROP INDEX public.fki_fk_codigo_seccion;
       public         postgres    false    204            �
           2606    25252    secciones Codigo_curso    FK CONSTRAINT     �   ALTER TABLE ONLY public.secciones
    ADD CONSTRAINT "Codigo_curso" FOREIGN KEY (codigo_curso) REFERENCES public.cursos(codigo_curso);
 B   ALTER TABLE ONLY public.secciones DROP CONSTRAINT "Codigo_curso";
       public       postgres    false    202    201    2730            �
           2606    25236    secciones ID_Instructor    FK CONSTRAINT     �   ALTER TABLE ONLY public.secciones
    ADD CONSTRAINT "ID_Instructor" FOREIGN KEY ("codigo_Instructor") REFERENCES public.instructor(id_instructor);
 C   ALTER TABLE ONLY public.secciones DROP CONSTRAINT "ID_Instructor";
       public       postgres    false    2719    198    201            �
           2606    25272    matricula fk_codigo_alumno    FK CONSTRAINT     �   ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT fk_codigo_alumno FOREIGN KEY (codigo_alumno) REFERENCES public.alumno(id_alumno);
 D   ALTER TABLE ONLY public.matricula DROP CONSTRAINT fk_codigo_alumno;
       public       postgres    false    2717    204    197            �
           2606    25279 '   validaciones_cursos fk_codigo_matricula    FK CONSTRAINT     �   ALTER TABLE ONLY public.validaciones_cursos
    ADD CONSTRAINT fk_codigo_matricula FOREIGN KEY (codigo_matricula) REFERENCES public.matricula(codigo_matricula);
 Q   ALTER TABLE ONLY public.validaciones_cursos DROP CONSTRAINT fk_codigo_matricula;
       public       postgres    false    2734    200    204            �
           2606    25299    matricula fk_codigo_seccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT fk_codigo_seccion FOREIGN KEY (codigo_seccion) REFERENCES public.secciones(id_secciones);
 E   ALTER TABLE ONLY public.matricula DROP CONSTRAINT fk_codigo_seccion;
       public       postgres    false    201    2728    204            0   �   x���;�0@��9A�4Ѝ��+����O����	&�O��g�ϼ&=�XI��B���4CB&�ڸ�X{�)��`}��n�
rE�nt�Sb�k�Z�Ty�]��K��E�҈v�2�S�C��o�ŝ}*#2��烷~��XlH6�BT��*"ݡ�\��� !���a�(�i�Λn襢�� ��n	      .   �  x���Mn�0�דS��q	;���?����9vj'����P���"�E��f���y&	��j!�%S�w.I�{��t��V2�*�W�/���fT+�{����e���B��p��4�r��M���O|����N�7�hK��Im@a�����#�7|w��"�+���ʗ*Ы?���ߧW2-�{0���Oz��[�f�v��n��^�ӝ.����>�l�<������E~�i����&(9fh�7� �g�6g[�[4��Β\�4/�`&p�#�*7y��'�M��Faƃ!u�Xfɳ�����;�0x�.����q���
��@�G�fu������Ps6�M�B��.|$a
�/��IC%��Q��m�<Ƙ@&���wj���^�<�?�      3     x���Ok� �s��'(�ʮ�H�Hb�Y��.6�bI53�o?c�Y*�=="��+Ja��2�b��7R+�F
eyˁ=_�����7b�����}�p~�}��Eio����������Z��͵]���	�����'-����x��S��[B����F��^re����f�^)K�S�¿�%��A�D+|I�/����i�B�V�T�w�zs�&��em�sZA�υ�����\��3��po3m���K���Mp<?ӎ��*F��L2�O��
!��~�      /   0  x���Mn�0F��Sp᧰+
TE*A�݌�!HƮp�EO_��nZ�v�zeY�4���TӨ(s,t�z:��,����!����Qq<�tP���	T({�&.nGA�����mK���<���6._I�`3]� hp��o��mmc�4�~:��(~H��i���"C �2]f!M!�ˈ�B�Ҩ�yZ����a�{��dnsC����L��ҫ���0ڜ�IJd�$
��y�9y��ٱ�LR�����/�߀�\�VI��+�0k��/�_K���&U_uO�ߍ�@Y^���;�پ�&yu	!�*]�q      5   .   x�3�4�4470P .cN#N[��(`h	�r�q�"db���� ��      -      x������ � �      2   9   x�0�40PPP�4���W .Cs�H���=,fR�4�t�pv�1���qqq g�
�      1   m   x�N-J��WH-J�R 
p�����73�45G!8�495%�(-��&iƦ�1~\��%�E
��E�)���Dh��M���ANLK,-.�'�>�8�$��$���=... V�U�     