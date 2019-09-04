create table users_name(
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

CREATE SEQUENCE user_id; 


insert INTO users_name values (user_id.nextval, 'Maurizio', 'Pilato', 3664464008, 'maurizio.pilato90@gmail.com','19-OTT-1990', 'Caltanissetta' , '800A', 1254789632212471);
insert INTO users_name values (user_id.nextval, 'Silvia', 'Di Caro', 3291909119, 'silviadicaro@libero.it','23-LUG-1993', 'Palermo' , '700A', 1754896322212471);
insert INTO users_name values (user_id.nextval, 'Federica', 'Cosenza', 3664464008, 'federica.cosenza92@gmail.com','23-LUG-1992', 'Messina' , '600A', 1754896322754123);


--Tabella Amministratori

create table adm(
user_id integer primary key,
first_name varchar2(40),
last_name varchar2(40),
email varchar2(100)
);

CREATE SEQUENCE adm_id; 


insert INTO adm values (adm_id.nextval, 'Maurizio', 'Pilato', 3664464008, 'maurizio.pilato90@gmail.com');
insert INTO adm values (adm_id.nextval, 'Silvia', 'Di Caro', 3291909119, 'silviadicaro@libero.it');
insert INTO adm values (adm_id.nextval, 'Federica', 'Cosenza', 3664464008, 'federica.cosenza92@gmail.com');