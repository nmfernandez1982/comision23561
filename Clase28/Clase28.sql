use c23561;

SELECT * FROM clientes where provincia_id=1;

SELECT * FROM clientes where apellido like 'Gomez';

SELECT * FROM clientes where email like '%fernandez%';

SELECT * FROM clientes where id >2 and id<4;

SELECT * FROM clientes where id in (2,4);


SELECT * FROM clientes where nombre in ('ezequiel','Ramiro');


SELECT * FROM clientes where email not like '%fernandez%';

SELECT * FROM clientes where nombre not in ('ezequiel','Ramiro');

SELECT * FROM clientes where id not between 2 and 4;

SELECT * FROM clientes where year(created_at) not between 2020 and   year(now());

SELECT * FROM clientes where apellido like 'G_mez';

/*funciones del sistema*/
select year(created_at) from clientes;
select month(created_at) from clientes;
select day(created_at) from clientes;
select concat("Sr.",apellido) from clientes;
select concat(nombre," ",apellido) as NombreApellido from clientes;
select concat(day(created_at),"/",month(created_at),"/",year(created_at)) as NombreApellido from clientes;
select datediff(now(),created_at) from clientes;

/*distict*/

SELECT * FROM clientes;

select distinct(provincia_id) FROM clientes;


/*Campos calculados*/
SELECT * FROM clientes;

select count(*) from clientes;

select count(distinct(provincia_id)) from clientes;

select  sum(total) from encabezo_facturas;

select  avg(total) from encabezo_facturas;

select  max(total) from encabezo_facturas;

select  min(total) from encabezo_facturas;



select  cliente_id,sum(total) from encabezo_facturas
group by cliente_id 
order by cliente_id desc;

select  cliente_id,sum(total) from encabezo_facturas
group by cliente_id 
having sum(total)>40000


select cliente_id from encabezo_facturas where total<50000;


/*subconsulta*/
select * from clientes where id in (select cliente_id from encabezo_facturas where total<50000);





















