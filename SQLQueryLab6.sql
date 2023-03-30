USE university;

SELECT kontakty, id_klient 
FROM kontakty
WHERE id_klient='6';

SELECT fname, mname, id_district
FROM klient
WHERE id_district='6';

SELECT kontakty FROM kontakty WHERE id_klient='6'

SELECT kontakty, fname, field_of_industry
FROM kontakty, klient, field_of_industry
WHERE field_of_industry='SMM' AND field_of_industry.id_field=klient.id_field AND klient.id_klient=kontakty.id_klient;

SELECT fname, mname
FROM dbo.klient
WHERE fname LIKE 'N%';

SELECT COUNT(id_district)
FROM klient;

SELECT COUNT(id_field)
FROM klient;

SELECT kontakty, fname
FROM kontakty, klient
WHERE kontakty.id_kontakty = '4' AND kontakty.id_klient = klient.id_klient;


SELECT kontakty, fname, district, tip_klienta
FROM kontakty, klient, district, tip_klienta
WHERE kontakty.id_kontakty = '3' AND kontakty.id_klient = klient.id_klient AND kontakty.id_klient = tip_klienta.id_tip_klienta AND kontakty.id_klient = district.id_district;

SELECT fname
FROM  dbo.klient
WHERE id_klient =(SELECT id_klient FROM dbo.kontakty WHERE kontakty = 'ayana@gmail.com');

SELECT kontakty 
FROM kontakty
WHERE id_klient<5;

SELECT *
FROM klient
WHERE id_district = (SELECT id_district FROM dbo.district WHERE district = 'Pervomai');





