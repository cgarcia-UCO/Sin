(deffunction media
   ($?a)
   (bind ?longitud (length$ $?a))
   (bind ?index 1)
   (bind ?resultado 0)
   (while (<= ?index ?longitud)
      do
      (bind ?num (nth$ ?index $?a))
      (bind ?resultado (+ ?resultado ?num))
      (bind ?index (+ ?index 1))
   )
   (bind ?resultado (/ ?resultado ?longitud))
)