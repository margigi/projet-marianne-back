  
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
 
  "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "title" TEXT NOT NULL DEFAULT '',
  "excerpt" TEXT NOT NULL DEFAULT'',
  "content"TEXT NOT NULL DEFAULT'',
  "image_url" TEXT VALID URL-DEFAULT'/default-img.jpg',
  "state" TEXT NOT NULL DEFAULT 'approved',
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
  "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  "updated_at" TIMESTAMPTZ,
   "user_id" INTEGER NOT NULL,


/* une fois les tables crées, on va les remplir */
INSERT INTO "article" ("title","excerpt","content","image_url")
VALUES ('title','excerpt','content','image');
INSERT INTO "category" ("name", "image_url", "list_id")
VALUES ('name','image',1),   
INSERT INTO "user" ("firstname","lastname","email","password","role","avatar_url")
VALUES ('firstname','lastname','email','password','role','avatar');
INSERT INTO "application"("content","state")
VALUES('content','state');

COMMIT;
