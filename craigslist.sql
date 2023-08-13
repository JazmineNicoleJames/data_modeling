CREATE TABLE "categories" (
  "id" SERIAL PRIMARY KEY,
  "category_name" TEXT
);

CREATE TABLE "posts" (
  "id" SERIAL PRIMARY KEY,
  "title" TEXT,
  "text" TEXT,
  "user_id" INTEGER REFERENCES users,
  "location" TEXT,
  "preferred_region" INTEGER REFERENCES region,
  CONSTRAINT "FK_posts.text"
    FOREIGN KEY ("text")
      REFERENCES "categories"("id")
);

CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "preferred_region" TEXT REFERENCES region
);

CREATE TABLE "region" (
  "id" SERIAL PRIMARY KEY,
  CONSTRAINT "FK_region.id"
    FOREIGN KEY ("id")
      REFERENCES "users"("preferred_region")
);

