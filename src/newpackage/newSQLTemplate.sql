CREATE TABLE CLASS_GROUP (
ID INTEGER NOT NULL
GENERATED ALWAYS AS IDENTITY, -- AUTO_INCREMENT in MySQL
NAME VARCHAR(50) NOT NULL,
CAPACITY INTEGER,
PRIMARY KEY (ID)
);

CREATE TABLE STUDENT (
ID INTEGER NOT NULL
GENERATED ALWAYS AS IDENTITY,
NAME VARCHAR(25) NOT NULL,
SURNAMES VARCHAR(50) NOT NULL,
DATE_BIRTH DATE,
GRADE DECIMAL (3,1),
CLASS_GROUP INTEGER,
PRIMARY KEY (ID),
CONSTRAINT CLASS_GROUP_FK
FOREIGN KEY (CLASS_GROUP)
REFERENCES CLASS_GROUP (ID)
);
