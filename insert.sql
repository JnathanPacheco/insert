use tienda_cafe;

insert into proveedores (nombre,apellido,empresa,telefono) values
		('Antonio','Perez','Bonafide','4759-2016'),
        ('Oscar','Rizzo','Starbucks','4716-1530'),
        ('Rodrigo','Moyano','Bonafide','4712-2081'),
        ('Leandro','Vasquez','Havana','4759-7721'),
        ('Omar','Martinez','Cafe Martinez','4759-7721');
        
select * from proveedores;

insert into cafes (gusto,medida,stock,precio) values
		('CAFE NEGRO','CHICO','50000','150'),
        ('CORTADO','MEDIANO','25000','250'),
        ('IRLANDES','MEDIANO','10000','400'),
        ('CAPUCHINO','GRANDE','15000','350'),
        ('LAGRIMA','MEDIANO','10000','250');

select * from cafes;

insert into clientes (nombre,apellido,medioDePago) values
		('Cesar','Golbat','EFECTIVO'),
        ('Sebastian','Pintos','DEBITO'),
		('Anibal','Lopez','CREDITO'),
        ('Marcelo','Mattar','EFECTIVO'),
        ('Nicolas','Sosa','DEBITO');
        
select * from clientes;
        
insert into facturas (id_cliente,id_cafe,fecha,precio) values
		('1','3','2018/04/02','500'),
        ('2','5','2020/08/21','1050'),
        ('4','2','2019/01/13','2500'),
        ('5','4','2021/02/08','300'),
        ('3','1','2021/11/10','250');

