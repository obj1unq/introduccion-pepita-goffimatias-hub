object pepita {
  var energia = 100
  var entrenador = null

  method getEnergia() {
    return energia
  }
  
  method volar(distancia) {
    energia = energia - 10 - (distancia / 10)
  }

  method descansar() {
    energia = energia + 10
  }

  method cansada() {
    return energia < 30
  }

  method comer(alimento) {
    energia = energia + alimento.getCalorias()
  }

  method entrenador(_entrenador) {
    entrenador = _entrenador
  }
}

object alpiste {
  const calorias = 25

  method getCalorias() {
    return calorias
  }
}

object manzana {
  const baseCalorica = 20
  var madurez = 1

  method madurar() {
    madurez = madurez + 1
  }

  method podrida() {
    return madurez >= 3
  }

  method getCalorias() {
    if (self.podrida()) {
      return 0
    } else {
      return madurez * baseCalorica
    }
  }
}

object pepon {
  const gastoBase = 20
  var energia = 30
  var entrenador = null

  method getEnergia() {
    return energia
  }

  method comer(alimento) {
    energia = energia + (alimento.getCalorias() / 2)
  }

  method volar(distancia) {
    energia = energia - gastoBase - (distancia * 0.4788)
  }
  
  method cansada() {
    return energia < 34
  }

  method entrenador(_entrenador) {
    entrenador = _entrenador
  }
}
object rebeca {
 var ave = pepita
 var alimento = alpiste
 var cenas = 0
 
 method setAve(_ave) {
   ave = _ave
   _ave.entrenador(self)
   cenas = 0
 }

 method alimentar(_alimento) {
    alimento = _alimento
    ave.comer(alimento)
    cenas = cenas + 1
 }

 method cenas() {
  return cenas
 }
}


