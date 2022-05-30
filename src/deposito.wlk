import bicis.*
import accesorios.*

class Deposito{
	
	var bicis = []
	
	method agregarBicis(bici) = bicis.add(bici)
	method quitarBicis(bici) = bicis.remove(bici)
	
	method bicisRapidas() = bicis.filter({ b => b.velocidadCrucero() > 25})
	
	method marcaDeBici() = bicis.map({b => b.marca()}).asSet() 
	method depositoNocturno() = bicis.all({b=> b.tieneLuz()})
	 
	method tieneBicicletaCarga(cargaKg) = bicis.any({b => b.carga() > cargaKg}) 
	
	method marcaBiciMasRapida() = bicis.max({ b => b.velocidadCrucero()}).marca()
	
	method bicisLargas() = bicis.filter({b => b.largo() > 170}) 
																
	method cargaTotalBicisLargas() = self.bicisLargas().sum( {b => b.carga() } )
	
	method cantBicisSinAcces() = bicis.count({b => not(b.tieneAcc())})
	
	method bicisCompanieras(biciAComparar) = bicis.filter( {b => b.sonCompanieras(biciAComparar) } )
	
	
	
	
	
	
	
}