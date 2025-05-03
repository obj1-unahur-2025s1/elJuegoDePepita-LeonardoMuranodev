import extras.*
import wollok.game.*

object pepita {

	var property energia = 100
	var property position = game.origin()

	method image() {
		return if (self.estaEnElNido()){
			return "pepita-grande.png"
		} 
		else if(self.esAtrapadaPorSilvestre()){
			"pepita-gris.png"
		}
		else {
			"pepita.png"
		}
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method vola(kms) {
		energia = energia - kms * 9
	}

	method irA(nuevaPosicion) {
		self.vola(position.distance(nuevaPosicion))
		position = nuevaPosicion
	}

	method estaCansada() {
		return energia <= 0
	}

	method esAtrapadaPorSilvestre() {
    	return self.position() == silvestre.position()
	}

	method estaEnElNido() {
		
		return false // Reemplazar por el código correcto
	}

}

