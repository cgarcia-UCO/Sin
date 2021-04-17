(deftemplate esfera (slot nombre) (slot radio))

(deftemplate objeto (slot nombre) (slot menordimension))

(deftemplate cuerda (slot nombre) (slot incrementolongitud))

(deffacts hechos
	(esfera (nombre esferaProblema) (radio 6957000000)) ; En metros
	(cuerda (nombre cuerdaesfera) (incrementolongitud 1)) ; En metros
	(objeto (nombre folio) (menordimension 0.0001)) ; En metros
	(objeto (nombre mano) (menordimension 0.03)) ; En metros
	(objeto (nombre pelotaBeisbol) (menordimension 0.055)) ; En metros
	(objeto (nombre pelotaBaloncesto) (menordimension 0.3)) ; En metros
	)

(defrule cabe-objeto
	(esfera (nombre ?nombree) (radio ?radio))
	(objeto (nombre ?nombreo) (menordimension ?menordimension))
	(cuerda (nombre ?nombrec) (incrementolongitud ?incrementolongitud))
   =>
	(if(>(/ ?incrementolongitud 6.283) ?menordimension) ; El 6.283 equivale a 2Pi
	then (printout t ?nombreo " puede pasar entre la cuerda y la " ?nombree " ya que su menor dimensión es " ?menordimension " y el espacio que queda entre " ?nombree " y " ?nombrec " es de " (/ ?incrementolongitud 6.283) crlf)
	else (printout t ?nombreo " no puede pasar entre la cuerda y la " ?nombree " ya que su menor dimensión es " ?menordimension " y el espacio que queda entre " ?nombree " y " ?nombrec " es de " (/ ?incrementolongitud 6.283) crlf))
)