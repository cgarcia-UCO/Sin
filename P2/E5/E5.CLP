(deftemplate libro
	(multislot autor (type STRING)(default ?NONE))
	(slot titulo (type STRING)(default ?NONE))
	(slot editorial (type STRING)(default ?NONE))
	(slot fecha (type INTEGER)(default ?NONE))
)

(deffacts libros
	(libro (autor "Mira, J" "Delgado, A" "Boticario, J." "Dóez, F. J.")(titulo "Aspectos Básicos de la Inteligencia Artificial")(editorial "Sanz y Torres")(fecha 1995))
	(libro (autor "Galán, S. F" "Boticario, J. G" "Mira, J")(titulo "Problemas Resueltos de Inteligencia Artificial Aplicada: Búsqueda y Representación")(editorial "Addison-Wesley Iberoamericana S. A")(fecha 1998))
	(libro (autor "Rich, E" "Knight, K")(titulo "Inteligencia Artificial. 2ª edición")(editorial "McGraw-Hill Interamericana")(fecha 1994))
)