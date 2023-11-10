use c23561;


insert into clientes values(2,'Pablo','Gomez','Sarmiento 444',4,1,'nicolas.fernandez9@bue.edu.ar','1532452361','1981-09-14',29345769,false,now(),now(),1,13);
insert into clientes values(3,'Ezequiel','Gomez','Sarmiento 444',2,1,'nicolas.fernandez7@bue.edu.ar','1532452360','1981-09-14',29345780,false,now(),now(),1,13);
insert into clientes values(4,'Ramiro','Gomez','Sarmiento 444',null,1,'nicolas.fernandez19@bue.edu.ar','1532452360','1981-09-14',29345781,false,now(),now(),2,13);



select clientes.id as 'Codigo' ,apellido as 'Apellido',clientes.nombre as 'Nombre',provincias.nombre as 'Provincia',users.nombre as 'Vendedor' from clientes
join provincias on clientes.provincia_id=provincias.id  
join users on clientes.created_by=users.id;


select clientes.id as 'Codigo' ,apellido as 'Apellido',clientes.nombre as 'Nombre',provincias.nombre as 'Provincia',users.nombre as 'Vendedor' from clientes
left join provincias on clientes.provincia_id=provincias.id  
join users on clientes.created_by=users.id;

select clientes.id as 'Codigo' ,apellido as 'Apellido',clientes.nombre as 'Nombre',provincias.id,provincias.nombre as 'Provincia' from clientes
right join provincias on clientes.provincia_id=provincias.id  ;


/*---------------------------------------*/

select c.id ,c.apellido ,c.nombre ,p.nombre ,u.nombre from clientes c
join provincias p on c.provincia_id=p.id  
join users u on c.created_by=u.id;


/*
codido_resolucion_cargo_user_planta cr
*/

SELECT * FROM c23561.clientes;
SELECT * FROM c23562.clientes where habilitado=true   ;

SELECT * FROM c23562.clientes where habilitado=false   ;

SELECT * FROM c23562.clientes where prov=3  and localidad=6 ;

SELECT * FROM c23562.clientes where prov=3  or localidad=6 ;

/*
AND se tienen que cumplir todos
OR se tienen que cumplir alguno.
*/

select * from c23562.clientes limit 5;

select * from c23562.clientes where mail like '%@gmail.com';

select * from c23562.clientes where mail like 'n%';

select * from c23562.clientes where mail like '%ez@%';





