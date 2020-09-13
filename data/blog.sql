  
BEGIN;
-- D'abord on supprime la table 'si elle existe"
DROP TABLE IF EXISTS "article", "category", "user", "application";
-- Ensuite on la (re)crée


/*table : User */
CREATE TABLE "user" (
  "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "firstname" TEXT NOT NULL DEFAULT '',
  "lastname" TEXT NOT NULL DEFAULT '',
   "email" TEXT NOT NULL DEFAULT '',
    "password" TEXT NOT NULL DEFAULT '',
    "role" TEXT NOT NULL DEFAULT 'editor',
   "avatar_url"  TEXT VALID URL-DEFAULT'/default-avatar.jpg',
  "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  "updated_at" TIMESTAMPTZ
);

CREATE TABLE "article" (
  -- on utilise le nouveau type qui est un standard SQL alors que SERIAL est un pseudo-type de PG
  "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "title" TEXT NOT NULL DEFAULT '',
  "excerpt" TEXT NOT NULL DEFAULT'',
  "content"TEXT NOT NULL DEFAULT'',
  "image_url" TEXT VALID URL-DEFAULT'/default-img.jpg',
  "state" TEXT NOT NULL DEFAULT 'approved',
  -- pour avoir la date et l'heure on utilise le type "timestamp", et pour être le plus précis possible on utilisera plutôt le type "timestampz" qui contient en plus de la date et de l'heure le fuseau horaire défini dans les locales du serveur
  "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  "updated_at" TIMESTAMPTZ,
  "category_id" INTEGER NOT NULL,
   "user_id" INTEGER NOT NULL,
);
/* table : Category */
CREATE TABLE "category"(
  "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" TEXT NOT NULL DEFAULT '',
 "image_url" TEXT VALID URL-DEFAULT'/default-img.jpg',
  "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  "updated_at" TIMESTAMPTZ
);

/*  table ! */
CREATE TABLE "application" (
  "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "content"TEXT NOT NULL DEFAULT'',
  "state" TEXT NOT NULL DEFAULT 'approved',
  -- pour avoir la date et l'heure on utilise le type "timestamp", et pour être le plus précis possible on utilisera plutôt le type "timestampz" qui contient en plus de la date et de l'heure le fuseau horaire défini dans les locales du serveur
  "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  "updated_at" TIMESTAMPTZ,
   "user_id" INTEGER NOT NULL,


/* une fois les tables crées, on va les remplir */
/* une fois les tables crées, on va les remplir */
INSERT INTO "article" ("title","excerpt","content","image_url")
VALUES ('article' );
INSERT INTO "category" ("name", "image_url", "list_id")
VALUES ('category'),   
INSERT INTO "user" ("firstname","lastname","email","password","role","avatar_url")
VALUES ('user';
INSERT INTO "application"("content","state")
VALUES('content','state');

COMMIT;
