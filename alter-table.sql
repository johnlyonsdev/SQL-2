-- Problem 1
INSERT INTO animals ( name, type, age ) VALUES ('Leo', 'lion', 12), ('Jerry', 'mouse', 4), ('Marty', 'zebra', 10), ('Gloria', 'hippo', 8), ('Alex', 'lion', 9), ('Melman', 'giraffe', 15), ('Nala', 'lion', 2), ('Marie', 'cat', 1), ('Flounder', 'fish', 8);
-- Problem 2
ALTER TABLE animals
ADD COLUMN location VARCHAR(30);
-- Problem 3
INSERT INTO animals (name, type, age, location)
VALUES ('Bob', 'Zebra', 10, 'Plains'), ('Harry', 'Platypus', 23, 'River'), ('Leroy', 'Lizard', 21, 'Swamp');
-- Problem 4
ALTER TABLE animals
RENAME COLUMN type TO species;
-- Problem 5