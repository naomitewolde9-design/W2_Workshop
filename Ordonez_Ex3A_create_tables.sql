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

# second table created DOG 


CREATE TABLE Dog (
    DogID INT AUTO_INCREMENT PRIMARY KEY,
    DogName VARCHAR(50) NOT NULL,
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
    Route VARCHAR(100) NOT NULL,
    Fee INT NOT NULL,
    Completed VARCHAR(10) NOT NULL,
    DogID VARCHAR(50) NOT NULL,
    ClientID INT NOT NULL,
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
);
