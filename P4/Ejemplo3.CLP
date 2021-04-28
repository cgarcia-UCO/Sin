(deffunction factorial
   (?a)
   (if (or (not (integerp ?a)) (< ?a 0))
      then 
      (printout t "Factorial no definido para " ?a crlf)
   else
      (if (= ?a 0) then 1
      else
         (* ?a (factorial (- ?a 1)))
      )
   )
)