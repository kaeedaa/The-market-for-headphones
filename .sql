Show all headphones in stock:
SELECT * FROM Headphones WHERE stock_quantity > 0;

Update stock quantity of a headphone:

UPDATE Headphones SET stock_quantity = stock_quantity - 1 WHERE headphone_id = <headphone_id>;

Calculate total sales revenue:

SELECT SUM(price * quantity) AS total_revenue FROM Orders JOIN Headphones USING (headphone_id);

Retrieve customer orders along with headphone details:

SELECT c.name, h.model, o.quantity, o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Headphones h ON o.headphone_id = h.headphone_id;

Find the best-selling headphones:

SELECT h.model, SUM(o.quantity) AS total_sold
FROM Orders o
JOIN Headphones h ON o.headphone_id = h.headphone_id
GROUP BY h.model
ORDER BY total_sold DESC
LIMIT 5;


