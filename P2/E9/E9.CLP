(deftemplate barco
	(slot tamaño (type INTEGER)(range 1 4)(default ?NONE))
	(slot tipo (allowed-symbols patrullera dragaminas fragata acorazado destructor portaaviones)(default ?NONE))
	(slot estado (allowed-symbols indemne tocado hundido)(default indemne))
)

(deffacts barcos
	(barco (tamaño 3)(tipo patrullera)(estado hundido))
	(barco (tamaño 2)(tipo fragata))
)