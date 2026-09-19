object nave {

    const pasajeros = []

    method subirPasajero(pasajero) {
        pasajeros.add(pasajero)
    }

    method bajarPasajero(pasajero) {
        pasajeros.remove(pasajero)
    }

    method chocar() {
        pasajeros.forEach({p => p.saltar()})
        pasajeros.clear()
    }

    method pasajerosMenosElElegido() {
        return pasajeros.filter({p => !p.esElElegido()})
    }

    method acelerar() {
        pasajeros.forEach({self.pasajerosMenosElElegido().saltar()})
    }

    method cantidadDePasajeros() {
        return pasajeros.size()
    }

    method pasajeroConMayorVitalidad() {
        return pasajeros.max({p => p.nivelDeVitalidad()})
    }

    method pasajeroConMenorVitalidad() {
        return pasajeros.min({p => p.nivelDeVitalidad()})
    }

    method estaEquilibrada() {
        return self.pasajeroConMayorVitalidad().nivelDeVitalidad() <=  self.pasajeroConMenorVitalidad() * 2
    }

    method estaElElegido() {
        return pasajeros.any({p => p.esElElegido()})
    }

}

object neo {

    var energia = 100

    method esElElegido() {
        return true
    }

    method saltar() {
        energia = energia / 2
    }

    method nivelDeVitalidad() {
        return energia * 0.1
    }

}

object morfeo {

    var vitalidad = 8
    var estaDescansado = true

    method esElElegido() {
        return false
    }

    method saltar() {
        estaDescansado = !estaDescansado
        vitalidad = (vitalidad-1).max(0)
    }

    method nivelDeVitalidad() {
        return vitalidad
    }

}

object trinity {

    method esElElegido() {
        return false
    }

    method nivelDeVitalidad() {
        return 0
    }

    method saltar() {

    }

}