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

--insert mock data
INSERT INTO HistoryStateTable(DeviceId, isOn, temperatur, timestamp) VALUES (1,true,25.25,'2024-06-11 09:04:21');
INSERT INTO HistoryStateTable(DeviceId, isOn, temperatur, timestamp) VALUES (1,false,24.625,'2024-06-11 09:06:00');
INSERT INTO HistoryStateTable(DeviceId, isOn, temperatur, timestamp) VALUES (1,true,25.25,'2024-06-11 10:00:30');
INSERT INTO HistoryStateTable(DeviceId, isOn, temperatur, timestamp) VALUES (1,false,27.5,'2024-06-11 10:04:59');
INSERT INTO HistoryStateTable(DeviceId, isOn, temperatur, timestamp) VALUES (1,true,28.5,'2024-06-11 14:04:28');
INSERT INTO HistoryStateTable(DeviceId, isOn, temperatur, timestamp) VALUES (1,false,14.25,'2024-06-11 14:09:21');
INSERT INTO HistoryStateTable(DeviceId, isOn, temperatur, timestamp) VALUES (1,true,22.25,'2024-06-11 18:30:00');
INSERT INTO HistoryStateTable(DeviceId, isOn, temperatur, timestamp) VALUES (1,false,10.625,'2024-06-11 18:36:35');
INSERT INTO HistoryStateTable(DeviceId, isOn, temperatur, timestamp) VALUES (1,true,9.5,'2024-06-11 20:04:21');
INSERT INTO HistoryStateTable(DeviceId, isOn, temperatur, timestamp) VALUES (1,false,5.5,'2024-06-11 20:09:28');
INSERT INTO HistoryStateTable(DeviceId, isOn, temperatur, timestamp) VALUES (1,true,7.7,'2024-06-11 21:59:21');
INSERT INTO HistoryStateTable(DeviceId, isOn, temperatur, timestamp) VALUES (1,false,7.7,'2024-06-11 22:03:26');