create database empresa;
use empresa;

create table if not exists proveedor (
    ProvNIF varchar(255) primary key,
    IDProducto int,
    ProvNombre varchar(255) not null,
    ProvDireccion varchar(255) not null
) ENGINE=INNODB;

create table if not exists producto (
    IDProducto int auto_increment primary key,
    ProvNIF varchar(255) not null,
    ProdNombre varchar(255) not null,
    ProdPrecioUd float
) ENGINE=INNODB;

create table if not exists cliente (
    IDCliente int auto_increment primary key,
    IDProducto int,
    ClienteNombre varchar(255) not null,
    ClienteApellidos varchar(255) not null,
    ClienteDireccion varchar(255) not null,	
    ClienteTelefono varchar(255) not null
) ENGINE=INNODB;

ALTER TABLE proveedor
  ADD FOREIGN KEY fk1(IDProducto) REFERENCES producto(IDProducto) ON DELETE CASCADE;
ALTER TABLE producto
  ADD FOREIGN KEY fk2(ProvNIF) REFERENCES proveedor(ProvNIF) ON DELETE CASCADE;
ALTER TABLE cliente
  ADD FOREIGN KEY fk3(IDProducto) REFERENCES producto(IDProducto) ON DELETE CASCADE;

