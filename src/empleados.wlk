object gimenez {
	var sueldo = 15000
	var deuda = 0
	var dinero = 0
	
	method sueldo() { return 15000 }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo() { 
		dinero += self.sueldo() 	//agrega el sueldo a "dinero"
		self.pagarDeuda()
		}
	method gastar(cuanto) { 
		if(cuanto < dinero) { dinero -= cuanto }
		if(cuanto > dinero) { deuda += cuanto }
		self.pagarDeuda()
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
	var sueldo = 0
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	method venderEmpanada() { cantidadEmpanadasVendidas += 1 }
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo() { sueldo += self.sueldo() }
	method totalCobrado() { return sueldo }
}

object galvan {
	var dinero = 300000
	
	method dinero() { return dinero }
	method pagarA(empleado) {
    dinero -= empleado.sueldo()
    empleado.cobrarSueldo()
	}
}
