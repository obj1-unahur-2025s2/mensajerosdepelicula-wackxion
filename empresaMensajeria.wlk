import paquetes.*
import mensajeros.*

// parte 2
object fedexArgentino {
  const contratados = []
  const paquetes = []
  const paquetesPendientes = []
    method contratarMensajero(mensajero) {
        contratados.add(mensajero)
    }
    method agregarPaquete(nuevoPaquete) {
        paquetes.add(nuevoPaquete)
    }
    method agregarPaquetePendiente(nuevoPaquete) {
        paquetesPendientes.add(nuevoPaquete)
    }
    method paqueteEntregado(paquete) {
        paquetes.remove(paquete)
    }
    method paquetePendienteEntregado(paquete) {
        paquetesPendientes.remove(paquete)
    }
    method despedirMensajero(mensajero) {
        contratados.remove(mensajero)
    }
    method despidirEmpleados() {
        contratados.clear()
    }

    method cantidadDeEmpleados() = contratados.size()
    method mensajeriaEsGrande() = self.cantidadDeEmpleados() > 2
    method elPrimerEmpleado() = contratados.first()
    method elUltimoEmpleado() = contratados.last()
    method ElPrimeroPuedeEntregar_En_(unPaquete, unDestino) = self.elPrimerEmpleado().puedeEntragar_En_(unPaquete,unDestino)
    method pesoDelUltimoEmpleado() = self.elUltimoEmpleado().peso() // no se aclara si su peso solo o con el tranporte
    method alguienPuedeEntragar_(unPaquete) {
        contratados.filter({m => m.puedeEntragar_(unPaquete)}).size() > 0
    }
    method quienesPuedenLlevar_(unPaquete) {
        contratados.filter({m => m.puedeEntragar_(unPaquete)})
    }
    method mensajeriaTieneSobrepeso() = contratados.map({m => m.peso()}).sum() > 500
}