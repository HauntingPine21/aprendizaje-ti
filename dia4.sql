use escuela;
show tables;
describe Materias_Alumnos;

select * from alumnos where id in (select id_alumno from Materias_Alumnos group by id_alumno having count(materia)>=1);

select a.id from materias_alumnos MA join alumnos a on MA.id_alumno = a.id group by a.id having count(MA.materia)>1;

select * from alumnos where id in (select id_alumno from materias_alumnos where calificacion>9)