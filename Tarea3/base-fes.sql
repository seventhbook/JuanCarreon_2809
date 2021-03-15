SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
/*donde exista un db con el mismo nombre la eliminas*/
drop schema if exists `fes_aragon`;
/*creacion de nuestra base de datos (DB)*/
create schema if not exists `fes_aragon` default character set utf8
collate utf8_spanish2_ci;
/*usar la base de datos que ya creamos*/
USE `fes_aragon`;
/*CREAR UNA TABLA*/
CREATE TABLE `ALUMNO`(
 `nombre_usuario` text not null,
 `carrera` text not null,
 `no_cuenta` int (10) not null,
 `direccion` text not null,
 `telefono` varchar (8) not null,
 `email` text not null,
 `password` varchar (8) not null,
 `fecha_registro` datetime not null default current_timestamp,
 `permisos` int (11) not null default '1'
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*agregar registros*/
insert into `ALUMNO`(`nombre_usuario`, `carrera`, `no_cuenta`,
`direccion`, `telefono`, `email`,`password`, `fecha_registro`)values
('Aaron velasco','ico','413112576','gloria
15','56565652','aaronvelasco193@houtlook.com','123456','2021-03-09
10:16:53');
/*definir la llabe primaria (PK)*/
alter table `alumno`
 add primary key (`no_cuenta`);
commit;
/*los cambios son de manera permanete*/