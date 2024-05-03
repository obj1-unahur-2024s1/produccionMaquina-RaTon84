object registroProduccion {
	const cantidadPiezas = [43,18,49,62,33,39];
	
	method algunDiaSeProdujo(cantidad){
		return cantidadPiezas.contains(cantidad);
	}
	method maximoValorDeProduccion(){
		return cantidadPiezas.max();
	}
	method valoresDeProduccionPares(){
		return cantidadPiezas.filter({c=>c.even()});
	}
	method produccionEsAcotada(n1,n2){
		return cantidadPiezas.count({c=>c.between(n1,n2)})
		== cantidadPiezas.size();
	}
	method produccionesSuperioresA(cuanto){
		return cantidadPiezas.filter({c=>c>cuanto});
	}
	method produccionesSumando(n){
		return cantidadPiezas.map({c=>c+n});
	}
	method totalProducido(){
		return cantidadPiezas.sum();
	}
	method ultimoValorDeProduccion(){
		return cantidadPiezas.last();
	}
	method cantidadProduccionesMayorALaPrimera(){		
		return cantidadPiezas.count({c=>c<cantidadPiezas.first()})-1;
	}
}

/*registroProduccion.algunDiaSeProdujo(49)
true
>>> registroProduccion.maximoValorDeProduccion()
62
>>> registroProduccion.valoresDeProduccionPares()
[18, 62]
>>> registroProduccion.produccionEsAcotada(10,100)
true
>>> registroProduccion.produccionEsAcotada(20,100)
false
>>> registroProduccion.produccionesSuperioresA(35)
[43, 49, 62, 39]
>>> registroProduccion.produccionesSumando(5)
[48, 23, 54, 67, 38, 44]
>>> registroProduccion.totalProducido()
244
>>> registroProduccion.ultimoValorDeProduccion()
39
>>> registroProduccion.cantidadProduccionesMayorALaPrimera()
2
>>> */
