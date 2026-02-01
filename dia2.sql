-- DIA 2
use escuela;
select * from alumnos;
create table materias(
id_materia int auto_increment primary key,
id_alumno char (4),
materia varchar(20),
calificacion float (2,2),
foreign key (id_alumno) references alumnos(id) on update cascade on delete cascade 
)engine=InnoDB;

rename table materias to Materias_Alumnos;

alter table Materias_Alumnos 
modify calificacion decimal(4,2) not null;

insert into Materias_Alumnos (id_alumno, materia, calificacion) values("A001", "Español",9.81),("A001","Matematicas",8.71),("A002","Ciencias",9.60);
describe alumnos;

select 
a.nombre as nombreAlumno,
MA.materia,
MA.calificacion
from Materias_Alumnos MA
join alumnos a on MA.id_alumno = a.id;

select 
a.nombre as nombreAlumno,
MA.materia,
MA.calificacion
from Materias_Alumnos MA
join alumnos a on MA.id_alumno = a.id
where MA.calificacion>=9;

select 
a.nombre as nombreAlumno,
MA.materia,
MA.calificacion
from Materias_Alumnos MA
join alumnos a; -- NO SE QUE PASÓ PERO TODO SE REPITE