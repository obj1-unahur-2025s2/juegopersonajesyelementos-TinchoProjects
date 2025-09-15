import armas.*
import elementos.*
object luisa {
    //esJugadora
    var personajeActivo = false
    method personajeActivo() = personajeActivo
    method asignarPersonaje(nuevoPersonaje){
        personajeActivo = nuevoPersonaje
    }
    method aparece(elemento){
        self.personajeActivo().encontrar(elemento)
    }
}

object floki {
    //esPersonajeGuerrero
    var arma = ballesta
    method arma() = arma
    method arma(nuevaArma){
        arma = nuevaArma
    }
    method encontrar(elemento) {
        if (arma.estaCargada()){
            elemento.recibirAtaque(arma.potencia())
            arma.Usar()
        }
    /*
    method encontrar(elemento){
        elemento.defensa(elemento.defensa() - arma.daño())
    }*/
    }
}

object mario {
    //esPersonajeTrabajador
    //var arma = jabalina
    var valorRecolectado = 0
    //var alturaUltimoElemento =  0
    var ultimoElemento = ningunElemento
    //var valor = 10
    //method arma() = arma
    /*method arma(nuevaArma){
        arma = nuevaArma
    }*/
    method encontrar(elemento) {
        elemento.recibirTrabajo()
        valorRecolectado = valorRecolectado + elemento.valorOtorgado()
    //    alturaUltimoElemento = elemento.altura()
        ultimoElemento = elemento
    /*method encontrar(elemento){
        elemento.defensa(elemento.defensa() - arma.daño())
    }*/
    /*method recibirValor(){
        valor = valor + 
    }*/
    }
    method estaFeliz() {
        return valorRecolectado > 50 || ultimoElemento.altura() >= 10
    }
}