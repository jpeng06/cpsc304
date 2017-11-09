﻿DROP TABLE IF EXISTS Patients;
CREATE TABLE Patients (
    PatientId SERIAL UNIQUE,
    pfirst_name VARCHAR(32) NOT NULL,
    plast_name VARCHAR(32) NOT NULL,
    phone_num VARCHAR(20),
    address VARCHAR(64),
    postal_code VARCHAR(6),
    PRIMARY KEY (patientid),
    CONSTRAINT pname_address UNIQUE(pfirst_name, plast_name, address),
    CONSTRAINT pname_phone UNIQUE(pfirst_name, plast_name, phone_num)
);
