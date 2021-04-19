(deftemplate camion

    (slot id)

    (slot estado-frenos (range 0 100))

    (slot estado-neumaticos (range 0 100))

)



(deftemplate alarma

    (slot camion)

    (slot color (allowed-values naranja rojo))

)



(deffacts flota-camiones

    (camion (id 123) (estado-frenos 90) (estado-neumaticos 40))

    (camion (id 789) (estado-frenos 30) (estado-neumaticos 40))

    (camion (id 246) (estado-frenos 20) (estado-neumaticos 10))

    (camion (id 357) (estado-frenos 60) (estado-neumaticos 80))

)

(defrule alarma-roja
   (camion (estado-frenos ?x) (estado-neumaticos ?y) (id ?z))
   (test (< ?x 50))
   (test (< ?y 50))
   =>
   (assert (alarma (camion ?z) (color rojo)))
)

(defrule alarma-naranja
   (camion (estado-frenos ?x) (estado-neumaticos ?y) (id ?z))
   (test (or
   (and (< ?x 50) (>= ?y 50))
   (and (< ?y 50) (>= ?x 50)))
   )
   =>
   (assert (alarma (camion ?z) (color naranja)))
)

(defrule aviso
   (exists (alarma (color rojo)))
   =>
   (printout t "Hay camiones que requieren revision" crlf)
)

(defrule visita-taller
   (declare (salience -10))
   ?dir-alarma <- (alarma (color rojo) (camion ?id))
   ?dir <- (camion (id ?id))
   =>
   (modify ?dir (estado-frenos 100)(estado-neumaticos 100))
   (retract ?dir-alarma)
   (printout t "Camion " ?id " puesto a punto" crlf)
)