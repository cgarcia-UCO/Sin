(deftemplate persona
	(slot nombre (type STRING))
	(slot apellidos (type STRING))
	(slot color-ojos (type SYMBOL) (default marron))
	(slot altura (type FLOAT) (default 1.7))
	(slot edad (type INTEGER) (default 23))
)

(deffacts personas "Personas de ejemplo"
	(persona (nombre "Juan") (apellidos "Juan tambien"))
	(persona (nombre "Sandra") (color-ojos azul))
)