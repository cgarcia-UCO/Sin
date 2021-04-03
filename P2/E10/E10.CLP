(deftemplate alumno
	(slot apellidos (type STRING)(default ?NONE))
	(slot nombre (type STRING)(default ?NONE))
	(slot notaExamen1 (type FLOAT)(default ?NONE)(range 0.00 10.00))
	(slot notaExamen2 (type FLOAT)(default ?NONE)(range 0.00 10.00))
	(slot notaMedia (type FLOAT)(default ?NONE)(range 0.00 10.00))
	(slot grupo (type INTEGER)(default ?NONE))
)

(deftemplate grupo
	(slot numero(type INTEGER)(default ?NONE))
	(slot nombreAlumno1 (type STRING)(default ?NONE))
	(slot nombreAlumno2 (type STRING))
	(slot nombreAlumno3 (type STRING))
	(slot nombreAlumno4 (type STRING))
	(slot notaTrabajo (type FLOAT)(default ?NONE)(range 0.00 10.00))
)

(deffacts alumnos
	(alumno (apellidos "Lopez Lopez")(nombre "Paco")(notaExamen1 4.00)(notaExamen2 6.00)(notaMedia 5.00)(grupo 1))
	(alumno (apellidos "Lopez Lopez")(nombre "Luis")(notaExamen1 8.00)(notaExamen2 2.00)(notaMedia 5.00)(grupo 2))
	(alumno (apellidos "Lopez Lopez")(nombre "Lucia")(notaExamen1 4.00)(notaExamen2 6.00)(notaMedia 5.00)(grupo 1))
)

(deffacts grupos
	(grupo (numero 1)(nombreAlumno1 "Paco")(notaTrabajo 7.5))
	(grupo (numero 2)(nombreAlumno1 "Luis")(nombreAlumno2 "Lucia")(notaTrabajo 7.5))
)
