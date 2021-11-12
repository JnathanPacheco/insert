drop database if exists tienda_cafe;
create database tienda_cafe;
use tienda_cafe;
drop table if exists cafes;
drop table if exists clientes;
drop table if exists proveedores;
drop table if exists facturas;
-- drop table if exists cafe_factura;
-- drop table if exists factura_cafe;

create table proveedores(
	id int not null auto_increment primary key,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	empresa varchar(25) not null,
	telefono varchar(15) not null
    );

create table cafes(
	id int auto_increment primary key,
	id_proveedor int,
    gusto enum('CAFE NEGRO','CORTADO','CAPUCHINO','IRLANDES','LAGRIMA'),
	medida enum('CHICO','MEDIANO','GRANDE'),
    stock double,
    precio decimal(30,2) not null check(precio >0)
);
    
create table clientes(
	id int auto_increment primary key,
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    medioDePago enum('EFECTIVO','DEBITO','CREDITO')
    );

create table facturas(
	id int auto_increment primary key,
    id_cliente int not null,
    id_cafe int not null,
    fecha date,
    precio double not null
    );

alter table cafes
    add constraint FK_cafe_id_proveedor 
    foreign key(id_proveedor)
    references proveedores(id);

alter table facturas
    add constraint FK_facturas_id_cliente
    foreign key(id_cliente)
    references clientes(id);

alter table facturas
	add constraint FK_facturas_id_cafe
    foreign key(id_cafe)
    references cafes(id);

    
    
    
      /*alter table factura
    add constraint FK_factura_id_cafe 
    foreign key (id_cafe) 
    references cafe(id_cafe);
    
/*create table factura_cafe(
	id int auto_increment,
    id_factura int not null,
    id_cafe int not null,
    primary key(id),
    foreign key (id_factura) references factura(id_factura),
    foreign key (id_producto) references cafe(id_cafe)
    );
*/	
    
    /*create table proveedor_cafe(
	id int auto_increment,
    id_proveedor int not null,
    id_cafe int not null,
    primary key(id),
    foreign key (id_proveedor) references proveedor(id_proveedor),
    foreign key (id_cafe) references cafe(id_cafe)
    );   */
    
    