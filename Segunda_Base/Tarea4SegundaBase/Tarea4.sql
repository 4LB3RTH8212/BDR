drop database if exists GoCredit;

create database GoCredit;

use GoCredit;

drop table if exists TablaCliente;

Create table TablaCliente(
IdCliente Int auto_increment primary key,
Nombre varchar (50),
Estado varchar (30),
Ciudad varchar (30)
);

insert into TablaCliente(Nombre, Estado,Ciudad) values
('Joss Alberth Sanchez Bracho','Nuevo Leon','Guadalupe'),
('Carlos Andres Chavez Peña','Coahuila','Saltillo'),
('Luisa Fernanda Gutierrez Herrera','Nuevo Leon','San Nicolas de los Garza'),
('Hugo Alfredo Quiroz Vasquez','Veracruz','Coatzacoalcos'),
('Nallely de la Vega Garza','Nuevo Leon','Monterrey')
;

select * from TablaCliente;

drop table if exists TablaCredito;

create table TablaCredito(
IdCredito Int auto_increment primary key,
IdPersona Int references TablaCliente(IdCliente),
Monto decimal(10,2),
Monto_Total decimal(10,2),
Pagos TinyInt,
Pago_Requerido decimal(8,2),
Dependencia varchar (30),
Estatus varchar (20),
FDesembolso DATE,
Frecuencia varchar (20),
vScoreBuro SmallInt
);

INSERT INTO TablaCredito(IdPersona, Monto, Monto_Total, Pagos, Pago_Requerido, Dependencia,Estatus,FDesembolso,Frecuencia,vScoreBuro) values
(1,12691.00,20000.00,96,500.00,'Pemex','Cerrado','2023-01-01','Quincenal',null),
(2,8256.00,16000.00,72,620.10,'CFE','Activo','2023-02-01','Mensual',300),
(3,3418.00,9600.00,32,876.00,'Pemex','Castigado','2023-03-01','Catorcenal',420),
(4,3313.00,8900.00,32,124.76,'IMSS','Activo','2023-04-01','Mensual',250),
(5,4716.00,12000.00,12,1241.00,'IMSS','Cerrado','2023-05-01','Semanal',320)
;

select * from TablaCredito;

drop table if exists TablaPago;

create table TablaPago(
IdPago Int auto_increment primary key,
IdCredito Int references TablaCredito(IdCredito),
Origen_de_Movimiento varchar (20),
Fecha_Pago DATE,
Fecha_Aplicacion DATE,
Importe_de_Pago decimal(8,2)

);

insert into TablaPago(IdCredito, Origen_de_Movimiento, Fecha_Pago, Fecha_Aplicacion,Importe_de_Pago) values
(1,'Listas','2023-02-01','2023-02-02',42.56),
(2,'Referenciado','2023-03-01','2023-02-01',1291.45),
(3,'Domiciliado','2023-04-01','2023-04-01',1887.12),
(4,'Referenciado','2023-05-01','2023-05-01',1171.1),
(5,'Listas','2023-02-06','2023-02-08',816.59)
;

select * from TablaPago;

drop table if exists TablaReferencia;

Create table TablaReferencia(
IdReferencia Int auto_increment primary key,
IdPersona Int references TablaCliente(IdCliente),
Referencia varchar (50),
RELACION varchar (30),
vphonenumber varchar (10)
);

insert into TablaReferencia(IdPersona, Referencia,RELACION,vphonenumber) values
(1,'Carlos Andres Chavez Peña','Hermano','1234567899'),
(2,'Luisa Fernanda Gutierrez Herrera','Amigo','9876543211'),
(3,'Carlos Adrian Peña Sanchez','Padre','1111111111'),
(4,'Nallely de la Vega Garza','Vecino','7654345678'),
(5,'Manuel Orlando Castillo Cerda','Amigo',null)
;

select * from TablaReferencia;