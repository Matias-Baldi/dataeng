/*################ Creamos la estructura de las tablas########################
#Fact tables:
#1. Tabla robos
#2. Tabla homicidios_dolosos
#3. Tabla despliegue_fuerzas
#4. Tabla transferencia_rec
#5. Tabla programas_comunitarios
#6. Tabla poblacion

#Dimention tables:
#7. Tabla territorio
#7bis. Tabla provincia
#8. Tabla tiempo
#8bis Tabla anio
#9. Tabla tipo_robo
#10. Tabla mecanismo
#11. Tabla lugar_homicidio
*/

/*#Dimention tables:*/

/*#7bis. Tabla provincia*/
create table provincia (
provincia_id	VARCHAR(2) NOT NULL,
provincia_nombre	VARCHAR(100)	NOT NULL,
nacion_nombre	VARCHAR(50)	NOT NULL,
primary key (provincia_id)
);

/*#7. Tabla territorio*/
create table territorio (
departamento_id	VARCHAR(5) NOT NULL,
departamento_nombre	VARCHAR(100)	NOT NULL,
provincia_id	VARCHAR(2) NOT NULL,
primary key (departamento_id),
foreign key (provincia_id) references provincia (provincia_id)
);

/*#8bis. Tabla anio*/
create table anio (
anio_id 	INT	NOT NULL, 
primary key (anio_id)
);

/*#8. Tabla tiempo*/
create table tiempo (
mes_id 	INT	NOT NULL,
anio_mes VARCHAR(20)	NOT NULL,
mes INT 	NOT NULL,
trimestre INT 	NOT NULL,
semestre INT 	NOT NULL,
anio_id 	INT	NOT NULL, 
primary key (mes_id),
foreign key (anio_id) references anio (anio_id)
);


/*#9. Tabla tipo_robo*/
create table tipo_robo (
tipo_robo_id	INT 	NOT NULL,
tipo_robo VARCHAR(100)	NOT NULL,
primary key (tipo_robo_id)
);

/*#10. Tabla mecanismo*/
create table mecanismo (
mecanismo_id	 INT 	NOT NULL,
mecanismo VARCHAR(100)	NOT NULL,
primary key (mecanismo_id)
);

/*#11. Tabla lugar_homicidio*/
create table lugar_homicidio (
lugar_id	INT 	NOT NULL,
lugar VARCHAR(100)	NOT NULL,
primary key (lugar_id)
);


/*#1.Tabla robos*/
create table robos (
departamento_id	VARCHAR(5) NOT NULL, 
mes_id 	INT NOT NULL,
tipo_robo_id	INT 	NOT NULL,
cantidad_hechos_con_arma	INT 	NOT NULL,
cantidad_hechos_sin_arma	INT 	NOT NULL,
foreign key (departamento_id) references territorio (departamento_id),
foreign key (mes_id) references tiempo (mes_id),
foreign key (tipo_robo_id) references tipo_robo (tipo_robo_id),
primary key (departamento_id, mes_id, tipo_robo_id)
);
	
/*#2.Tabla homicidios_dolosos*/
create table homicidios_dolosos (
departamento_id	VARCHAR(5) NOT NULL, 
mes_id	 INT NOT NULL, 
mecanismo_id	INT 	NOT NULL,
lugar_id	INT 	NOT NULL,
cantidad_hd	INT 	NOT NULL,
foreign key (departamento_id) references territorio (departamento_id),
foreign key (mes_id) references tiempo (mes_id),
foreign key (mecanismo_id) references mecanismo (mecanismo_id),
foreign key (lugar_id) references lugar_homicidio (lugar_id),
primary key (departamento_id, mes_id, mecanismo_id, lugar_id)
);

/*#3. Tabla despliegue_fuerzas*/
create table despliegue_fuerzas (
departamento_id	VARCHAR(5) NOT NULL, 
mes_id 	INT	NOT NULL, 
cantidad	INT 	NOT NULL,
foreign key (departamento_id) references territorio (departamento_id),
foreign key (mes_id) references tiempo (mes_id),
primary key (departamento_id, mes_id)
); 

/*#4. Tabla transferencia_rec*/
create table transferencia_rec (
provincia_id	VARCHAR(2) NOT NULL, 
anio_id	 INT	NOT NULL,
monto	INT 	NOT NULL,
foreign key (provincia_id) references provincia (provincia_id),
foreign key (anio_id) references anio (anio_id),
primary key (provincia_id, anio_id)
); 

/*#5. Tabla programas_comunitarios*/
create table programas_comunitarios (
departamento_id	VARCHAR(5) NOT NULL, 
anio_id	 INT	NOT NULL,
existencia	BOOLEAN 	NOT NULL,
foreign key (departamento_id) references territorio (departamento_id),
foreign key (anio_id) references anio (anio_id),
primary key (departamento_id, anio_id)
);

/*#6. Tabla poblacion*/
create table poblacion (
departamento_id	VARCHAR(5) NOT NULL, 
anio_id	 INT NOT NULL,
cantidad	INT 	NOT NULL,
foreign key (departamento_id) references territorio (departamento_id),
foreign key (anio_id) references anio (anio_id),
primary key (departamento_id, anio_id)
); 



