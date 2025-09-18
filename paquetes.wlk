import destinos.*
import mensajeros.*
object paquete {

  var destino = null
  var costoDelPaquete = 50
  var pago = 0

  method cambiarDestino(nuevoDestino) {
    destino = nuevoDestino
  }
  method pagar(monto) {
    pago = pago + monto
  }
  method costoAgregadosAlPaquete(costo){
    costoDelPaquete = costoDelPaquete + costo
  }
  method estaPago() = (pago >= costoDelPaquete)
  method puedeTrasportarlo(mensajero) = destino.puedePasar(mensajero)
}

//parte 3
// no se cual es el paquete original por ahora supongo que es el primer paquete
object paquetito {
  var destino = null
  method cambiarDestino(nuevoDestino) {
    destino = nuevoDestino
  }
  method estaPago() = true
  method puedeTrasportarlo(mensajero) = destino.puedePasar(mensajero)
}

// agregar lo que le hice apaquetito viajero a los demas paqute de valor y de saber si esta pago
// y lo de entregar paquete y si esta entregado el paquete tambien se tiene que 
// borrar de la empresa de mensajeria 
object paquetonViajero {
  const destino = [laMatrix, puenteBrooklyn]
  var pago = 0
  method costoDelPaquete() = (100 * destino.size())
  method entregarPaquetes() { 
    destino.remove(destino.last())
    pago = pago - 100
    }
  method agregarDestino(unDestino) {
    destino.add(unDestino)
    }
  method puedeTrasportarlo(mensajero) {
    destino.filter({d => d.puedePasar(mensajero)}).size() == destino.size()
  }
  method pagar(monto){
    pago = pago + monto
  } 
  method estaPago() = pago - self.costoDelPaquete() >= 100 
}
  