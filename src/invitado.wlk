class Invitado{
	var property disfraz
	var property personalidad
	var property edad
	
	method esSexy() = personalidad.sexy(self)
	
	method tieneMasDeCincuenta() = edad > 50
	method tieneMenosDeTreinta() = edad < 30
	
	method satisfechoConSuTraje(fiesta) = disfraz.mayorADiezPuntos(self,fiesta) && self.condicionDeTraje()
	
	method condicionDeTraje() 
}

class Caprichoso inherits Invitado{
	 override method condicionDeTraje() = disfraz.nombrePar()
}

class Pretencioso inherits Invitado{
	override method condicionDeTraje() = disfraz.trajeRapido()
}

class Numerologo inherits Invitado{
	var property puntaje
	
	// constructor con super
	
	override method condicionDeTraje() = disfraz.puntajeIgualA(puntaje)
}