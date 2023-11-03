
create database c23561;
use c23561;
drop database c23561;
drop table nombretabla;

/*
Numeros:

tinyint -128/127
smallint -32768/32767
int
bigint

float
double
decimal

Alfanumericos:
char(200)
varchar(200)
text ->8m
mediumtex->16m
bigtext->
*/

create table clientes
(
id int auto_increment primary key, 
nombre varchar(50),
apellido varchar(40) not null,
direccion varchar(50),
provincia_id int,
localidad_id int,
email varchar(20) unique,
telefono  varchar(20),
fnac date,
dni int unique,
habilitado boolean default true,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp,
created_by int,
updated_by	int 		
);

drop table clientes;

alter table clientes
modify column email varchar(40) unique;

insert into clientes values(1,'Nicolas','Fernnandez','Sarmiento 444',5,1,'nicolas.fernandez4@bue.edu.ar','1532452356','1981-09-14',29345765,false,now(),now(),13,13);

insert into clientes (id, nombre, apellido, direccion, provincia, localidad, email, telefono, fnac, dni, habilitado,   created_by, updated_by) values(2,'Camila','Vazquez','Sarmiento 444','Bs . AS','Quilmes','nicolas.fernandez5@bue.edu.ar','1532452356','1981-09-14',29345766,false,13,13);
insert into clientes (id, nombre, apellido, direccion, provincia, localidad, email, telefono, fnac, dni, created_by, updated_by) values(3,'Camila','Vazquez','Sarmiento 444','Bs . AS','Quilmes','nicolas.fernandez6@bue.edu.ar','1532452357','1981-09-14',29345767,13,13);
insert into clientes (nombre, apellido, direccion, provincia, localidad, email, telefono, fnac, dni, created_by, updated_by) values('Camila','Vazquez','Sarmiento 444','Bs . AS','Quilmes','nicolas.fernandez8@bue.edu.ar','1532452357','1981-09-14',29345768,13,13);



truncate clientes;


create table provincias(
id int auto_increment primary key,
nombre varchar(100)
);


insert into provincias values (1,'Tucuman');
insert into provincias values (2,'Salta');
insert into provincias values (3,'Formosa');
insert into provincias values (4,'Buenos Aires');
insert into provincias values (5,'La Pampa');

select * from provincias;

select * from clientes;


alter table clientes
add foreign key(provincia_id)
references provincias(id);



insert into clientes values(1,'Pablo','Gomez','Sarmiento 444',1,1,'nicolas.fernandez6@bue.edu.ar','1532452359','1981-09-14',29345768,false,now(),now(),1,13);

delete from provincias where id=5;
delete from clientes where id=1;


/*
SET FOREIGN_KEY_CHECKS=0;
SET FOREIGN_KEY_CHECKS=1;
*/




/*otro ejemplo*/

create table users
(
id int auto_increment primary key,
legajo int not null,
nombre varchar(50)
);

alter table clientes
add foreign key(created_by)
references users(id);

insert into users values(1,20,'Alberto');
insert into users values(2,120,'Pablo');
insert into users values(3,10,'Cecilia');


alter table clientes
drop foreign key clientes_ibfk_2;


/*select-delete-update-insert 

where
*/

select * from clientes;


select id from clientes;


select clientes.email as 'E-Mail',clientes.telefono as 'Celular',clientes.id as 'Codigo' from clientes;
