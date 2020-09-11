CREATE DATABASE PROJETO;

USE PROJETO;

CREATE TABLE DATASET_COMP( 
    id int NOT NULL AUTO_INCREMENT, 
    cpu varchar(5) NOT NULL,
    ram varchar(5) NOT NULL, 
    ram_percent varchar(5) NOT NULL, 
    disk varchar(5) NOT NULL, 
    PRIMARY KEY (id)
    );

SELECT * FROM DATASET_COMP;
TRUNCATE DATASET_COMP;