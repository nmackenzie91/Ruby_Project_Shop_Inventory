DROP TABLE inventories;
DROP TABLE products;
DROP TABLE manufacturers;



CREATE TABLE manufacturers
(
    id SERIAL primary key,
    name VARCHAR(255) not null,
    address VARCHAR(255) not null,
    email VARCHAR(255) not null,
    tel INT,
    product_speciality VARCHAR(255) not null,
    shipping_times VARCHAR(255) not null
);

CREATE TABLE products
(
    id SERIAL primary key,
    name VARCHAR(255) not null,
    type VARCHAR(255) not null,
    quantity INT,
    buying_price FLOAT,
    selling_price FLOAT,
    manufacturer_id INT REFERENCES manufacturers(id) ON DELETE CASCADE
);



CREATE TABLE inventories
(
    id SERIAL primary key,
    product_id INT references products(id) ON DELETE CASCADE,
    manufacturer_id INT references manufacturers(id) ON DELETE CASCADE
);