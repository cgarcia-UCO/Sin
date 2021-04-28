(deffunction media-recursiva
   (?resultado $?a)
   (bind ?longitud (length$ $?a))
   (bind ?var (nth$ 1 $?a))
   (if (= ?longitud 1) then
      (bind ?resultado (+ ?resultado ?var))
   else
      (bind ?resultado (+ ?resultado ?var))
      (printout t ?resultado ?a crlf)
      (media-recursiva ?resultado (rest$ $?a))
   )
)