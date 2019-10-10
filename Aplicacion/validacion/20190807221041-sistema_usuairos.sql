/*
PostgreSQL Backup
Database: sistema_usuarios/public
Backup Time: 2019-08-07 22:10:42
*/

DROP SEQUENCE IF EXISTS "public"."usuarios_usu_id_seq";
DROP TABLE IF EXISTS "public"."usuarios";
CREATE SEQUENCE "usuarios_usu_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE TABLE "usuarios" (
  "usu_password" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "usu_estado" int4 NOT NULL,
  "usu_email" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "usu_nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "usu_id" int4 NOT NULL DEFAULT nextval('usuarios_usu_id_seq'::regclass)
)
;
ALTER TABLE "usuarios" OWNER TO "postgres";
BEGIN;
LOCK TABLE "public"."usuarios" IN SHARE MODE;
DELETE FROM "public"."usuarios";
INSERT INTO "public"."usuarios" ("usu_password","usu_estado","usu_email","usu_nombre","usu_id") VALUES ('$2y$10$il0S1kcc6Qrt/Fq8Zq6KNe16Fz0ryhn53c56fcfbnzNyqRcEWH97K', 1, 'jahch94@gmail.com', 'jahch94', 1),('$2y$10$mEN/w/E6N5jLVFfd.D0dZu/hVwtVbC6SXMjkkqfEZtkePzbJPV5My', 1, 'khell_0147@hotmail.com', 'user567', 2);
COMMIT;
ALTER TABLE "usuarios" ADD CONSTRAINT "usuarios_pkey" PRIMARY KEY ("usu_id");
ALTER SEQUENCE "usuarios_usu_id_seq"
OWNED BY "usuarios"."usu_id";
SELECT setval('"usuarios_usu_id_seq"', 3, true);
ALTER SEQUENCE "usuarios_usu_id_seq" OWNER TO "postgres";
