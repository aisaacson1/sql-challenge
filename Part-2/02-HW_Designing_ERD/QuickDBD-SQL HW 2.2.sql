-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/7mP2SM
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "trainers" (
    "emp_no" INT   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    "gym_no" INT   NOT NULL,
    CONSTRAINT "pk_trainers" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "members" (
    "member_no" INT   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "start_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "trainer_no" INT   NOT NULL,
    "gym_no" INT   NOT NULL,
    "credit_card" FLOAT8   NOT NULL,
    CONSTRAINT "pk_members" PRIMARY KEY (
        "member_no"
     )
);

CREATE TABLE "gym" (
    "gym_no" INT   NOT NULL,
    "gym_name" VARCHAR   NOT NULL,
    "gym_address" VARCHAR   NOT NULL,
    "gym_city" VARCHAR   NOT NULL,
    "gym_state" VARCHAR   NOT NULL,
    CONSTRAINT "pk_gym" PRIMARY KEY (
        "gym_no"
     )
);

CREATE TABLE "equipment" (
    "equipment_no" INT   NOT NULL,
    "gym_no" INT   NOT NULL,
    "equipment_type" VARCHAR   NOT NULL,
    "equipment_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_equipment" PRIMARY KEY (
        "equipment_no"
     )
);

CREATE TABLE "payments" (
    "payment_no" INT   NOT NULL,
    "payment_amount" MONEY   NOT NULL,
    "payment_date" DATE   NOT NULL,
    "member_no" INT   NOT NULL,
    "cc_num" FLOAT8   NOT NULL,
    CONSTRAINT "pk_payments" PRIMARY KEY (
        "payment_no"
     )
);

ALTER TABLE "trainers" ADD CONSTRAINT "fk_trainers_gym_no" FOREIGN KEY("gym_no")
REFERENCES "gym" ("gym_no");

ALTER TABLE "members" ADD CONSTRAINT "fk_members_trainer_no" FOREIGN KEY("trainer_no")
REFERENCES "trainers" ("emp_no");

ALTER TABLE "members" ADD CONSTRAINT "fk_members_gym_no" FOREIGN KEY("gym_no")
REFERENCES "gym" ("gym_no");

ALTER TABLE "equipment" ADD CONSTRAINT "fk_equipment_gym_no" FOREIGN KEY("gym_no")
REFERENCES "gym" ("gym_no");

ALTER TABLE "payments" ADD CONSTRAINT "fk_payments_member_no_cc_num" FOREIGN KEY("member_no", "cc_num")
REFERENCES "members" ("member_no", "credit_card");

