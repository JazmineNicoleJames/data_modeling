CREATE TABLE "matches" (
  "id" SERIAL PRIMARY KEY,
  "team1" INTEGER REFERENCES teams,
  "team2" INTEGER REFERENCES teams,
  "date" DATE
);

CREATE TABLE "teams" (
  "id" SERIAL PRIMARY KEY,
  "Name" TEXT
);

CREATE TABLE "players" (
  "id" SERIAL PRIMARY KEY,
  "first_name" TEXT,
  "last_name" TEXT,
  "team_id" INTEGER REFERENCE teams,
  CONSTRAINT "FK_players.last_name"
    FOREIGN KEY ("last_name")
      REFERENCES "teams"("Name")
);

CREATE TABLE "referees" (
  "id" SERIAL PRIMARY KEY,
  "first_name" TEXT,
  "last_name" TEXT
);

CREATE TABLE "games" (
  "id" SERIAL PRIMARY KEY,
  "team1" INTEGER REFERENCES teams,
  "team2" INTEGER REFERENCES teams,
  "team1_score" INTEGER,
  "team2_score" INTEGER,
  CONSTRAINT "FK_games.team1"
    FOREIGN KEY ("team1")
      REFERENCES "referees"("first_name")
);

CREATE TABLE "goals" (
  "id" SERIAL PRIMARY KEY,
  "player_id" INTEGER REFERENCES players,
  "game_id" INTEGER REFERENCES games,
  CONSTRAINT "FK_goals.player_id"
    FOREIGN KEY ("player_id")
      REFERENCES "players"("first_name"),
  CONSTRAINT "FK_goals.game_id"
    FOREIGN KEY ("game_id")
      REFERENCES "games"("team2")
);

CREATE TABLE "dates" (
  "id" SERIAL PRIMARY KEY,
  "date" DATE,
  CONSTRAINT "FK_dates.date"
    FOREIGN KEY ("date")
      REFERENCES "matches"("id")
);

