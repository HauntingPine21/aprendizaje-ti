use escuela;
show tables;
describe inscripciones;

-- TAREA 1
select 
m.nombre_materia,
count(i.id_inscripcion) as inscritos
from materias m   
left join inscripciones i on m.id_materia = i.id_materia group by m.nombre_materia;

-- TAREA 2
describe alumnos;
select 
a.nombre,
avg(i.calificacion) as promedio
from alumnos a
join inscripciones i on a.id = i.id_alumno group by (a.nombre); -- quise no mostrarlos

select 
a.nombre,
avg(i.calificacion) as promedio
from alumnos a
left join inscripciones i on a.id = i.id_alumno group by (a.nombre); -- aqui si quise mostrarlos

-- TAREA 3
select 
a.nombre,
avg(i.calificacion) as promedio
from alumnos a
join inscripciones i on a.id = i.id_alumno group by (a.nombre) having promedio > 9;