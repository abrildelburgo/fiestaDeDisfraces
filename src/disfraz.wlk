class Disfraz{
	var property nombre
	var property fechaConfeccion
	var property tipos //LISTA!!!
	
	method puntos(duenio,fiesta) = tipos.sum({tipo => tipo.puntos(duenio,fiesta)})	
	
	method mayorADiezPuntos(duenio,fiesta) = self.puntos(duenio,fiesta) > 10
	
	method nombrePar() = nombre.length().even()
	method trajeRapido(fiesta) = fechaConfeccion - fiesta.fecha() < 30 
	method puntajeIgualA(puntaje) = self.puntos() == puntaje

}

class Gracioso{
	var property nivelDeGracia
	
	method puntos(duenio,fiesta){
		if(duenio.tieneMasDeCincuenta()){ return 3*nivelDeGracia }
		else { return nivelDeGracia }
	}
}

class Tobara{
	var property fechaCompra
	
	method puntos(duenio,fiesta){
		if(fiesta.diasDesdeSuConfeccion(fechaCompra) <= 2){ return 5 }
		else{ return 3 }
	}
}

class Careta{
	var property puntos = personaje.puntos()
}

object sexy{
	method puntos(duenio,fiesta){
		if(duenio.esSexy()){ return 15 }
		else { return 2 }
	}
}

//ejemplo personaje
object mickeyMouse{
	const property puntos = 8
}

object osoCarolina{
	const property puntos = 6
}