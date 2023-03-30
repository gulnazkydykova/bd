USE university;


SELECT COUNT(*) FROM dbo.district;
SELECT COUNT(*) FROM dbo.field_of_industry;
SELECT COUNT(*) FROM dbo.klient;
SELECT COUNT(*) FROM dbo.kontakty;
SELECT COUNT(*) FROM dbo.tip_klienta;
SELECT COUNT(*) FROM dbo.tip_kontaktov;

SELECT COUNT(id_klient) FROM klient WHERE id_district = '1';

SELECT COUNT(id_klient) FROM klient WHERE id_district = '1' or id_district = '2' or id_district = '3' or id_district = '4';

SELECT COUNT(id_klient) FROM klient WHERE record_date < '10.10.2019';

SELECT COUNT(*) FROM kontakty WHERE id_klient='1';
SELECT COUNT(*) FROM kontakty WHERE id_klient='2';
SELECT COUNT(*) FROM kontakty WHERE id_klient='3';
SELECT COUNT(*) FROM kontakty WHERE id_klient='4';


