

create database proyectofinal23561;

use proyectofinal23561;

create table tickets
(
id int auto_increment primary key,
nombre varchar(50),
apellido varchar(50),
mail varchar(50) unique,
cant int,
tipo_ticket int,
total_facturado float
);

create table oradores(
id int auto_increment primary	key,
nombre varchar(50),
apellido varchar(50),
tematica text
);

insert into tickets values(1,'Nicolas','Fernandez','nicolasfernandez1982@gmail.com',1,1,800);

