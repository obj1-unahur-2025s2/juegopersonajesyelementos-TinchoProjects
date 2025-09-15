object ballesta {
    //esElementoArma
    var flechas = 10
    method estaCargada(){
        return flechas > 0
    }

    method usar() {
        flechas = flechas - 1
    }

    method potencia() = 4
    /*
    method flechas() = flechas
    method flechas(nuevaCantidad){
        flechas = nuevaCantidad
    }*/
    /*
    method daño() {
        if (self.estaCargada()){
            self.flechas(flechas - 1)
            return 4
        } else {
            return 0
        }
    }*/
}

object jabalina {
    //esElementoArma
    var estaCargada = true
    method estaCargada() = estaCargada

    method usar() {
        estaCargada = false
    }

    method potencia() = 30
    /*
    method usos() = usos
    method usos(nuevaCantidad){
        usos = nuevaCantidad
    }*/
    /*
    method daño() {
        if (self.estaCargada()){
            self.usos(usos - 1)
            return 30
        } else {
            return 0
        }
    }*/
}