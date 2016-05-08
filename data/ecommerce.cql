CREATE KEYSPACE IF NOT EXISTS ecommerce WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1 };
USE ecommerce;
create table users (username text primary key, password text, user_type text);
create table product_by_id (id text, category text,title text, price decimal, seller text, description text, primary_image_url text, primary key(id,category,seller));  
copy users (username,password, user_type) FROM '/home/vishal/Development/BigDataProject/Final/users.csv' WITH DELIMITER = '|' AND HEADER = false;
copy product_by_id (id, category, title, price, seller, description, primary_image_url) FROM '/home/vishal/Development/BigDataProject/Final/products.csv' WITH DELIMITER = '|' AND HEADER=false;

