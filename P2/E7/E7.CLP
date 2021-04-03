(deftemplate animal
	(slot tipo (allowed-symbols mamifero reptil ave))
)

(deftemplate mamifero
	(slot grupo (allowed-symbols roedor felino))
)

(deftemplate roedor
	(slot especie (allowed-symbols rata ardilla))
)

(deftemplate felino
	(slot especie (allowed-symbols tigre lince jaguar))
)

(deftemplate reptil
	(slot grupo (allowed-symbols serpiente))
	(slot especie (allowed-symbols boa cobra))
)

(deftemplate ave
	(slot grupo (allowed-symbols rapaces))
	(slot especie (allowed-symbols diurna noturna))
)

(deftemplate diurna
	(slot especie (allowed-symbols halcon gavilan))
)

(deftemplate nocturna
	(slot especie (allowed-symbols buho lechuza))
)