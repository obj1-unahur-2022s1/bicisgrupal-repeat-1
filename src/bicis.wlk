import accesorios.*
import marcas.*

class Bicicleta {
	var property rodado
	var property largo //en cm
	const property marca
	var property accesorios = []
	
	method agregarAcc(accesorio){accesorios.add(accesorio)}
	method quitarAcc(accesorio){accesorios.remove(accesorio)}
	
	method altura(){return rodado * 2.5 + 15}
	method velocidadCrucero(){if (largo > 120){return rodado+6}else{return rodado+2}}
	method carga(){return accesorios.sum( {acc => acc.carga()} )}
	method peso()=(rodado/2)+ accesorios.sum( {acc => acc.peso()})
	method tieneLuz(){return accesorios.any( {acc => acc.esLuminoso()} )}
	method cantDeAccLivianos(){return accesorios.filter({acc => acc.peso()<1}).size()}
	
	method tieneAcc(){return not(accesorios.isEmpty())}
	
	method sonCompanieras(biciAComparar){
			return 	(self != biciAComparar) and
					(self.marca() == biciAComparar.marca() and
					(self.largo() - biciAComparar.largo()).between(-10,10))
		}
}
