import vehiculos.*
import herramientas.*
import paquetes.*
import destinos.* 
object roberto {
    var peso = 0
    var vehiculo = bicicleta
       
method paquete() = paquete
method peso() = peso
method pesoTotal() = (self.peso() + vehiculo.peso())
method cambioPeso(nuevoPeso){
    peso = nuevoPeso
    }
method cambioVehiculo(nuevoVehiculo){
    vehiculo = nuevoVehiculo
    }  
method deja_Pasar(destino) = destino.puedePasar(self)
method estaEl_Pagado(unPaquete) = unPaquete.estaPago()
method puedeLlamar() = false
method puedeEntragar_En_(elPaquete, elDestino) = self.deja_Pasar(elDestino) && self.estaEl_Pagado(elPaquete) // sigo mañana 


}
object chuckNorris {
    var vehiculo = null

method cambioVehiculo(nuevoVehiculo){
    vehiculo = nuevoVehiculo
    } 
method pesoTotal() = self.peso() + vehiculo.peso()
method peso() = 80
method herramienta() = telefonoChuckNorris
method deja_Pasar(destino) = destino.puedePasar(self)
method puedeLlamar() =  self.herramienta().tieneCredito()
method estaEl_Pagado(paquete) = paquete.estaPago()
method puedeEntragar_En_(elPaquete, elDestino) = self.deja_Pasar(elDestino) && self.estaEl_Pagado(elPaquete) 

}

object neo {
    var vehiculo = null

method cambioVehiculo(nuevoVehiculo){
    vehiculo = nuevoVehiculo
    } 
method pesoTotal() = self.peso() + vehiculo.peso()
method peso() = 0
method herramienta() = telefono
method puedeLlamar() =  self.herramienta().tieneCredito()
method deja_Pasar(destino) = destino.puedePasar(self)
method estaEl_Pagado(paquete) = paquete.estaPago()
method puedeEntragar_En_(elPaquete, elDestino) = self.deja_Pasar(elDestino) && self.estaEl_Pagado(elPaquete) 
}