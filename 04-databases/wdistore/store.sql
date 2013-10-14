CREATE TABLE products (
  id SERIAL4 PRIMARY KEY,
  name TEXT,
  description TEXT,
  price DECIMAL(8,2),
  on_sale BOOLEAN
);
