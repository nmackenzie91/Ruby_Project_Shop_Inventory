DROP TABLE inventories;
DROP TABLE manufacturers;
DROP TABLE products;

CREATE TABLE products
(
    id SERIAL primary key,
    name VARCHAR(255) not null,
    type VARCHAR(255) not null,
    quantity INT,
    buying_price INT,
    selling_price INT
)

CREATE TABLE manufacturers
(
    id SERIAL primary key,
    name VARCHAR(255) not null,
    location VARCHAR(255) not null,
    email VARCHAR(255) not null,
    tel INT,
    shipping_times VARCHAR(255) not null
)

CREATE TABLE inventories
(
    id SERIAL primary key,
    product_id INT references product(id),
    manufacturer_id INT references manufacturers(id)
)