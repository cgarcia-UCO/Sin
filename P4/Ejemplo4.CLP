(defgeneric suma)
(defmethod suma
   ((?a NUMBER) (?b NUMBER))
   (+ ?a ?b)
)
(defmethod suma
   ((?a STRING) (?b STRING))
   (str-cat ?a ?b)
)