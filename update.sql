-- Problem 1
UPDATE customer
SET fax = null
WHERE fax IS NOT null;
-- Problem 2
UPDATE customer
SET company = 'Sell'
WHERE company IS null;
-- Problem 3
UPDATE customer
SET last_name = 'Thompson'
WHERE first_name = 'Julia' AND last_name = 'Barnett';
-- Problem 4
UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';
-- Problem 5
UPDATE track
SET composer = 'The Darkness around us'
WHERE genre_id IN (SELECT genre_id FROM genre WHERE name = 'Metal') AND composer IS null;

