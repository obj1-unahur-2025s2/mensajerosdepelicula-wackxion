import mensajeros.*

// parte 2
object fedexArgentino {
  const contratados = []
    method contratarMensajero(mensajero) {
        contratados.add(mensajero)
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


}