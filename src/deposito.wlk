import bicis.*
import accesorios.*

class Deposito{
	
	var bicis = []
	
	method agregarBicis(bici) = bicis.add(bici)
	method quitarBicis(bici) = bicis.remove(bici)
	
	method bicisRapidas() = bicis.filter({ b => b.velocidadCrucero() > 25})
	
	method marcaDeBici() = bicis.asSet({b => b.marca()})
	
	method depositoNocturno() = bicis.all({b=> b.tieneLuz()})
	 
	method tieneBicicletaCarga(cargaKg) = bicis.any({b => b.carga() > cargaKg}) 
	
	//Del punto 3
	method marcaBiciMasRapida() = bicis.max({ b => b.velocidadCrucero()}).marca()
	
	method bicisLargas() = bicis.filter({b => b.largo() > 170}) //filtro todas las bicis 
																//que tengan un largo mayor a 170
																
	method cargaTotalBicisLargas() = self.bicisLargas().sum( {b => b.carga() } )//lo agrego aca, y pongo
													//que sumen las cargas
	
	//method cantBicisSinAcces()
	
	
	
	
	
	
	
}