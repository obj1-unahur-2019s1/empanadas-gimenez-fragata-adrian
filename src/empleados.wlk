object galvan {
	var sueldo = 15000
	var deuda = 0
	var dinero = 0
	
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo() { 
		dinero += self.sueldo() 	//agrega el sueldo a "dinero"
		self.pagarDeuda()
		}
	method gastar(cuanto) { 
		if(cuanto < dinero) { dinero -= cuanto } //si lo que gasto es menos que mi "dinero" se lo resta a "dinero"
		if(cuanto > dinero) { deuda += cuanto }  //si lo que gasto es mas que mi "dinero" aumenta mi "deuda"
	}
	method pagarDeuda() {
		if(deuda < dinero) { 		//Si la deuda es menor que su dinero 
			dinero -= deuda 		//resta al dinero la deuda
			deuda = 0 				//variable "deuda" pasa a cero
		}
		if(deuda > dinero) { 		 //si la deuda es mayor que su dinero
			deuda -= dinero 		//resta el dinero a la deuda
			dinero = 0 				//variable "dinero" pasa a cero
		}
	}
	method totalDeuda() { return deuda }
	method totalDinero() { return dinero }
}

object baigorria {
	var dinero = 0
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	method venderEmpanada() { cantidadEmpanadasVendidas += 1 }
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo() { dinero += self.sueldo() }
	method totalCobrado() { return dinero }
}

object gimenez {
	var dinero = 300000
	
	method dinero() { return dinero }
	method pagarA(empleado) {
    dinero -= empleado.sueldo()
    empleado.cobrarSueldo()
    return dinero
	}
}
