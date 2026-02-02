use escuela;
describe alumnos;
show tables;

-- TAREA 1
create table materias(
id_materia char(4) primary key not null,
nombre_materia varchar(30),
creditos int
) engine=InnoDB;

create table inscripciones(
id_inscripcion int auto_increment primary key,
id_alumno char (4),
id_materia char (4),
calificacion decimal (4,2),
foreign key (id_alumno) references alumnos(id) on update cascade on delete cascade,
foreign key (id_materia) references materias(id_materia) on update cascade on delete cascade
)engine=InnoDB;

describe materias;

-- TAREA 2
insert into materias values
("E001", "Español", 5.24),("M001","Matematicas", 5.61),("SQ01","Fundamentos de SQL", 6);
select * from materias;

select * from alumnos;
describe inscripciones;
insert into inscripciones (id_alumno, id_materia, calificacion) values
("A001","E001", 9.23),
("A002","SQ01", 8.71),
("A003","SQ01", 7.40);
SELECT * FROM inscripciones;

-- TAREA 3
describe materias;
select
a.nombre,
m.nombre_materia as materia,
i.calificacion
from inscripciones i
join alumnos a on i.id_alumno = a.id
join materias m on i.id_materia = m.id_materia;

-- TAREA 4
select * from materias
left join inscripciones on materias.id_materia = inscripciones.id_materia;