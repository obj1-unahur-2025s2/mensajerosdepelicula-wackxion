import destinos.*
object paquete {
  
  var costoDelPaquete = 50
  var pago = 0

  method pagar(monto) {
    pago = pago + monto
  }
  method costoAgregadosAlPaquete(costo){
    costoDelPaquete = costoDelPaquete + costo
  }
  method estaPago() = (pago >= costoDelPaquete)
  method puedeTrasportarlo(mensajero) = true
}

//parte 3
// no se cual es el paquete original por ahora supongo que es el primer paquete
object paquetito {
  method estaPago() = true
  method puedeTrasportarlo(mensajero) = true
}
object paquetonViejo {

  const destinos = [laMatrix, puenteBrooklyn]
  var pago = 0
  var costoDelPaquete = 50 + (100 * destinos.size())

  method costoAgregadosAlPaquete(costo){
    costoDelPaquete = costoDelPaquete + costo
  }
  method pagar(monto){
    pago = pago + monto
  }
  method estaPago() = (pago >= costoDelPaquete)
  method puedeTrasportarlo(mensajero) = mensajero.dejaPasar(puenteBrooklyn) && mensajero.deja_Pasar(laMatrix)
}