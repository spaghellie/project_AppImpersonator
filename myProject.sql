/* Pretend like this is for an app where I store details about recipes that I've made in the past */

CREATE TABLE meals (
    id INTEGER PRIMARY KEY,
    recipe TEXT,
    date TEXT,
    rating INTEGER);

INSERT INTO meals (recipe, date, rating) VALUES 
    ("Chicken Pot Pie", "12-23-2022", 4),
    ("BBQ Meatballs", "1-3-2023", 3),
    ("Mississippi Pot Roast", "1-5-2023", 5),
    ("Picante Pizza", "8-6-2020", 1);
SELECT * FROM meals;
    
UPDATE meals SET rating = 0 WHERE id = 4;
SELECT * FROM meals;

INSERT INTO meals (recipe, date, rating) VALUES
    ("Bulgolgi Meatballs", "11-16-2022", 3),
    ("Gnocchi", "11-20-2022", 4);

/* I care about who I want to try each meal */
ALTER TABLE meals ADD COLUMN company TEXT;
SELECT * FROM meals;

UPDATE meals SET company = "Burton" WHERE rating = 4;
UPDATE meals SET company = "Mom" WHERE recipe LIKE "%Chicken%" OR rating IN (2, 3);
UPDATE meals SET company = "Dad" WHERE rating = 5 OR recipe LIKE "%Bulgolgi%";
SELECT * FROM meals;

/* DELETE a meal that should never be made again */
DELETE FROM meals WHERE rating < 1;
SELECT * FROM  meals;
