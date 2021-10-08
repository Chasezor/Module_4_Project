SELECT * FROM artist;

INSERT INTO artist (name) VALUES ('Cosmic Tone');
INSERT INTO artist (name) VALUES ('Flight Facilities');
INSERT INTO artist (name) VALUES ('Majestic Mix');

SELECT * FROM artist ORDER BY name ASC LIMIT 5;

SELECT first_name, last_name FROM Employee WHERE city = 'Calgary';

SELECT * FROM employee WHERE reports_to = '2';

SELECT COUNT(city) FROM employee
WHERE city = 'Lethbridge';

SELECT * FROM invoice;

SELECT COUNT(total) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice
WHERE billing_country = 'USA';

SELECT MIN(total) FROM invoice
WHERE billing_country = 'USA';

SELECT * FROM invoice 
WHERE total > 5 AND billing_country = 'USA';

SELECT COUNT(total) FROM invoice 
WHERE total < 5 AND billing_country = 'USA';

SELECt SUM(total) FROM invoice;

-------------------------

SELECT invoice_line.unit_price, invoice.invoice_id, 
FROM invoice
JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id
Where invoice_line.unit_price > 0.99;


SELECT invoice.invoice_date, customer.first_name, customer.last_name, invoice.total, invoice.customer_id
FROM invoice
JOIN customer ON invoice.customer_id = invoice.customer_id;


SELECT customer.first_name, customer.last_name, customer.support_rep_id, employee.first_name, employee.last_name
FROM customer
JOIN employee ON customer.support_rep_id = employee.employee_id;


SELECT album.title, artist.name
FROM album
JOIN artist
ON album.artist_id = artist.artist_id;

-------------------------------------