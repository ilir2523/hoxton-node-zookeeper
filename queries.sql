-- Create an "animals" table with columns for:
            -- [species, name, age, was fed (yes/no), their favorite food]
CREATE TABLE animals(
 id INTEGER,
 species TEXT NOT NULL,
 name TEXT,
 age INTEGER,
 fed INTEGER,
 favorite_food TEXT,
 PRIMARY KEY("id"));

-- Populate the table with some animals you like
INSERT INTO animals(species, name, age, fed, favorite_food )
VALUES("Ailuropoda melanoleuca", "giant panda", 2, 0, "bamboo");

INSERT INTO animals(species, name, age, fed, favorite_food )
VALUES("Panthera tigris", "tiger", 5, 0, "meat");

INSERT INTO animals(species, name, age, fed, favorite_food )
VALUES("Balaenoptera musculus", "blue whale", 10, 0, "krill");

INSERT INTO animals(species, name, age, fed, favorite_food )
VALUES("Grus americana", "whooping crane", 2, 0, "crustaceans");

-- Update some properties of the animal - anything you like e.g. their age or if they were fed
UPDATE animals SET age=3 WHERE id=1;

UPDATE animals SET fed=1 WHERE (id < 3);

-- Remove one of the animals - they are being transfered to a different zoo 😦
DELETE FROM animals WHERE id=4;

-- Remove the column for their favourite_food, you don't need that information anymore 
ALTER TABLE animals DROP favorite_food;

-- Start tracking where the animals are from. Call it origin and add a city for a couple animals.
ALTER TABLE animals ADD origin TEXT NOT NULL DEFAULT "Madagascar"

-- feed all the animals using just one command
UPDATE animals SET fed=1