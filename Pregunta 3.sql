CREATE DATABASE Pregunta_3
Use Pregunta_3

CREATE TABLE contribuyente (
    contribID INT PRIMARY KEY,
    RUC VARCHAR(11) UNIQUE,
    apellidos_nombres VARCHAR(255),
	tipo_solicitud VARCHAR(30),
    tipo_contrib VARCHAR(255),
    codigo_contrib VARCHAR(11),
    fecha_ini_act DATE);

CREATE TABLE medios_de_contacto (
    contactID INT PRIMARY KEY,
    contribID INT,
    tipo_contact varchar(30),
    detalle VARCHAR(150),
    FOREIGN KEY (contribID) REFERENCES contribuyente(contribID));

CREATE TABLE activ_economica (
    actID INT PRIMARY KEY,
    contribID INT,
    tipo_act varchar(30),
    descrip_act varchar(150),
    CIIU varchar(5),
    FOREIGN KEY (contribID) REFERENCES contribuyente(contribID));

CREATE TABLE profesion_oficio (
    profesionID INT PRIMARY KEY,
    contribID INT,
    descrip_act VARCHAR(255),
    cod_prof VARCHAR(15),
    FOREIGN KEY (contribID) REFERENCES contribuyente(contribID));

CREATE TABLE sistema(
    sistemaID INT PRIMARY KEY,
    contribID INT,
    tipo_comprob varchar(30),
    tipo_contabilidad varchar(30),
    FOREIGN KEY (contribID) REFERENCES contribuyente(contribID));

CREATE TABLE act__comercio_exterior (
    comercioID INT PRIMARY KEY,
    contribID INT,
    actividad varchar(30),
    FOREIGN KEY (contribID) REFERENCES contribuyente(contribID));