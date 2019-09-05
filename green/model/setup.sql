DROP TABLE users;
DROP TABLE adm;
DROP SEQUENCE user_seq;
DROP SEQUENCE adm_seq;

create table users(
user_id integer primary key,
first_name varchar2(40),
last_name varchar2(40),
phone_number varchar2(13), 
email varchar2(100),
password varchar2(20),
data_nascita date, 
luogo_nascita varchar2(40),
n_patente varchar2(10),
scadenza_patente date,
carta_credito number(16,0), 
cvv number(3,0),
scadenza_carta date
);

CREATE SEQUENCE user_seq; 


insert INTO users values (user_seq.nextval, 'Maurizio', 'Pilato', 3664464008, 'maurizio.pilato90@gmail.com','mauro90','19-OTT-1990', 'Caltanissetta' , '800A','19-OTT-2023', 1254789632212471, 123, '19-OTT-2025');
insert INTO users values (user_seq.nextval, 'Silvia', 'Di Caro', 3291909119, 'silviadicaro@libero.it','silvia93','23-LUG-1993', 'Palermo' , '700A','23-LUG-2026', 1754896322212471, 458, '23-LUG-2028');
insert INTO users values (user_seq.nextval, 'Federica', 'Cosenza', 3664464008, 'federica.cosenza92@gmail.com','fede92','23-LUG-1992', 'Messina' , '600A','23-LUG-2025', 1754896322754123, 215, '23-LUG-2027');


--Tabella Amministratori

create table adm(
user_id integer primary key,
first_name varchar2(40),
last_name varchar2(40),
email varchar2(100)
);

CREATE SEQUENCE adm_seq; 


insert INTO adm values (adm_seq.nextval, 'Maurizio', 'Pilato', 'maurizio.pilato90@gmail.com');
insert INTO adm values (adm_seq.nextval, 'Silvia', 'Di Caro', 'silviadicaro@libero.it');
insert INTO adm values (adm_seq.nextval, 'Federica', 'Cosenza', 'federica.cosenza92@gmail.com');