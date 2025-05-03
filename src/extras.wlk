import pepita.*
import wollok.game.*

object nido {

	// Completar
}

object silvestre {
	var property position =  game.at(3,0)
	method image() = "silvestre.png"

	method moverseComoPepita(){
		if(self.position().x() < pepita.position().x()) {
			self.position(self.position().right(1).max(game.width()-1))
		} else if (self.position().x() > pepita.position().x()){
			if (self.position().x() > 3){
            	self.position(self.position().left(1))
        	}
		}
	} 
}

