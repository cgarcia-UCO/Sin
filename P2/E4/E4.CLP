(deftemplate persona
	(slot nombre (type STRING)(default ?NONE))
	(slot apellidos (type STRING)(default ?NONE))
	(slot dni (type SYMBOL)(default ?NONE))
)

(deftemplate familiar
	(slot familiar1 (type SYMBOL)(default ?NONE))
	(slot familiar2 (type SYMBOL)(default ?NONE))
	(slot relacion (allowed-symbols abuelo abuela tio tia padre madre sobrino sobrina hijo hija primo prima hermano hermana cuñada yerno nieto nieta)(default ?NONE))
)

(deffacts personas
	(persona (nombre "Ana")(apellidos "Lopez Lopez")(dni 11A))
	(persona (nombre "Manu")(apellidos "Lopez Gracia")(dni 11B))
)
(deffacts familiares
	(familiar (familiar1 11A)(familiar2 11B)(relacion "prima"))
	(familiar (familiar1 11B)(familiar2 11A)(relacion "primo"))
)