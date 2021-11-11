use tienda_cafe;

insert into proveedores (nombre,apellido,empresa,telefono) values
		('Antonio','Perez','Bonafide','4759-2016'),
        ('Oscar','Rizzo','Starbucks','4716-1530'),
        ('Rodrigo','Moyano','Bonafide','4712-2081'),
        ('Leandro','Vasquez','Havana','4759-7721'),
        ('Omar','Martinez','Cafe Martinez','4759-7721');
        
select * from proveedores;

insert into cafes (gusto,medida,precio,stock) values
		('CAFE NEGRO','CHICO','150','50000'),
        ('CORTADO','MEDIANO','250','25000'),
        ('IRLANDES','MEDIANO','400','10000'),
        ('CAPUCHINO','GRANDE','350','15000'),
        ('LAGRIMA','MEDIANO','250','10000');
        
insert into clientes (nombre,apellido,medioDePago) values
		('Cesar','Golbat','EFECTIVO'),
        ('Sebastian','Pintos','DEBITO'),
		('Anibal','Lopez','CREDITO'),
        ('Marcelo','Mattar','EFECTIVO'),
        ('Nicolas','Sosa','DEBITO');
        
insert into facturas (fecha,precio) values
		('2018/04/02','500'),
        ('2020/08/21','1050'),
        ('2019/01/13','2500'),
        ('2021/02/08','300'),
        ('2021/11/10','250');

