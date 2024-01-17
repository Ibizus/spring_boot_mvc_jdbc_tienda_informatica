DROP DATABASE IF EXISTS tienda_informatica;
CREATE DATABASE tienda_informatica CHARACTER SET utf8mb4;
USE tienda_informatica;

create table fabricante(
                           codigo int unsigned auto_increment primary key,
                           nombre varchar(100) not null
);


create table producto(
                         codigo int unsigned auto_increment primary key,
                         nombre            varchar(100) not null,
                         precio            double       not null,
                         codigo_fabricante int unsigned not null,
                         constraint producto_ibfk_1
                             foreign key (codigo_fabricante) references fabricante (codigo)
);

create index codigo_fabricante
    on producto (codigo_fabricante);


INSERT INTO fabricante VALUES(1, 'Asus');
INSERT INTO fabricante VALUES(2, 'Lenovo');
INSERT INTO fabricante VALUES(3, 'Hewlett-Packard');
INSERT INTO fabricante VALUES(4, 'Samsung');
INSERT INTO fabricante VALUES(5, 'Seagate');
INSERT INTO fabricante VALUES(6, 'Crucial');
INSERT INTO fabricante VALUES(7, 'Gigabyte');
INSERT INTO fabricante VALUES(8, 'Xiaomi');
INSERT INTO fabricante VALUES(9, 'Aarónnicus');
INSERT INTO fabricante VALUES(10,'Nuevo fabricante');

INSERT INTO producto VALUES(1,'Disco duro SATA3 1TB',86.99,5);
INSERT INTO producto VALUES(2,'Memoria RAM DDR4 8GB',120,6);
INSERT INTO producto VALUES(3,'Disco SSD 1 TB',150.99,41);
INSERT INTO producto VALUES(4,'GeForce GTX 1050Ti',185,7);
INSERT INTO producto VALUES(5,'GeForce GTX 1080 Xtreme',755,6);
INSERT INTO producto VALUES(6,'Monitor 24 LED Full HD',202,1);
INSERT INTO producto VALUES(7,'Monitor 27 LED Full HD',245.99,1);
INSERT INTO producto VALUES(8,'Portátil Yoga 520',559,2);
INSERT INTO producto VALUES(9,'Portátil Ideapd 320',444,2);
INSERT INTO producto VALUES(10,'Impresora HP Deskjet 3720',59.99,3);
INSERT INTO producto VALUES(11,'Impresora HP Laserjet Pro M26nw',180,3);