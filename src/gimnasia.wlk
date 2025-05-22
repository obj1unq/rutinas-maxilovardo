class Rutina {
    method consumoCaloriasEn(tiempo){
        return (tiempo - self.descanso(tiempo)) * self.intensidad() * 100
    }

    method descanso(tiempo)
    method intensidad()
}

class Running inherits Rutina{
    var property intensidad
    override method descanso(tiempo){
        return if(tiempo<20){
            2
        }else{
            5
        }
    }
}

class Maraton inherits Running{
    override method consumoCaloriasEn(tiempo){
        return super(tiempo)*2
    }
}

class Remo inherits Rutina{
    const property intensidad = 1.3
    override method descanso(tiempo){
        return tiempo/5
    }
}

class RemoDeCompeticion inherits Remo(intensidad=1.7){
    override method descanso(tiempo){
        return (super(tiempo)-3).max(2)
    }
}