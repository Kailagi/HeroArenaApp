CREATE DATABASE ExerciceHero;
GO

USE ExerciceHero;
GO

CREATE TABLE Logins (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) NOT NULL,
    Password NVARCHAR(100) NOT NULL 
);

CREATE TABLE Heroes (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    ImageURL NVARCHAR(MAX),
    HP INT DEFAULT 100
);

CREATE TABLE Spells (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Damage INT NOT NULL,
    HeroID INT NOT NULL,
    FOREIGN KEY (HeroID) REFERENCES Heroes(ID)
);

INSERT INTO Logins (Username, Password) VALUES ('admin', 'YWRtaW4='); -- Password: admin

INSERT INTO Heroes (Name, ImageURL, HP) VALUES ('Guerrier Alpha', 'https://via.placeholder.com/150', 100);
INSERT INTO Heroes (Name, ImageURL, HP) VALUES ('Mage Arcanique', 'https://via.placeholder.com/150', 80);

INSERT INTO Spells (Name, Damage, HeroID) VALUES ('Coup d''épée', 15, 1);
INSERT INTO Spells (Name, Damage, HeroID) VALUES ('Charge', 20, 1);
INSERT INTO Spells (Name, Damage, HeroID) VALUES ('Cri de guerre', 5, 1);
INSERT INTO Spells (Name, Damage, HeroID) VALUES ('Exécution', 35, 1);

INSERT INTO Spells (Name, Damage, HeroID) VALUES ('Boule de feu', 25, 2);
INSERT INTO Spells (Name, Damage, HeroID) VALUES ('Éclair', 18, 2);
INSERT INTO Spells (Name, Damage, HeroID) VALUES ('Explosion arcanique', 30, 2);
INSERT INTO Spells (Name, Damage, HeroID) VALUES ('Trait de glace', 12, 2);
GO