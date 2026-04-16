DROP SCHEMA IF EXISTS lana_dog_walking; 
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

SELECT * FROM lana_dog_walking; -- retreveied 54 records


CREATE TABLE customers (
    customer_number INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE dogs (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_name VARCHAR(50) NOT NULL,
    dog_type VARCHAR(50),
    age INT,
    size VARCHAR(20),
    customer_number INT
);

ALTER TABLE dogs
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_number) REFERENCES customers(customer_number);


CREATE TABLE appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    duration_minutes INT,
    dog_id INT,
    customer_number INT,

    CONSTRAINT fk_appointments_dogs
        FOREIGN KEY (dog_id) REFERENCES dogs(dog_id),

    CONSTRAINT fk_appointments_customers
        FOREIGN KEY (customer_number) REFERENCES customers(customer_number)
);
