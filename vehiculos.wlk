object camion {
    var acoplados = 0
method peso() = (500 + (500 * acoplados)) // en el ejercicio nu se dice el peso del camion, pongo 500kg
method agregar_Acoplados(cantidad) { 
    acoplados = cantidad
 }
}
object bicicleta {
  method peso() = 5
}