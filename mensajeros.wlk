import vehiculos.*
import herramientas.*
import paquetes.*
import destinos.* 
object roberto {
    var peso = 0
    var vehiculo = bicicleta
    var paqueteAsignado = paquete

method nuevoPaquete(paquete) { 
    paqueteAsignado = paquete
}
method paquete() = paqueteAsignado
method peso() = peso
method pesoTotal() = (self.peso() + vehiculo.peso())
method cambioPeso(nuevoPeso){
    peso = nuevoPeso
    }
method cambioVehiculo(nuevoVehiculo){
    vehiculo = nuevoVehiculo
    }  
method deja_Pasar(destino) = destino.puedePasar(self)
method puedeLlamar() = false  
method puedeEntregar_(elPaquete) {
    return self.paquete().puedeTrasportarlo(self) && self.paquete().estaPago() 
    }

}
object chuckNorris {
    var vehiculo = null
    var paqueteAsignado = null

method nuevoPaquete(nuevoPaquete) { 
    paqueteAsignado = nuevoPaquete
    }
method paquete() = paqueteAsignado
method cambioVehiculo(nuevoVehiculo){
    vehiculo = nuevoVehiculo
    } 
method pesoTotal() = self.peso() + vehiculo.peso()
method peso() = 80
method herramienta() = telefonoChuckNorris
method deja_Pasar(destino) = destino.puedePasar(self)
method puedeLlamar() =  self.herramienta().tieneCredito()
method estaEl_Pagado(paquete) = paquete.estaPago()
method puedeEntregar_(elPaquete) {
    return self.paquete().puedeTrasportarlo(self) && self.paquete().estaPago() 
    }
}

object neo {
    var vehiculo = null
    var paqueteAsignado = null

method nuevoPaquete(nuevoPaquete) { 
    paqueteAsignado = nuevoPaquete
    }
method paquete() = paqueteAsignado
method cambioVehiculo(nuevoVehiculo){
    vehiculo = nuevoVehiculo
    } 
method pesoTotal() = self.peso() + vehiculo.peso()
method peso() = 0
method herramienta() = telefono
method puedeLlamar() =  self.herramienta().tieneCredito()
method deja_Pasar(destino) = destino.puedePasar(self)
method estaEl_Pagado(paquete) = paquete.estaPago()
method puedeEntregar_(elPaquete) {
    return self.paquete().puedeTrasportarlo(self) && self.paquete().estaPago() 
    }
}