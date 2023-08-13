CREATE TABLE "patients" (
  "id" SERIAL PRIMARY KEY,
  "name" TEXT
);

CREATE TABLE "diagnosis" (
  "id" SERIAL PRIMARY KEY,
  "appt_id" INTEGER REFERENCES appointments,
  CONSTRAINT "FK_diagnosis.appt_id"
    FOREIGN KEY ("appt_id")
      REFERENCES "patients"("name")
);

CREATE TABLE "doctors" (
  "id" SERIAL PRIMARY KEY,
  " last name " TEXT
);

CREATE TABLE "appointments" (
  "id" SERIAL PRIMARY KEY,
  "dr_id" INTEGER REFERENCES doctors,
  "patient_id" INTEGER REFERENCES patients,
  CONSTRAINT "FK_appointments.dr_id"
    FOREIGN KEY ("dr_id")
      REFERENCES "doctors"("id"),
  CONSTRAINT "FK_appointments.dr_id"
    FOREIGN KEY ("dr_id")
      REFERENCES "patients"("name")
);

CREATE TABLE "diseases" (
  "id" SERIAL PRIMARY KEY,
  "disease_name" TEXT,
  CONSTRAINT "FK_diseases.id"
    FOREIGN KEY ("id")
      REFERENCES "patients"("name")
);

