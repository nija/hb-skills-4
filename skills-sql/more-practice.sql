-- Include your solutions to the More Practice problems in this file.



-- INSERT
-- Add the following rows to the models table: 
-- 2015 Chevrolet Malibu, 
-- 2015 Subaru Outback 
-- (year, brand name, and model name respectively).
INSERT INTO models (year, brand_name, name)
	VALUES ('2015', 'Chevrolet', 'Malibu');
INSERT INTO models (year, brand_name, name)
	VALUES ('2015', 'Subaru', 'Outback');


-- CREATE TABLE
-- Add a table to the database called Awards with
-- the following fields: name, year, and winner_id.
-- Choose an appropriate datatype and nullability
-- for each column.
CREATE TABLE awards (
	name VARCHAR(40),
	year INTEGER,
	winner_id INTEGER
	);


-- More INSERT
-- Write an INSERT INTO statement that adds the 
-- following row to the Awards table.
-- Name: IIHS Safety Award Year: 2015 Winner ID: 49
-- Name: IIHS Safety Award Year: 2015 Winner ID: 50
INSERT INTO awards(name, year, winner_id)
	VALUES ('IIHS Safety Award', 2015, 49);
INSERT INTO awards(name, year, winner_id)
	VALUES ('IIHS Safety Award', 2015, 50);