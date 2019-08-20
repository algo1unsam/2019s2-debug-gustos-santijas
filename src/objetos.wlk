/* colores */
object rojo { method esFuerte() { return true } }
object verde { method esFuerte() { return true } }
object celeste { method esFuerte() { return false } } 
object pardo { method esFuerte() { return false } }
object naranja { method esFuerte(){return true}}
/* materiales */
object cobre { method brilla() { return true } method conduce(){ return true}}
object vidrio { method brilla() { return true } method conduce(){ return false}}
object lino { method brilla() { return false } method conduce(){ return false}}
object madera { method brilla() { return false } method conduce(){ return false}}
object cuero { method brilla() { return false } method conduce(){ return false}}
object plomo { 
	var _estado = natural
	method brilla(){ return _estado.brilla()} 
	method conduce() { return _estado.conduce()}
	method setEstado(estado){
		_estado = estado 
	} 
}
/* objetos */
object remera {
	method color() { return rojo }
	method material() { return lino }
	method peso() { return 800 }
}

object pelota {
	method color() { return pardo }
	method material() { return cuero }
	method peso() { return 1300 }
}

object biblioteca {
	method color() { return verde }
	method material() { return madera }
	method peso() { return 8000 }
}

object munieco {
	var _peso 
	var _color = celeste
	method color() { return _color }
	method material() { return vidrio }
	method peso() { return _peso }
	method setPeso(peso) { _peso = peso }
}

object placa {
	var _color
	var _peso 
	
	method color() { return _color }
	method setColor(color) { _color = color }
	method material() { return cobre }
	method peso() { return _peso }
	method setPeso(peso) { _peso = peso }
}

object arito {
	method color(){ return celeste }
	method material() { return cobre }
	method peso (){ return 180}
	
}

object banquito{
	var _color = naranja
	method color(){ return _color}
	method setColor(color) { _color = color }
	method material(){ return madera }
	method peso(){ return 1700}
}

object cajita{
	var _material
	var _objeto
	
	method color(){ return rojo }
	method material() { return _material}
	method setMaterial(material){ _material = material }
	method dentroObjeto() { return _objeto}
	method setDentroObjeto(objeto) { _objeto = objeto }
	method peso(){ return 400 + _objeto.peso()}
}


//ESTADOS

object natural {
	method brilla(){ return true}
	method conduce(){ return false}
}

object cromado {
	method brilla(){ return true}
	method conduce(){ return true}
}

object oxidado {
	method brilla(){ return false}
	method conduce(){ return false}
}