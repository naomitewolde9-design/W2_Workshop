DROP DATABASE lana_dog_walking;
CREATE DATABASE lana_dog_walking;
USE lana_dog_walking;
CREATE TABLE client (
 client_id INT PRIMARY KEY,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 phone_number VARCHAR(20), 
 email VARCHAR(100), 
 address VARCHAR(150),
 preferred_contact_method VARCHAR(20)
);
CREATE TABLE DOG (
  DOG_ID INT PRIMARY KEY,
  CLIENT_ID INT,
  DOG_NAME VARCHAR (50),
  BREED VARCHAR (50),
  SEX VARCHAR (10),
  COLOR_MARKINGS VARCHAR (100), 
  DOB DATE,
  MICROCHIPPED BOOLEAN,
  NOTES VARCHAR (255), 
  FOREIGN KEY (CLIENT_ID) REFERENCES CLIENT(CLIENT_ID) 
  );
  CREATE TABLE APPOINTMENT (
  APPOINTMENT_ID INT PRIMARY KEY,
  DOG_ID INT,
  DATE DATE,
  START_TIME TIME,
  DURATION INT,
  FREQUENCY VARCHAR (50),
  FEE DECIMAL (10,2),
  FOREIGN KEY (DOG_ID) REFERENCES DOG (DOG_ID)
  );
CREATE TABLE EMERGENCY_CONTACT (
  EMERGENCY_CONTACT_ID INT PRIMARY KEY,
  CLIENT_ID INT,
  CONTACT_NAME VARCHAR (50),
  CONTACT_PHONE VARCHAR (20),
  FOREIGN KEY (CLIENT_ID) REFERENCES CLIENT (CLIENT_ID)
  );
  CREATE TABLE WALKING_SPECIFICS (
  DOG_ID INT PRIMARY KEY,
  CLIENT_ID INT,
  ENERGY_LEVEL VARCHAR (50),
  TEMPERAMENT_NOTES VARCHAR (200),
  ESCAPE_RISK BOOLEAN,
  HEAT_SENSITIVITY BOOLEAN,
  WALKING_NOTES VARCHAR (255),
  FOREIGN KEY (DOG_ID) REFERENCES DOG (DOG_ID),
  FOREIGN KEY (CLIENT_ID) REFERENCES CLIENT (CLIENT_ID)
  );
  
INSERT INTO client (client_id, first_name, last_name, phone_number, email, address, preferred_contact_method)
VALUES
(1, 'Maria', 'Lopez', '704-555-1122', 'mlopez@gmail.com', '450 Pine St Charlotte NC', 'Call'),
(2, 'James', 'Smith', '980-555-3344', 'jsmith@yahoo.com', '782 Lakeview Dr Charlotte NC', 'Email'),
(3, 'Ava', 'Johnson', '704-555-7788', 'avaj@outlook.com', '120 River Rd Charlotte NC', 'Text'),
(4, 'Michael', 'Brown', '980-555-2233', 'mbrown@gmail.com', '999 Elm St Charlotte NC', 'Call'),
(5, 'Sophia', 'Davis', '704-555-6677', 'sdavis@yahoo.com', '321 Oak Ave Charlotte NC', 'Email'),
(6, 'Daniel', 'Martinez', '980-555-8899', 'dmartinez@gmail.com', '654 Cedar Ln Charlotte NC', 'Text'),
(7, 'Olivia', 'Garcia', '704-555-4455', 'ogarcia@hotmail.com', '210 Maple St Charlotte NC', 'Call'),
(8, 'Ethan', 'Rodriguez', '980-555-9900', 'ethanr@gmail.com', '876 Birch Blvd Charlotte NC', 'Email'),
(9, 'Isabella', 'Wilson', '704-555-1234', 'iwilson@yahoo.com', '135 Spruce Ct Charlotte NC', 'Text'),
(10, 'Noah', 'Anderson', '980-555-5566', 'nanderson@gmail.com', '468 Willow Way Charlotte NC', 'Call');
INSERT INTO dog (dog_id, client_id, dog_name, breed, sex, color_markings, DOB, microchipped, notes)
VALUES
(1, 1, 'Buddy', 'Labrador', 'Male', 'Yellow', '2020-05-10', TRUE, 'Friendly'),
(2, 2, 'Luna', 'Husky', 'Female', 'Black/White', '2019-08-15', TRUE, 'Energetic'),
(3, 3, 'Max', 'German Shepherd', 'Male', 'Black/Tan', '2021-02-20', FALSE, 'Protective'),
(4, 4, 'Bella', 'Poodle', 'Female', 'White', '2022-01-05', TRUE, 'Playful'),
(5, 5, 'Rocky', 'Bulldog', 'Male', 'Brown/White', '2018-07-22', FALSE, 'Calm'),
(6, 6, 'Daisy', 'Beagle', 'Female', 'Tri-color', '2020-11-11', TRUE, 'Sniffer'),
(7, 7, 'Charlie', 'Boxer', 'Male', 'Fawn', '2019-03-03', TRUE, 'Active'),
(8, 8, 'Milo', 'Chihuahua', 'Male', 'Tan', '2021-06-18', FALSE, 'Loud'),
(9, 9, 'Coco', 'Shih Tzu', 'Female', 'Cream', '2020-09-09', TRUE, 'Grooming needed'),
(10, 10, 'Zeus', 'Rottweiler', 'Male', 'Black/Rust', '2017-12-25', TRUE, 'Strong');
INSERT INTO appointment (appointment_id, dog_id, date, start_time, duration, frequency, fee)
VALUES
(1, 1, '2026-04-20', '09:00:00', 30, 'Daily', 20.00),
(2, 2, '2026-04-20', '10:00:00', 45, 'Weekly', 25.00),
(3, 3, '2026-04-21', '11:00:00', 60, 'One-time', 30.00),
(4, 4, '2026-04-21', '12:00:00', 30, 'Daily', 20.00),
(5, 5, '2026-04-22', '13:00:00', 20, 'Weekly', 18.00),
(6, 6, '2026-04-22', '14:00:00', 30, 'Daily', 20.00),
(7, 7, '2026-04-23', '15:00:00', 45, 'Weekly', 25.00),
(8, 8, '2026-04-23', '16:00:00', 25, 'One-time', 15.00),
(9, 9, '2026-04-24', '17:00:00', 30, 'Daily', 20.00),
(10, 10, '2026-04-24', '18:00:00', 60, 'Weekly', 35.00);
INSERT INTO emergency_contact (emergency_contact_id, client_id, contact_name, contact_phone)
VALUES
(1, 1, 'Jane Doe', '704-999-1111'),
(2, 2, 'Carlos Lopez', '704-999-2222'),
(3, 3, 'Emma Smith', '704-999-3333'),
(4, 4, 'David Johnson', '704-999-4444'),
(5, 5, 'Olivia Brown', '704-999-5555'),
(6, 6, 'Lucas Davis', '704-999-6666'),
(7, 7, 'Mia Martinez', '704-999-7777'),
(8, 8, 'Ethan Garcia', '704-999-8888'),
(9, 9, 'Sophia Wilson', '704-999-9999'),
(10, 10, 'James Anderson', '704-999-0000');
INSERT INTO WALKING_SPECIFICS (DOG_ID, CLIENT_ID, ENERGY_LEVEL, TEMPERAMENT_NOTES, ESCAPE_RISK, HEAT_SENSITIVITY, WALKING_NOTES) 
VALUES
(1, 1, 'High', 'Very playful, pulls on leash', 1, 0, 'Needs long walks, enjoys parks'),
(2, 2, 'Medium', 'Friendly but shy with strangers', 0, 1, 'Prefers short walks in quiet areas'),
(3, 3, 'Low', 'Calm and relaxed, older dog', 0, 1, 'Slow pace, avoid long distances'),
(4, 4, 'High', 'Excitable and easily distracted', 1, 0, 'Requires firm leash control'),
(5, 5, 'Medium', 'Well-trained and obedient', 0, 0, 'Good for group walks'),
(6, 6, 'High', 'Very energetic, jumps often', 1, 1, 'Needs frequent breaks in heat'),
(7, 7, 'Low', 'Timid and nervous', 0, 0, 'Short walks, avoid loud areas'),
(8, 8, 'Medium', 'Friendly and social', 0, 1, 'Enjoys meeting other dogs'),
(9, 9, 'High', 'Strong and pulls hard', 1, 0, 'Use harness, experienced walker needed'),
(10, 10, 'Low', 'Gentle and easygoing', 0, 0, 'Short relaxed walks only');

SELECT * FROM walking_specifics;
SELECT * FROM emergency_contact;
SELECT * FROM dog;
SELECT * FROM dog LIMIT 5;
SELECT preferred_contact_method FROM client;
SELECT first_name,last_name From client where preferred_contact_method= 'email';
SELECT first_name,last_name from client where preferred_contact_method='call';
