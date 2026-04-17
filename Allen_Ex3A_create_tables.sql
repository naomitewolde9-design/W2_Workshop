-- metadata 
DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;
-- Create Client Table
CREATE TABLE Client (
    Client_ID INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Phone_Number VARCHAR(20),
    Email VARCHAR(100) UNIQUE,
    Address VARCHAR(255)
);

-- Create Dog Table
CREATE TABLE Dog (
    Dog_ID INT AUTO_INCREMENT PRIMARY KEY,
    Client_ID INT NOT NULL,
    Dog_Name VARCHAR(50) NOT NULL,
    Breed VARCHAR(50),
    Age INT,
    Size VARCHAR(20),
    Special_Notes VARCHAR(255),
    FOREIGN KEY (Client_ID) REFERENCES Client(Client_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Create Appointment Table
CREATE TABLE Appointment (
    Appointment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Dog_ID INT NOT NULL,
    Date DATE NOT NULL,
    Start_Time TIME NOT NULL,
    Duration INT, -- duration in minutes
    Route VARCHAR(100),
    Fee DECIMAL(6,2),
    Completed BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (Dog_ID) REFERENCES Dog(Dog_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Create Emergency Contact Table
CREATE TABLE Emergency_Contact (
    EmergencyContact_ID INT AUTO_INCREMENT PRIMARY KEY,
    Client_ID INT NOT NULL,
    Contact_Name VARCHAR(100) NOT NULL,
    Contact_Phone VARCHAR(20),
    FOREIGN KEY (Client_ID) REFERENCES Client(Client_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
