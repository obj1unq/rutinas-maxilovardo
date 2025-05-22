class Persona{
    var property peso
    var property tiempoPorRutina

    method kilosPorCaloria()
    method perdidaDePeso(rutina){
        return rutina.consumoCaloriasEn(self.tiempoPorRutina())/self.kilosPorCaloria()
    }
}

class PersonasSedentarias inherits Persona{
    override method kilosPorCaloria(){return 7000}

    override method perdidaDePeso(rutina){
        return if(self.peso()>50){
            super(rutina)
        }
    }
}



