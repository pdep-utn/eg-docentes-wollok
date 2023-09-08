object nico {

	method cuantoCobra(materia) = materia.length() * 50

	method leCaeBien(alumno) = alumno.estudia("fisica")

}

object carlono {

	var valorPorMateria = 300

	method cambiarValorPorMateria(nuevoValor) {
		valorPorMateria = nuevoValor
	}

	method cuantoCobra(materia) = valorPorMateria

	method leCaeBien(alumno) = true

}

object camila {

	var estaDeHumor = true

	method encularse() {
		estaDeHumor = false
	}

	method desencularse() {
		estaDeHumor = true
	}

	method cuantoCobra(materia) = if (estaDeHumor) 250 else 700

	method leCaeBien(alumno) = alumno.estudiaMasMateriasQue(3)

}

object lucas {

	const materiasQueEstudia = [ "historia", "matematicas", "fisica" ]
	var plata = 400
	var profePreferido = carlono

	method plata() = plata

	method agregarPlata(monto) {
		plata = plata + monto
	}

	method tieneMasPlataQue(cantidadDeseada) = plata > cantidadDeseada

	method materiasQueEstudia() = materiasQueEstudia

	method agregarMateriaQeuEstudia(materia) {
		materiasQueEstudia.add(materia)
	}

	method estudiaMasMateriasQue(cantidadDeMaterias) = materiasQueEstudia.size() > cantidadDeMaterias

	method cambiarProfePreferido(nuevoProfePreferido) {
		profePreferido = nuevoProfePreferido
	}

	method estaFeliz() = profePreferido.cuantoCobra("geografía") <= plata

	method estudia(materia) = materiasQueEstudia.contains(materia)

}

