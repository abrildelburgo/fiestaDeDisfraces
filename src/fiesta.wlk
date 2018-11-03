class Fiesta{
	var property lugar
	var property fecha
	var property invitados
	
	method esUnBodrio() = invitados.all({invitado => !invitado.satisfechoConSuDisfraz()})

	method mejorDisfraz() = invitados.max({invitado => invitado.puntaje()})

	method tieneInvitadoA(persona) = invitados.contains(persona)
	
	method agregarAsistente(persona){ 
		if(persona.tieneDisfraz() && !self.tieneInvitadoA(persona)){
			invitados.add(persona)
		}
	}
}

object fiestaInolvidable inherits Fiesta{
	override method agregarAsistente(persona){
		if(persona.esSexy() && persona.satisfechoConSuDisfraz(self)){
			super(persona)
		}
	}
}