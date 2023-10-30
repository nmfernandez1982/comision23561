
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
provincia varchar(50),
localidad varchar(50),
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

alter table clientes
modify column email varchar(40) unique;

insert into clientes values(1,'Nicolas','Fernnandez','Sarmiento 444','Bs . AS','Quilmes','nicolas.fernandez4@bue.edu.ar','1532452356','1981-09-14',29345765,false,now(),now(),13,13);

insert into clientes (id, nombre, apellido, direccion, provincia, localidad, email, telefono, fnac, dni, habilitado,   created_by, updated_by) values(2,'Camila','Vazquez','Sarmiento 444','Bs . AS','Quilmes','nicolas.fernandez5@bue.edu.ar','1532452356','1981-09-14',29345766,false,13,13);

insert into clientes (id, nombre, apellido, direccion, provincia, localidad, email, telefono, fnac, dni, created_by, updated_by) values(3,'Camila','Vazquez','Sarmiento 444','Bs . AS','Quilmes','nicolas.fernandez6@bue.edu.ar','1532452357','1981-09-14',29345767,13,13);

insert into clientes (nombre, apellido, direccion, provincia, localidad, email, telefono, fnac, dni, created_by, updated_by) values('Camila','Vazquez','Sarmiento 444','Bs . AS','Quilmes','nicolas.fernandez8@bue.edu.ar','1532452357','1981-09-14',29345768,13,13);



/*truncate clientes;*/

