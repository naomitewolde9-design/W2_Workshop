USE lana_dog_walking;


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
    customer_number INT NOT NULL,
    CONSTRAINT fk_dogs_customers
        FOREIGN KEY (customer_number)
        REFERENCES customers(customer_number)
);


CREATE TABLE appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    duration_minutes INT,
    dog_id INT NOT NULL,
    customer_number INT NOT NULL,
    
CONSTRAINT fk_appointments_dogs
        FOREIGN KEY (dog_id)
        REFERENCES dogs(dog_id),

    CONSTRAINT fk_appointments_customers
        FOREIGN KEY (customer_number)
        REFERENCES customers(customer_number)
);


INSERT INTO customers (
    customer_number, first_name, last_name, phone_number, email, address
) VALUES
(1, 'Sarah', 'Johnson', '704-555-1001', 'sarah.j@email.com', '123 Maple St, Charlotte, NC'),
(2, 'Mike', 'Anderson', '704-555-1002', 'mike.a@email.com', '456 Oak Ave, Charlotte, NC'),
(3, 'Emily', 'Brown', '704-555-1003', 'emily.b@email.com', '789 Pine Rd, Charlotte, NC'),
(4, 'David', 'Lee', '704-555-1004', 'david.l@email.com', '321 Elm St, Charlotte, NC'),
(5, 'Olivia', 'Martinez', '704-555-1005', 'olivia.m@email.com', '654 Birch Ln, Charlotte, NC'),
(6, 'James', 'Wilson', '704-555-1006', 'james.w@email.com', '987 Cedar Dr, Charlotte, NC'),
(7, 'Sophia', 'Taylor', '704-555-1007', 'sophia.t@email.com', '159 Walnut St, Charlotte, NC'),
(8, 'Daniel', 'Moore', '704-555-1008', 'daniel.m@email.com', '852 Cherry Ave, Charlotte, NC'),
(9, 'Isabella', 'Clark', '704-555-1009', 'isabella.c@email.com', '753 Willow Rd, Charlotte, NC'),
(10, 'Ethan', 'Harris', '704-555-1010', 'ethan.h@email.com', '951 Poplar Ct, Charlotte, 
NC');


INSERT INTO dogs (
    dog_id, dog_name, dog_type, age, size, customer_number
) VALUES
(1, 'Larry', 'Pug', 4, 'Small', 1),
(2, 'Bella', 'Golden Retriever', 6, 'Large', 2),
(3, 'Max', 'Beagle', 3, 'Medium', 3),
(4, 'Luna', 'Husky', 5, 'Large', 4),
(5, 'Rocky', 'Bulldog', 7, 'Medium', 5),
(6, 'Milo', 'Terrier', 2, 'Small', 6),
(7, 'Daisy', 'Poodle', 4, 'Medium', 7),
(8, 'Charlie', 'Labrador', 6, 'Large', 8),
(9, 'Lucy', 'Chihuahua', 3, 'Small', 9),
(10, 'Buddy', 'Boxer', 5, 'Large', 10);


INSERT INTO appointments (
    appointment_id, appointment_date, appointment_time,
    duration_minutes, dog_id, customer_number
) VALUES
(1, '2026-04-20', '09:00:00', 30, 1, 1),
(2, '2026-04-20', '10:00:00', 45, 2, 2),
(3, '2026-04-21', '11:00:00', 60, 3, 3),
(4, '2026-04-21', '13:00:00', 30, 4, 4),
(5, '2026-04-22', '09:30:00', 45, 5, 5),
(6, '2026-04-22', '10:30:00', 30, 6, 6),
(7, '2026-04-23', '11:30:00', 60, 7, 7),
(8, '2026-04-23', '14:00:00', 45, 8, 8),
(9, '2026-04-24', '09:00:00', 30, 9, 9),
(10,'2026-04-24', '10:00:00', 60,10,10);

SELECT * FROM lana_dog_walking;
