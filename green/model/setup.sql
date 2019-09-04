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
data_nascita date, 
luogo_nascita varchar2(40),
n_patente varchar2(10),
carta_credito number(16,0)
);

CREATE SEQUENCE user_seq; 


insert INTO users values (user_seq.nextval, 'Maurizio', 'Pilato', 3664464008, 'maurizio.pilato90@gmail.com','19-OTT-1990', 'Caltanissetta' , '800A', 1254789632212471);
insert INTO users values (user_seq.nextval, 'Silvia', 'Di Caro', 3291909119, 'silviadicaro@libero.it','23-LUG-1993', 'Palermo' , '700A', 1754896322212471);
insert INTO users values (user_seq.nextval, 'Federica', 'Cosenza', 3664464008, 'federica.cosenza92@gmail.com','23-LUG-1992', 'Messina' , '600A', 1754896322754123);


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