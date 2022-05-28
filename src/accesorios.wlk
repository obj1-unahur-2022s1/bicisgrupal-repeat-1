object farolito {
	method carga()=0
	method peso()=0.5
	method esLuminoso()=true
	
}

class Canasto {
	const volumen
	
	method carga()=volumen * 2
	method peso()=volumen / 10
	method esLuminoso()=false
	
	method volumen()=volumen
	
}

class Morral {
	const largo  //CM
	var ojoDeGato //Bool
	
	method carga()=largo/3
	method peso()=1.2
	method esLuminoso()=ojoDeGato
	
	method largo()=largo
	method ojoDeGato()=ojoDeGato
	
	
}
