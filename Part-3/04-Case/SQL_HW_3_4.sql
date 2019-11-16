CREATE TABLE "animal_species" (
    "id" INT   NOT NULL,
    "animal_name" VARCHAR   NOT NULL,
    "species" VARCHAR   NOT NULL);

INSERT INTO animal_species (id, animal_name, species) VALUES
(1, 'Mickey Mouse', 'duck'),
(2, 'Minne Mouse', 'duck'),
(3, 'Donald Duck', 'mouse');


UPDATE animal_species
SET species =
CASE
	When animal_name Like '%Mouse' Then 'mouse'
	When animal_name like '%Duck' Then 'duck'
	Else species
END

Select * from animal_species;
