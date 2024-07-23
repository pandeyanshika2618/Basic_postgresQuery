CREATE TABLE categories (
  category_id SERIAL NOT NULL PRIMARY KEY,
  category_name VARCHAR(255),
  description VARCHAR(255)
);
INSERT INTO categories (category_name, description)
VALUES
  ('Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
  ('Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
  ('Confections', 'Desserts, candies, and sweet breads'),
  ('Dairy Products', 'Cheeses'),
  ('Cereals', 'Breads, crackers, pasta, and cereal'),
  ('Meat', 'Prepared meats'),
  ('Produce', 'Dried fruit and bean curd');
 SELECT* FROM categories;
CREATE TABLE customers (
  customer_id SERIAL NOT NULL PRIMARY KEY,
  customer_name VARCHAR(255),
  contact_name VARCHAR(255),
  address VARCHAR(255),
  city VARCHAR(255),
  country VARCHAR(255)
);
INSERT INTO customers (customer_name, contact_name, address, city, country)
VALUES
  ('Indian Handicrafts Emporium', 'Anita Sharma', '5 Janpath Road', 'New Delhi', 'India'),
  ('Mumbai Textile Mills', 'Rajesh Kumar', '9 Worli Sea Face', 'Mumbai', 'India'),
  ('Jaipur Gems and Jewelry', 'Priyanka Singh', '25 M.I. Road', 'Jaipur', 'India'),
  ('Hyderabad Spices and Sweets', 'Sanjay Reddy', '7 Banjara Hills', 'Hyderabad', 'India'),
  ('Bangalore Electronics', 'Deepak Menon', '12 MG Road', 'Bangalore', 'India');
CREATE TABLE products (
  product_id SERIAL NOT NULL PRIMARY KEY,
  product_name VARCHAR(255),
  category_id INT,
  unit VARCHAR(255),
  price INTEGER
);
INSERT INTO products (product_name, category_id, unit, price)
VALUES
  ('Tandoori Masala', 1, '250 grams', 12),
  ('Banarasi Silk Saree', 2, '1 saree', 200),
  ('Kundan Necklace Set', 3, '1 set', 150),
  ('Jaipur Blue Pottery Vase', 4, '1 vase', 30),
   ('Gujrat diamond', 6, '10 diamnds' ,100);

Insert INTO products ()
SELECT * from categories where category_name Like 'C%';
SELECT * from categories where category_name ILike 'c%';
SELECT * from categories where category_name Like '_o%';
SELECT * from categories where category_name Like '%s';
SELECT * from categories where category_name IN ('Beverages' , 'Dairy Products' ,'Cereals');
SELECT DISTINCT city from customers ;
SELECT *from customers LIMIT 5  OFFSET 0; 
SELECT count(customer_id) from customers where country ='India';
SELECT categories.category_id, categories.category_name, categories.description
FROM categories
LEFT JOIN products ON categories.category_id = products.category_id;
SELECT categories.category_id, categories.category_name, categories.description
FROM categories
RIGHT JOIN products ON categories.category_id = products.category_id;
SELECT categories.category_id, categories.category_name, categories.description
FROM categories
FULL JOIN products ON categories.category_id = products.category_id;
ALTER Table products drop column price ;
DELETE from products ;
