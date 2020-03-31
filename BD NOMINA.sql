CREATE DATABASE NOMINA;
USE NOMINA;
CREATE TABLE PUESTOS(
CODIGO_PUESTO VARCHAR(5) PRIMARY KEY,
NOMBRE_PUESTO VARCHAR(20) NOT NULL,
ESTATUS_PUESTO VARCHAR(1) NOT NULL
)ENGINE=INNODB;

CREATE TABLE DEPARTAMENTOS(
CODIGO_DEPARTAMENTO VARCHAR(5) PRIMARY KEY,
NOMBRE_DEPARTAMENTO VARCHAR(20) NOT NULL,
ESTATUS_DEPARTAMENTO VARCHAR(1) NOT NULL
)ENGINE=INNODB;

CREATE TABLE SALARIOS(
CODIGO_SALARIO VARCHAR(5) PRIMARY KEY,
CANTIDAD_SALARIO VARCHAR(20) NOT NULL,
ESTATUS_SALARIO VARCHAR(1) NOT NULL
)ENGINE=INNODB;

CREATE TABLE EMPLEADO(
CODIGO_EMPLEADO VARCHAR(5) PRIMARY KEY,
NOMBRE_EMPLEADO VARCHAR(50) NOT NULL,
CUI_EMPLEADO VARCHAR(20) NOT NULL,
CODIGO_PUESTOS VARCHAR(5) NOT NULL,
CODIGO_DEPARTAMENTO VARCHAR(5) NOT NULL,
CODIGO_SALARIO VARCHAR(5) NOT NULL,
codigoEmpleado int(50) not null primary key,
nombreEmpleado varchar(10)not null primary key,
apellidoEmpleado varchar(10)not null primary key,
sueldoEmpleado varchar(10)not null primary key,
estadoEmpleado varchar(8)not null ,
FOREIGN KEY (CODIGO_PUESTO) REFERENCES PUESTOS(CODIGO_PUESTO),
FOREIGN KEY (CODIGO_DEPARTAMENTO) REFERENCES DEPARTAMENTOS(CODIGO_DEPARTAMENTO),
FOREIGN KEY (CODIGO_SALARIO) REFERENCES SALARIOS(CODIGO_SALARIO)
)ENGINE=INNODB;

create table altasempleado
(
codigoEmpleado int(50) not null,
nombreEmpleado varchar(10)not null,
apellidoEmpleado varchar(10)not null,
sueldoEmpleado varchar(10)not null,
foreign key (codigoEmpleado) references EMPLEADO(codigoEmpleado),
foreign key (nombreEmpleado) references EMPLEADO(nombreEmpleado),
foreign key (apellidoEmpleado) references EMPLEADO(apellidoEmpleado),
foreign key (sueldoEmpleado) references EMPLEADO(sueldoEmpleado)
)ENGINE=INNODB;

CREATE TABLE chequesEmpleados(
codigocheques varchar (10) primary key,
codigoEmpleado int(50) not null ,
nombreEmpleado varchar(10)not null ,
apellidoEmpleado varchar(10)not null ,
sueldoEmpleado varchar(10)not null ,
estadoEmpleado varchar(8)not null ,
foreign key (codigoEmpleado) references EMPLEADO(codigoEmpleado),
foreign key (nombreEmpleado) references EMPLEADO(nombreEmpleado),
foreign key (apellidoEmpleado) references EMPLEADO(apellidoEmpleado),
foreign key (sueldoEmpleado) references EMPLEADO(sueldoEmpleado),
foreign key (estadoEmpleado) references EMPLEADO(estadoEmpleado)
) Engine = INNODB;

create table bajasEmpleado(
codigoEmpleado int(50),
nombreEmpleado varchar(10),
apellidoEmpleado varchar(10),
sueldoEmpleado varchar(10),
estadoEmpleado varchar(8) not null,
FOREIGN KEY (codigoEmpleado) REFERENCES EMPLEADO(codigoEmpleado),
FOREIGN KEY (nombreEmpleado) REFERENCES EMPLEADO(nombreEmpleado),
FOREIGN KEY (apellidoEmpleado) REFERENCES EMPLEADO(apellidoEmpleado),
FOREIGN KEY (sueldoEmpleado) REFERENCES EMPLEADO(sueldoEmpleado)
)ENGINE=INNODB;