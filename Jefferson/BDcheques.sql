CREATE TABLE CHEQUES(
codigocheques varchar (10) primary key,
nombreEmpleado varchar (10) not null,
apellidoEmpleado varchar (10) not null,
sueldoEmpleado varchar (10) not null,
estadoEmpleado varchar (10) not null,
foreign key (nombreEmpleado) references baseEmpleados(nombreEmpleado),
foreign key (apellidoEmpleado) references baseEmpleados(apellidoEmpleado),
foreign key (sueldoEmpleado) references baseEmpleados(sueldoEmpleado),
foreign key (estadoEmpleado) references baseEmpleados(sueldoEmpleado)
) Engine = INNODB;