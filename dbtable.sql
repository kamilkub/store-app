CREATE TABLE category (
    
    id IDENTITY,
    name VARCHAR(40),
    description VARCHAR(255),
    image_url VARCHAR(50),
    is_active BOOLEAN,
    
    CONSTRAINT pk_category_id PRIMARY KEY (id)

)


CREATE TABLE USERS (
      id IDENTITY,
      first_name VARCHAR(50),
      last_name VARCHAR(50),
      role VARCHAR(50),
      enabled BOOLEAN,
      password VARCHAR(50),
      email VARCHAR(70),
      contact_number VARCHAR(15),
      CONSTRAINT pk_user_id PRIMARY KEY (id),

)

CREATE TABLE Product (
      id IDENTITY,
      code VARCHAR(20),
      name VARCHAR(50),
      brand VARCHAR(50),
      description VARCHAR(255),
      unit_price DECIMAL(10,2),
      quantity INT,
      is_active BOOLEAN,
      category_id INT,
      supplier_id INT,
      purchases INT DEFAULT 0,
      views INT DEFAULT 0,
      CONSTRAINT pk_product_id PRIMARY KEY(id),
      CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category (id),
      CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_detail(id),   
);

INSERT INTO USERS 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES
('John', 'Micheal', 'ADMIN', true, 'admin', 'john@gmail.com', '123456789');
INSERT INTO USERS 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES
('Migueal', 'Arranto', 'USER', true, 'user123', 'miguel@gmail.com', '123456723');
INSERT INTO USERS 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES
('Jessica', 'Simsons', 'USER', true, 'user423', 'jessica@gmail.com', '123456745');





