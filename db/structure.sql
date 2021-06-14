CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL)

CREATE TABLE "products" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "description" text, "image_url" varchar, "price" decimal(15,4), "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL)
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY)

INSERT INTO "schema_migrations" (version) VALUES
('20210614180630');


