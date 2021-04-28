(deffunction fibonacci
   (?numero)
   (if (or (not (integerp ?numero)) (< ?numero 0))
      then 
      (printout t "Fibonacci no definido para " ?numero crlf)
   else
      (if (< ?numero 2) then ?numero
      else
         (+ (fibonacci (- ?numero 1)) (fibonacci (- ?numero 2)))
      )
   )
)

(defgeneric maximo)
(defmethod maximo
   ((?numero1 NUMBER) (?numero2 NUMBER))
   (if (< ?numero1 ?numero2) then
   ?numero2
   else
   ?numero1
   )
)
(defmethod maximo
   ((?cadena1 STRING) (?cadena2 STRING))
   (if (< (length$ $?cadena1) (length$ $?cadena2)) then
   ?cadena2
   else
   ?cadena1
   )
)