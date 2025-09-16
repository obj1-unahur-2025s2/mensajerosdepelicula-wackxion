object puenteBrooklyn {
method puedePasar(mensajero) = mensajero.pesoTotal() <= 1000
}
object laMatrix {
 method puedeHacerLlamada(mensajero) = mensajero.herramienta().tieneCredito() 
 method puedePasar(mensajero) = self.puedeHacerLlamada(mensajero) 
}