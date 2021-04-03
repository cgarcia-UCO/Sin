(deftemplate coche
	(slot stock (type INTEGER)(default ?NONE))
	(slot modelo(type STRING)(default ?NONE))
	(slot combustible(type STRING)(default ?NONE))
	(slot cilindrada (type INTEGER)(default ?NONE))
	(slot nPuertas (type INTEGER)(default ?NONE))
	(slot color (type STRING)(default ?NONE))
)

(deftemplate venta
	(slot nombreVendedor (type STRING) (default ?NONE))
	(slot modelo(type STRING)(default ?NONE))	
	(slot fecha (type STRING) (default ?NONE))
	(slot nombreCliente (type STRING) (default ?NONE))
)

(deffacts coches
	(coche (stock 1)(modelo "Clio")(combustible "gasolina")(cilindrada 1600)(nPuertas 3)(color "azul"))
	(coche (stock 1)(modelo "Clio")(combustible "diesel")(cilindrada 1800)(nPuertas 5)(color "blanco"))
	(coche (stock 2)(modelo "Megane")(combustible "gasolina")(cilindrada 1600)(nPuertas 5)(color "gris"))
	(coche (stock 1)(modelo "Megane")(combustible "diesel")(cilindrada 1800)(nPuertas 5)(color "dorado"))
	(coche (stock 1)(modelo "Laguna")(combustible "gasolina")(cilindrada 2000)(nPuertas 5)(color "negro"))
)

(deffacts ventas
	(venta (nombreVendedor "Juan Perez")(modelo "Megane")(fecha "10/10/2003")(nombreCliente "Esteban Losada"))
	(venta (nombreVendedor "Ana Ballester")(modelo "Laguna")(fecha "13/10/2003")(nombreCliente "Juan Cano"))
)