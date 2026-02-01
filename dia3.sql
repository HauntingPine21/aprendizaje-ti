-- TAREA 1
use escuela;
show tables;
describe alumnos;
describe materias_alumnos;

-- TAREA 2
select 
a.nombre as Nombre_Alumno,
MA.calificacion,
MA.materia
from alumnos a
left join Materias_Alumnos MA on a.id = MA.id_alumno;

-- TAREA 3 Y 4
select 
a.nombre as Nombre_Alumno,
MA.calificacion,
MA.materia
from alumnos a
left join Materias_Alumnos MA on a.id = MA.id_alumno
where MA.materia is null;