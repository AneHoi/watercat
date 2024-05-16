DROP TABLE IF EXISTS PasswordHash;
DROP TABLE IF EXISTS UserInformation;
DROP TABLE IF EXISTS ContactInformation;
DROP TABLE IF EXISTS Users;

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
