object paquete {
  
  var costoDelPaquete = 1000
  var pago = 0

  method pagar(monto) {
    pago = pago + monto
  }
  method costoAgregadosAlPaquete(costo){
    costoDelPaquete = costoDelPaquete + costo
  }
  method estaPago() = (pago >= costoDelPaquete)

}