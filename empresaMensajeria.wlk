import paquetes.*
import mensajeros.*

// parte 2
object fedexArgentino {
  const contratados = [neo]
  var paqueteActual = null
  const conjuntoDePaquetes = []
  const paquetesPendientes = [].asSet()

    method agregarPaqueteAlConjunto(nuevoPaquete){
        conjuntoDePaquetes.add(nuevoPaquete)
    }
    method paquete() = paqueteActual
    method paquetesPendientes() =  paquetesPendientes
    method contratarMensajero(mensajero) {
        contratados.add(mensajero)
    }
    method agregarPaquete(nuevoPaquete) {
        paqueteActual = nuevoPaquete
    }
    method agregarPaquetePendiente(nuevoPaquete) {
        paquetesPendientes.add(nuevoPaquete)
    }
    method paqueteEntregado(unPaquete) {
        if (paqueteActual != null && paqueteActual == unPaquete) {
            paqueteActual = null
        } else {
        paquetesPendientes.remove(unPaquete)
        }
    }
    method despedirMensajero(mensajero) {
        contratados.remove(mensajero)
    }
    method enviar_SiSePuede(unPaquete){
        if(self.alguienPuedeEntragar_(unPaquete)){
            self.paqueteEntregado(unPaquete)
        } else {
            self.agregarPaquetePendiente(unPaquete)}
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
       return (contratados.filter({m => m.puedeEntragar_(unPaquete)}).size() > 0)
    }
    method quienesPuedenLlevar_(unPaquete) {
        contratados.filter({m => m.puedeEntragar_(unPaquete)})
    }
    method mensajeriaTieneSobrepeso() = contratados.map({m => m.peso()}).sum() > 500

    method facturacionTotal() {
        paqueteActual.costoDelPaquete() + 
        paquetesPendientes.map({p => p.costoDelPaquete()}).sum() + 
        conjuntoDePaquetes.map({p => p.costoDelPaquete()}).sum()
    }
    method  enviarConjuntoDePaquetes() {
        conjuntoDePaquetes.forEach({p => self.enviar_SiSePuede(p)})
        conjuntoDePaquetes.clear()
    }
    method paqueteMasCaroPendiente() = paquetesPendientes.max({p => p.costoDelPaquete()})
    
    method enviarPaqueteMasCaroPendiente() {
        self.enviar_SiSePuede(self.paqueteMasCaroPendiente())
    }

}
// puntos faltante me falta limar algunos cosas pero si sigo con este no hago ninguno mas
// quiero hacer algun otra actividad y empesar la grupal - despues sigo - 18 - 09 - 2025
//Cada punto debe tener mínimo un test que demuestren su correcto funcionamiento.
//Agregar un nuevo mensajero y un nuevo paquete y garantizar que todo siga funcionando.