USE university;

CREATE TABLE tip_klienta (
    id_tip_klienta int NOT NULL PRIMARY KEY,
    tip_klienta varchar(50) 
);
CREATE TABLE field_of_industry (
    id_field int NOT NULL PRIMARY KEY,
    field_of_industry varchar(50) 
);
CREATE TABLE district (
    id_district int NOT NULL PRIMARY KEY,
    district varchar(50) 
);
CREATE TABLE tip_kontaktov (
    id_tip_kontaktov int NOT NULL PRIMARY KEY,
    tip_kontaktov varchar(50) 
);
CREATE TABLE kontakty (
    id_kontakty int NOT NULL PRIMARY KEY,
    kontakty varchar(50),
	id_tip_kontaktov int,
	id_klient int
);
CREATE TABLE klient(
    id_klient int NOT NULL PRIMARY KEY,
    fname varchar(50),
	mname varchar(50),
	lname varchar(50),
	record_date date,
	office varchar(50),
	position varchar(50),
	comments varchar(50),
	id_tip_klienta int,
	id_field int,
	id_district int
);

ALTER TABLE [dbo].[klient]   ADD FOREIGN KEY([id_tip_klienta])
REFERENCES [dbo].[tip_klienta] ([id_tip_klienta])

ALTER TABLE [dbo].[klient]   ADD FOREIGN KEY([id_field])
REFERENCES [dbo].[field_of_industry] ([id_field])

ALTER TABLE [dbo].[klient]   ADD FOREIGN KEY([id_district])
REFERENCES [dbo].[district] ([id_district])

ALTER TABLE [dbo].[kontakty]   ADD FOREIGN KEY([id_klient])
REFERENCES [dbo].[klient] ([id_klient])

ALTER TABLE [dbo].[kontakty]   ADD FOREIGN KEY([id_tip_kontaktov])
REFERENCES [dbo].[tip_kontaktov] ([id_tip_kontaktov])



INSERT INTO tip_klienta (id_tip_klienta, tip_klienta)
VALUES (1, 'Phisicheskiye'), (2,'Jura'),(3, 'Nephisicheskiye'), (4,'Nejura');

INSERT INTO field_of_industry (id_field,  field_of_industry)
VALUES (1, 'Reklama'), (2,'SMM'),(3, 'Marketing'), (4,'Finans');

INSERT INTO district (id_district, district)
VALUES (1, 'Lenin'), (2,'Sverdlov'),(3, 'Pervomai'), (4,'Oktyabr');


INSERT INTO klient (id_klient, fname, mname, lname, record_date, office, position, comments, id_tip_klienta, id_field, id_district)
VALUES (1, 'Ivanov','Ivan','Ivanovich','2018-02-01','---','---','---','1','1','1'),
(2, 'Petrov','Petr','Petrovuch','2018-03-01','---','---','---','2','2','2'),
(3, 'Nogorbekov','Salim','Nurbekovich','2018-03-06','---','---','---','3','3','3'),
(4, 'Alex','Smith','---','2018-03-05','---','---','---','4','4','4');


INSERT INTO tip_kontaktov(id_tip_kontaktov, tip_kontaktov)
VALUES (1, 'Mobile'), (2,'Email'),(3, 'Work phone'), (4,'Home phone');

INSERT INTO kontakty (id_kontakty,kontakty, id_tip_kontaktov, id_klient)
VALUES (1, '996551266996', 1, 1), (2,'996551266996', 1, 2),(3, '996551266996', 1, 3), (4,'gulnaz@gmail.com', 2,4);

*/

DELETE FROM tip_klienta WHERE id_tip_klienta='4';

UPDATE dbo.klient
SET fname = 'Jimi', mname = 'Frok', lname = 'Grims'
WHERE id_klient = 4;







