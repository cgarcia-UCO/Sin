(deffunction imprime-args
   (?a ?b $?c) ;Argumento comodin
   (printout t "El primero: " ?a ", el segundo: " ?b ", y los "(length $?c)" extras: " ?c crlf)
)