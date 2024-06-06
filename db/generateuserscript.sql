DROP TABLE IF EXISTS PasswordHash;
DROP TABLE IF EXISTS UserInformation;
DROP TABLE IF EXISTS ContactInformation;
DROP TABLE IF EXISTS Devices;
DROP TABLE IF EXISTS HistoryStateTable;
DROP TABLE IF EXISTS Users;


--Create device table
CREATE TABLE Devices
(
    Id         SERIAL PRIMARY KEY,
    DeviveName VARCHAR(255)
);

--Create the table for the history of the fountain
CREATE TABLE HistoryStateTable
(
    DeviceId        INT NOT NULL,
    isOn            bool not null,
    temperatur      float not null,
    timestamp       varchar(50) NOT NULL,
    FOREIGN KEY (DeviceId) REFERENCES Devices (Id)
);


-- Create User table
CREATE TABLE Users
(
    Id    SERIAL PRIMARY KEY,
    Email VARCHAR(255) NOT NULL UNIQUE
);

-- Create UserInformation table
CREATE TABLE UserInformation
(
    UserId    INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName  VARCHAR(100),
    FOREIGN KEY (UserId) REFERENCES Users (Id)
);

-- Create ContactInformation table
CREATE TABLE ContactInformation
(
    UserId      INT PRIMARY KEY,
    CountryCode VARCHAR(5),
    Number      VARCHAR(20),
    FOREIGN KEY (UserId) REFERENCES Users (Id)
);

-- Create PasswordHash table
CREATE TABLE PasswordHash
(
    UserId    INT PRIMARY KEY,
    Hash      TEXT         NOT NULL,
    Salt      VARCHAR(255) NOT NULL,
    Algorithm VARCHAR(50)  NOT NULL,
    FOREIGN KEY (UserId) REFERENCES Users (Id)
);
