BEGIN TRANSACTION;

DROP TABLE IF EXISTS product_ingredients,
product,
category,
ingredients,
users CASCADE;

--users
-- Product Table (Consider adding SKU)
CREATE TABLE
    product (
        product_id SERIAL,
        category_id int,
        name varchar(100) NOT NULL,
        price decimal(8, 2),
        image varchar(100),
        description varchar(1000),
        in_stock boolean DEFAULT TRUE,
        CONSTRAINT PK_product PRIMARY KEY (product_id),
        CONSTRAINT FK_category_product FOREIGN KEY (category_id) REFERENCES category (category_id) ON DELETE SET NULL
    );

-- Category Table
CREATE TABLE
    category (
        category_id SERIAL,
        name varchar(100) NOT NULL unique,
        CONSTRAINT PK_category PRIMARY KEY (category_id)
    );

-- Ingredients Table
CREATE TABLE
    ingredients (
        ingredient_id SERIAL,
        name varchar(100) NOT NULL unique,
        CONSTRAINT PK_ingredient PRIMARY KEY (ingredient_id)
    );

-- Product_Ingredients Join Table (Many-to-Many Relationship)
CREATE TABLE
    product_ingredients (
        product_id int NOT NULL,
        ingredient_id int NOT NULL,
        CONSTRAINT pk_product_ingredient PRIMARY KEY (product_id, ingredient_id),
        CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES product (product_id) ON DELETE CASCADE,
        CONSTRAINT fk_ingredients FOREIGN KEY (ingredient_id) REFERENCES ingredients (ingredient_id) ON DELETE CASCADE
    );