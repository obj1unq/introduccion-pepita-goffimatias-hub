object pepita {
  var energia = 100

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
}

object alpiste {
  const calorias = 25

  method getCalorias() {
    return calorias
  }
}

object manzana {
  var madurez = 0

  method setMadurez(_madurez) {
    madurez = _madurez
  }

  method podrida() {
    return madurez === 3
  }

  method getCalorias() {
    if (self.podrida()) {
      return 0
    } else {
      return madurez * 20
    }
  }
}



