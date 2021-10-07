-- Problem 1
SELECT * 
FROM invoice i
JOIN invoice_line il ON i.invoice_id = il.invoice_id
WHERE il.unit_price > .99;

-- Problem 2
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id; 
-- Problem 3
SELECT c.first_name "Customer's First Name", c.last_name "Customer's Last Name", e.first_name "Support Rep's First Name", e.last_name "Support Rep's Last Name"
FROM employee e
JOIN customer c ON e.employee_id = c.customer_id; 
-- Problem 5
SELECT al.title "Album Title", ar.name "Artist Name"
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id; 
-- Problem 6
SELECT pt.track_id 
FROM playlist_track pt
JOIN playlist p ON pt.playlist_id = p.playlist_id
WHERE p.name = 'Music';
-- Problem 7
SELECT t.name "Track Name", p.playlist_id "Playlist ID"
FROM track t
JOIN playlist_track p ON t.track_id = p.track_id;
-- Problem 8
SELECT t.name "Track Name", p.name "Playlist Name"
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON p.playlist_id = pt.playlist_id;
-- Problem 9
SELECT t.name "Track Name", a.title "Album Title"
FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';