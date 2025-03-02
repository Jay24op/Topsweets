BEGIN TRANSACTION;

DROP TABLE IF EXISTS product_ingredients,
product,
category,
ingredients,
users CASCADE;

--users
-- Category Table
CREATE TABLE
    category (
        category_id SERIAL,
        name varchar(100) NOT NULL unique,
        CONSTRAINT PK_category PRIMARY KEY (category_id)
    );

-- Product Table (Consider adding SKU)
CREATE TABLE
    product (
        product_id SERIAL,
        category_id int,
        name varchar(100) NOT NULL,
        price decimal(8, 2) CHECK (price >= 0),
        image varchar(100),
        description varchar(1000),
        in_stock boolean DEFAULT TRUE,
        CONSTRAINT PK_product PRIMARY KEY (product_id),
        CONSTRAINT FK_category_product FOREIGN KEY (category_id) REFERENCES category (category_id) ON DELETE SET NULL
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

-- Category Inserts
INSERT INTO
    category (name)
VALUES
    --1
    ('cakes'),
    --2
    ('cupcakes'),
    --3
    ('cookies'),
    --4
    ('cheesecakes'),
    --5
    ('specialties');

-- Product Inserts
INSERT INTO
    product (
        category_id,
        name,
        price,
        image,
        description,
        in_stock
    )
VALUES
    --1
    (
        1,
        'Vanilla Cake',
        0.00,
        'vanilla-cake.jpeg',
        'Rich and creamy Vanilla flavors',
        TRUE
    ),
    --2
    (
        1,
        'Strawberry Cake',
        0.00,
        'strawberry-cake.jpeg',
        'Rich and creamy Strawberry flavors',
        FALSE
    ),
    --3
    (
        1,
        'Chocolate Cake',
        0.00,
        'chocolate-cake.jpeg',
        'Rich and creamy Chocolate flavors',
        TRUE
    ),
    --4
    (
        2,
        'Vanilla Cupcakes',
        0.00,
        'vanilla-Cupcakes.jpeg',
        'Rich and creamy Vanilla flavors',
        TRUE
    ),
    --5
    (
        2,
        'Strawberry Cupcakes',
        0.00,
        'strawberry-Cupcakes.jpeg',
        'Rich and creamy Strawberry flavors',
        TRUE
    ),
    --6
    (
        2,
        'Chocolate Cupcakes',
        0.00,
        'chocolate-Cupcakes.jpeg',
        'Rich and creamy Chocolate flavors',
        FALSE
    ),
    --7
    (
        3,
        'Suger Cookies',
        0.00,
        'suger-Cookies.jpeg',
        'Rich and sugery flavors',
        TRUE
    ),
    --8
    (
        3,
        'Chocolate Chip Cookies',
        0.00,
        'chocolate-chip-Cookies.jpeg',
        'Rich and creamy Chocolate flavors',
        TRUE
    ),
    --9
    (
        4,
        'Traditional Cheesecake',
        0.00,
        'traditional-Cheesecake.jpeg',
        'Rich and creamy flavors',
        TRUE
    ),
    --10
    (
        4,
        'Turtle Cheesecake',
        0.00,
        'turtle-Cheesecake.jpeg',
        'Rich and creamy Chocolate and pecan flavors',
        FALSE
    ),
    --11
    (
        5,
        'Chessecake Cookies',
        0.00,
        'cheesecake-Cookies.jpeg',
        'Rich and creamy flavors',
        TRUE
    );

-- Ingredient Inserts
INSERT INTO
    ingredients (name)
VALUES
    ('test1'),
    ('test2');

-- Product_Ingredients Inserts
INSERT INTO
    product_ingredients(product_id, ingredient_id)
VALUES
    (1, 1),
    (1, 2),
    (5, 1),
    (10, 2),
    (2, 2);

COMMIT;