PGDMP     #                	    w            DB_aprendamos_1.0    11.5    11.5 "    /           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            1           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            2           1262    24738    DB_aprendamos_1.0    DATABASE     �   CREATE DATABASE "DB_aprendamos_1.0" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Honduras.1252' LC_CTYPE = 'Spanish_Honduras.1252';
 #   DROP DATABASE "DB_aprendamos_1.0";
             postgres    false            �            1259    24793    Cursos    TABLE     �   CREATE TABLE public."Cursos" (
    id_curso integer NOT NULL,
    "Nombre" character(50) NOT NULL,
    "Modalidad" character(20),
    "Duracion" integer
);
    DROP TABLE public."Cursos";
       public         postgres    false            �            1259    25166    Relacion_Curso-Alumno    TABLE     �   CREATE TABLE public."Relacion_Curso-Alumno" (
    "NMID_alum_curs" integer NOT NULL,
    "Curso_ID_curso" integer NOT NULL,
    "Alumno_ID_alumno" integer NOT NULL
);
 +   DROP TABLE public."Relacion_Curso-Alumno";
       public         postgres    false            �            1259    25179    Relacion_curso-instructor    TABLE     �   CREATE TABLE public."Relacion_curso-instructor" (
    "ID_relacion_Cursoinstructor" integer NOT NULL,
    "Instructor_ID_instructor" integer NOT NULL,
    "Curso_ID_curso" integer NOT NULL
);
 /   DROP TABLE public."Relacion_curso-instructor";
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
       public         postgres    false    196            �            1259    24783 
   instructor    TABLE     �   CREATE TABLE public.instructor (
    id_instructor integer NOT NULL,
    especialidad character(50)
)
INHERITS (public.persona);
    DROP TABLE public.instructor;
       public         postgres    false    196            �            1259    25153    relacion_alumnocurso    TABLE     |   CREATE TABLE public.relacion_alumnocurso (
    id_relacion integer NOT NULL,
    id_alumno integer,
    id_curso integer
);
 (   DROP TABLE public.relacion_alumnocurso;
       public         postgres    false            )          0    24793    Cursos 
   TABLE DATA               O   COPY public."Cursos" (id_curso, "Nombre", "Modalidad", "Duracion") FROM stdin;
    public       postgres    false    200   �*       +          0    25166    Relacion_Curso-Alumno 
   TABLE DATA               i   COPY public."Relacion_Curso-Alumno" ("NMID_alum_curs", "Curso_ID_curso", "Alumno_ID_alumno") FROM stdin;
    public       postgres    false    202   �*       ,          0    25179    Relacion_curso-instructor 
   TABLE DATA               �   COPY public."Relacion_curso-instructor" ("ID_relacion_Cursoinstructor", "Instructor_ID_instructor", "Curso_ID_curso") FROM stdin;
    public       postgres    false    203   �*       (          0    24788    administrador 
   TABLE DATA               �   COPY public.administrador (idpersona, nombre, apellido, nacionalidad, email, edad, sexo, telefono, direccion, id_administrador) FROM stdin;
    public       postgres    false    199   +       &          0    24778    alumno 
   TABLE DATA               �   COPY public.alumno (idpersona, nombre, apellido, nacionalidad, email, edad, sexo, telefono, direccion, id_alumno, empresa) FROM stdin;
    public       postgres    false    197   �+       '          0    24783 
   instructor 
   TABLE DATA               �   COPY public.instructor (idpersona, nombre, apellido, nacionalidad, email, edad, sexo, telefono, direccion, id_instructor, especialidad) FROM stdin;
    public       postgres    false    198   (-       %          0    24773    persona 
   TABLE DATA               t   COPY public.persona (idpersona, nombre, apellido, nacionalidad, email, edad, sexo, telefono, direccion) FROM stdin;
    public       postgres    false    196   h.       *          0    25153    relacion_alumnocurso 
   TABLE DATA               P   COPY public.relacion_alumnocurso (id_relacion, id_alumno, id_curso) FROM stdin;
    public       postgres    false    201   �.       �
           2606    24797    Cursos Cursos_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Cursos"
    ADD CONSTRAINT "Cursos_pkey" PRIMARY KEY (id_curso);
 @   ALTER TABLE ONLY public."Cursos" DROP CONSTRAINT "Cursos_pkey";
       public         postgres    false    200            �
           2606    25211 8   Relacion_curso-instructor Relacion_curso-instructor_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Relacion_curso-instructor"
    ADD CONSTRAINT "Relacion_curso-instructor_pkey" PRIMARY KEY ("ID_relacion_Cursoinstructor");
 f   ALTER TABLE ONLY public."Relacion_curso-instructor" DROP CONSTRAINT "Relacion_curso-instructor_pkey";
       public         postgres    false    203            �
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
           2606    24787    instructor instructor_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT instructor_pkey PRIMARY KEY (id_instructor);
 D   ALTER TABLE ONLY public.instructor DROP CONSTRAINT instructor_pkey;
       public         postgres    false    198            �
           2606    25193    persona persona_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (idpersona);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public         postgres    false    196            �
           2606    25157 .   relacion_alumnocurso relacion_alumnocurso_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.relacion_alumnocurso
    ADD CONSTRAINT relacion_alumnocurso_pkey PRIMARY KEY (id_relacion);
 X   ALTER TABLE ONLY public.relacion_alumnocurso DROP CONSTRAINT relacion_alumnocurso_pkey;
       public         postgres    false    201            �
           1259    25217    fki_fk_curso    INDEX     Q   CREATE INDEX fki_fk_curso ON public.relacion_alumnocurso USING btree (id_curso);
     DROP INDEX public.fki_fk_curso;
       public         postgres    false    201            �
           2606    25174 4   Relacion_Curso-Alumno Ref_Curso_has_Alumno_to_Alumno    FK CONSTRAINT     �   ALTER TABLE ONLY public."Relacion_Curso-Alumno"
    ADD CONSTRAINT "Ref_Curso_has_Alumno_to_Alumno" FOREIGN KEY ("Alumno_ID_alumno") REFERENCES public.alumno(id_alumno);
 b   ALTER TABLE ONLY public."Relacion_Curso-Alumno" DROP CONSTRAINT "Ref_Curso_has_Alumno_to_Alumno";
       public       postgres    false    2714    197    202            �
           2606    25169 3   Relacion_Curso-Alumno Ref_Curso_has_Alumno_to_Curso    FK CONSTRAINT     �   ALTER TABLE ONLY public."Relacion_Curso-Alumno"
    ADD CONSTRAINT "Ref_Curso_has_Alumno_to_Curso" FOREIGN KEY ("Curso_ID_curso") REFERENCES public."Cursos"(id_curso);
 a   ALTER TABLE ONLY public."Relacion_Curso-Alumno" DROP CONSTRAINT "Ref_Curso_has_Alumno_to_Curso";
       public       postgres    false    202    200    2720            �
           2606    25187 ;   Relacion_curso-instructor Ref_Instructor_has_Curso_to_Curso    FK CONSTRAINT     �   ALTER TABLE ONLY public."Relacion_curso-instructor"
    ADD CONSTRAINT "Ref_Instructor_has_Curso_to_Curso" FOREIGN KEY ("Curso_ID_curso") REFERENCES public."Cursos"(id_curso);
 i   ALTER TABLE ONLY public."Relacion_curso-instructor" DROP CONSTRAINT "Ref_Instructor_has_Curso_to_Curso";
       public       postgres    false    203    200    2720            �
           2606    25182 @   Relacion_curso-instructor Ref_Instructor_has_Curso_to_Instructor    FK CONSTRAINT     �   ALTER TABLE ONLY public."Relacion_curso-instructor"
    ADD CONSTRAINT "Ref_Instructor_has_Curso_to_Instructor" FOREIGN KEY ("Instructor_ID_instructor") REFERENCES public.instructor(id_instructor);
 n   ALTER TABLE ONLY public."Relacion_curso-instructor" DROP CONSTRAINT "Ref_Instructor_has_Curso_to_Instructor";
       public       postgres    false    203    2716    198            �
           2606    25158    relacion_alumnocurso fk_alumno    FK CONSTRAINT     �   ALTER TABLE ONLY public.relacion_alumnocurso
    ADD CONSTRAINT fk_alumno FOREIGN KEY (id_alumno) REFERENCES public.alumno(id_alumno);
 H   ALTER TABLE ONLY public.relacion_alumnocurso DROP CONSTRAINT fk_alumno;
       public       postgres    false    201    2714    197            �
           2606    25212    relacion_alumnocurso fk_curso    FK CONSTRAINT     �   ALTER TABLE ONLY public.relacion_alumnocurso
    ADD CONSTRAINT fk_curso FOREIGN KEY (id_curso) REFERENCES public."Cursos"(id_curso);
 G   ALTER TABLE ONLY public.relacion_alumnocurso DROP CONSTRAINT fk_curso;
       public       postgres    false    201    2720    200            )      x������ � �      +      x������ � �      ,      x������ � �      (   �   x���;�0@��9A�4Ѝ��+����O����	&�O��g�ϼ&=�XI��B���4CB&�ڸ�X{�)��`}��n�
rE�nt�Sb�k�Z�Ty�]��K��E�҈v�2�S�C��o�ŝ}*#2��烷~��XlH6�BT��*"ݡ�\��� !���a�(�i�Λn襢�� ��n	      &   K  x����n�0E�����!v�-H} @]u38.qe��N*���C�PEE�za�b��c;�⣕J8:q����.x�����w%S���
����،[�ՠ���l��J�C:�I2̳�/�h�4ԏ�qmC�C����B���N[c#�j	�����M'Nsa���UL-6FםU(U`70��p�R_r���{0�?;$;��Eg��Ҹ^��[dptz0�?0}�S�W T`�)�|��wZ�k�~d����h0'�T��؀ޣ�=ZgI�`Zm�b)q�c���M�Π��0��,J��e�J��E*���?D0{ZM�b6^��A����E�      '   0  x���Mn�0F��Sp᧰+
TE*A�݌�!HƮp�EO_��nZ�v�zeY�4���TӨ(s,t�z:��,����!����Qq<�tP���	T({�&.nGA�����mK���<���6._I�`3]� hp��o��mmc�4�~:��(~H��i���"C �2]f!M!�ˈ�B�Ҩ�yZ����a�{��dnsC����L��ҫ���0ڜ�IJd�$
��y�9y��ٱ�LR�����/�߀�\�VI��+�0k��/�_K���&U_uO�ߍ�@Y^���;�پ�&yu	!�*]�q      %      x������ � �      *      x������ � �     