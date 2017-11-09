﻿DROP TABLE IF EXISTS Wards;
CREATE TABLE Wards(
    WardId SERIAL UNIQUE,
	HospitalId INT NOT NULL,
	ward_name VARCHAR(32) NOT NULL,
	ext_num VARCHAR(5),
	PRIMARY KEY (WardId),
	FOREIGN KEY (HospitalId) REFERENCES Hospitals(HospitalId) 
	ON DELETE CASCADE
);