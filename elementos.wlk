object castillo {
    var defensa = 150
    method altura() = 20
    method recibirAtaque(potencia) {
        defensa = 0.max(defensa - potencia) // es igual a (defensa - potencia).max(0)
    }
    method valorOtorgado() = defensa * 0.20
    
    method recibirTrabajo(){
       defensa = 200.min(defensa + 20)
    }
    //esElemento - esEdificio
    //method defensa() = defensa
}

object aurora {
    //esElemento - esVaca
    var estaViva = true
    method recibirAtaque(potencia) {
        if (potencia >= 10){
            estaViva = false
        }
    }
    method valorOtorgado() = 15
    
    method recibirTrabajo() {}
    //const defensa = 10
    /*method altura() = 1
    method estaViva() = estaViva
    method estaViva(trueOFalse){
        estaViva = trueOFalse
    }*/
    /*
    method defensa() = defensa
    method defensa(nuevaDefensa){
        if (nuevaDefensa > 0){
            self.estaViva(true)
        } else {
            self.estaViva(false)
        }
    }*/
}

object tipa {
    //esElemento - esArbol
    //const defensa = 100
    var altura = 1
    method recibirAtaque(potencia) {}//No afecta el daño
    method valorOtorgado() = altura * 2
    
    method recibirTrabajo() {
        altura = altura + 1
    }
    /*
    method defensa() = defensa
    method defensa(nuevaDefensa){
        //No afecta el daño
    }*/
}

//En el video crean el siguiente elemento para tener referencia para el null

object ningunElemento {
    method altura() = 0
    method recibirAtaque(potencia) {}
}