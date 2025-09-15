import vehiculos.*
import herramientas.*
import paquetes.*
import destinos.*
object roberto {
    var peso = 0
    var vehiculo = bicicleta
       
method paquete() = paquete
method peso() = peso
method pesoTotal() = peso + vehiculo.peso()
method cambioPeso(nuevoPeso){
    peso = nuevoPeso
    }
method cambioVehiculo(nuevoVehiculo){
    vehiculo = nuevoVehiculo
    }  
method deja_Pasar(destino) = destino.puedePasar(self)
method estaEl_Pagado(unPaquete) = unPaquete.estaPago()
method puedeLlamar() = false
method puedeEntragar_EnEl_ // sigo mañana 

 }
object chuckNorris {
    var vehiculo = 0

method cambioVehiculo(nuevoVehiculo){
    vehiculo = nuevoVehiculo
    } 
method pesoTotal() = self.peso() + vehiculo.peso()
method peso() = 80
method herramienta() = telefonoChuckNorris
method dejaPasar(destino) = destino.puedePasar(self)
method puedeLlamar() =  self.herramienta().tieneCredito()
method estaEl_Pagado(paquete) = paquete.estaPago()
}

object neo {
    var vehiculo = 0

method cambioVehiculo(nuevoVehiculo){
    vehiculo = nuevoVehiculo
    } 
method pesoTotal() = self.peso() + vehiculo.peso()
method peso() = 0
method herramienta() = telefono
method puedeLlamar() =  self.herramienta().tieneCredito()
method dejaPasar(destino) = destino.puedePasar(self)
method estaEl_Pagado(paquete) = paquete.estaPago()

}