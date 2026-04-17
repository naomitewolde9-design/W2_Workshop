DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

# First Table created CLIENT

CREATE TABLE Client (
    ClientID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    PhoneNumber BIGINT NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    EmergencyFirstName VARCHAR(50) NOT NULL,
    EmergencyLastName VARCHAR(50) NOT NULL,
    EmergencyContactNumber BIGINT NOT NULL
);

# second table created DOG client

CREATE TABLE Dog (
    DogID INT AUTO_INCREMENT PRIMARY KEY,
    Breed VARCHAR(50) NOT NULL,
    SizeLbs VARCHAR(20) NOT NULL,
    SpecialNotes VARCHAR(255),
    ClientID INT NOT NULL,
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
);

# third table created APPOINTMENT

CREATE TABLE Appointment (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    AppointmentDate DATE NOT NULL,
    Duration TIME NOT NULL,
    Start TIME NOT NULL,
    Route VARCHAR(100) NOT NULL,
    Fee INT NOT NULL,
    Completed BOOLEAN NOT NULL DEFAULT 0,
    DogID VARCHAR(50) NOT NULL,
    ClientID INT NOT NULL,
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
);

# Adding customer records


ALTER TABLE Client
MODIFY PhoneNumber VARCHAR(15) NOT NULL;

ALTER TABLE Client
MODIFY EmergencyContactNumber VARCHAR(15) NOT NULL;

INSERT INTO Client
(FirstName, LastName, PhoneNumber, Email, Address, EmergencyFirstName, EmergencyLastName, EmergencyContactNumber)
VALUES
('Michael', 'Turner', '704-555-1023', 'michael.turner@email.com', '189 Pine Ridge Rd, Charlotte, NC', 'Laura', 'Turner', '704-555-4478'),

('Amanda', 'Reyes', '704-555-3321', 'amanda.reyes@email.com', '923 Willow Ave, Charlotte, NC', 'Carlos', 'Reyes', '704-555-8812'),

('Daniel', 'Harrison', '980-555-7741', 'daniel.harrison@email.com', '55 Brookview Ln, Matthews, NC', 'Emily', 'Harrison', '980-555-6632'),

('Jessica', 'Nguyen', '704-555-6198', 'jessica.nguyen@email.com', '782 Cedar Creek Dr, Charlotte, NC', 'Linda', 'Nguyen', '704-555-3109'),

('Robert', 'Ellis', '704-555-9472', 'robert.ellis@email.com', '64 Hawthorne Blvd, Charlotte, NC', 'Nancy', 'Ellis', '704-555-1188'),

('Lauren', 'Bishop', '980-555-4033', 'lauren.bishop@email.com', '317 Meadow Park Ct, Pineville, NC', 'Kevin', 'Bishop', '980-555-5594'),

('Chris', 'Morales', '704-555-2659', 'chris.morales@email.com', '901 Sunset Rd, Charlotte, NC', 'Ana', 'Morales', '704-555-7432'),

('Brittany', 'Foster', '704-555-8830', 'brittany.foster@email.com', '222 Magnolia Way, Charlotte, NC', 'Eric', 'Foster', '704-555-6640'),

('Anthony', 'Price', '980-555-1902', 'anthony.price@email.com', '498 Riverbend Dr, Belmont, NC', 'Diane', 'Price', '980-555-7221'),

('Olivia', 'Sanders', '704-555-5567', 'olivia.sanders@email.com', '73 Maple Grove Rd, Charlotte, NC', 'Thomas', 'Sanders', '704-555-9823');


ALTER TABLE Dog
ADD DogName VARCHAR(50) NOT NULL AFTER DogID;


INSERT INTO Dog (DogID, DogName, Breed, SizeLBS, SpecialNotes, ClientID)
VALUES
(1, 'Buddy', 'Labrador Retriever', '70', 'Very energetic, loves long walks', 1),
(2, 'Biscuit', 'French Bulldog', '28', 'Does not tolerate heat well', 2),
(3, 'Shadow', 'Border Collie', '45', 'Needs mental stimulation, very smart', 3),
(4, 'Rex', 'German Shepherd', '75', 'Protective but well-trained', 4),
(5, 'Charlie', 'Beagle', '30', 'Strong sense of smell, may pull leash', 5),
(6, 'Luna', 'Poodle', '40', 'Hypoallergenic coat, regular grooming needed', 6),
(7, 'Max', 'Bulldog', '50', 'Slow walker, frequent breaks needed', 7),
(8, 'Daisy', 'Dachshund', '22', 'Avoid stairs due to back issues', 8),
(9, 'Cooper', 'Australian Shepherd', '55', 'High energy, great with commands', 9),
(10, 'Milo', 'Shih Tzu', '16', 'Calm temperament, easy walker', 10);


INSERT INTO Appointment
(AppointmentID, AppointmentDate, Start, Duration, Route, Fee, Completed, DogID, ClientID)
VALUES
(1, '2026-04-20', '09:00:00', '00:30:00', 'Neighborhood Loop', 25, 0, 1, 1),
(2, '2026-04-20', '10:00:00', '00:45:00', 'Park Trail', 35, 0, 2, 2),
(3, '2026-04-21', '11:00:00', '01:00:00', 'Downtown Walk', 45, 1, 3, 3),
(4, '2026-04-21', '13:00:00', '00:30:00', 'Neighborhood Loop', 25, 1, 4, 4),
(5, '2026-04-22', '08:30:00', '00:45:00', 'Riverwalk', 35, 0, 5, 5),
(6, '2026-04-22', '11:30:00', '01:00:00', 'Large Park Circuit', 45, 1, 6, 6),
(7, '2026-04-23', '14:00:00', '00:30:00', 'Short Block Route', 25, 0, 7, 7),
(8, '2026-04-23', '15:15:00', '00:45:00', 'Trail Loop', 35, 0, 8, 8),
(9, '2026-04-24', '09:30:00', '01:00:00', 'Uptown Walk', 45, 1, 9, 9),
(10, '2026-04-24', '10:45:00', '00:30:00', 'Neighborhood Loop', 25, 1, 10, 10);

