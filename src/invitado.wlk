class Invitado{
	var property disfraz
	var property personalidad
	var property edad
	
	method esSexy() = personalidad.sexy(self)
	
	method tieneMasDeCincuenta() = edad > 50
	method tieneMenosDeTreinta() = edad < 30
	
	method satisfechoConSuTraje(fiesta) = disfraz.mayorADiezPuntos(self,fiesta)
}

class Caprichoso inherits Invitado{
	 override method satisfechoConSuTraje(fiesta) = super(self,fiesta) && disfraz.nombrePar()
}

class Pretencioso inherits Invitado{
	override method satisfechoConSuTraje(fiesta) = super(self,fiesta) && disfraz.trajeRapido()
}

class Numerologo inherits Invitado{
	var property puntaje
	
	// constructor con super
	
	override method satisfechoConSuTraje(fiesta) = super(self,fiesta) && disfraz.puntajeIgualA(puntaje)
}
