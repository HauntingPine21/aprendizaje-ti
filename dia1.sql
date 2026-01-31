create database escuela; 
use escuela; 
create table alumnos (
id char(4) primary key not null, 
nombre varchar(255), edad int, 
carrera varchar(255)); 
INSERT INTO alumnos (id, nombre, edad, carrera) VALUES 
('A001', 'Juan Perez', 18, 'Ingenieria en Sistemas'), 
('A002', 'Maria Lopez', 17, 'Derecho'), 
('A003', 'Carlos Hernandez', 19, 'Administracion'), 
('A004', 'Ana Torres', 16, 'Psicologia'), 
('A005', 'Luis Martinez', 20, 'Ingenieria Industrial'), 
('A006', 'Sofia Ramirez', 18, 'Arquitectura'), 
('A007', 'Diego Cruz', 17, 'Contaduria'), 
('A008', 'Fernanda Morales', 21, 'Medicina'), 
('A009', 'Jorge Castillo', 16, 'Diseño Grafico'), 
('A010', 'Paola Navarro', 22, 'Ingenieria en Sistemas'); 
select nombre, carrera from alumnos; 
select * from alumnos where edad=20; 
select * from alumnos where edad<>18;
select * from alumnos where carrera = "TI" or "ti"; 
select * from alumnos where edad in (18,20,22); 
select * from alumnos where edad not in (18,20,22);