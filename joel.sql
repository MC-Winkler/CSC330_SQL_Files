DROP DATABASE IF EXISTS elon; 
CREATE DATABASE elon;
CREATE TABLE elon.member
(
	member_id	INT(11)	PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    address VARCHAR(25),
    city VARCHAR(25),
    state VARCHAR(25),
    phone VARCHAR(15)
);

CREATE TABLE elon.association(
	association_id INT(11)	PRIMARY KEY AUTO_INCREMENT,
    association_name VARCHAR(40)
);

CREATE TABLE elon.member_association(
	member_id	INT(11)	REFERENCES elon.member	(member_id),
    association_id	INT(11)	REFERENCES	elon.association(association_id)
);

/*Begin ex 2*/

INSERT INTO elon.member
	(member_id)
    VALUES (DEFAULT);
    
INSERT INTO elon.member
	(member_id)
    VALUES (DEFAULT);
    
INSERT INTO elon.association
	(association_id)
    VALUES (DEFAULT);
     
INSERT INTO elon.association
	(association_id)
    VALUES (DEFAULT);

/*Begin ex 3*/

ALTER TABLE 
	`elon`.`member` 
ADD COLUMN 
	`payment_date` DATE,
ADD COLUMN 
	`annual_dues` DECIMAL(5,2)	DEFAULT 52.50;
SELECT * FROM elon.member;