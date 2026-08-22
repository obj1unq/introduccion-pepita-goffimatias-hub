object pepita {
  // Ejercicio1: Comportamiento básico de Pepita
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

  method comer(alpiste) {
    energia = energia + alpiste.getCalorias()
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

  method setMadurez(grado) {
    madurez = grado
  }

  method podrida() {
    return madurez === 3
  }

  method getCalorias(grado) {
    self.setMadurez(grado)
    
    if (grado >= 3) {
      return 0
    } else {
      return madurez * 20
    } 
  }
}

/*
Ejercicio 3: Dieta variada
Ahora se necesita alimentar a Pepita con una manzana que también le aporta energía 
en función de su madurez, que es un valor que varía entre 1 y 3.

Así, el aporte calórico de la manzana será de 20 calorías multiplicado por el grado de madurez
de la misma. Sin embargo, si la manzana llega al grado 3 significa que está podrida
 y su aporte calórico pasa a ser nulo.

Tareas:

Definir el objeto manzana siguiendo estos requerimientos.
Verificar que pepita pueda comer tanto alpiste como manzanas,
aumentando su energía de manera diferente en cada caso.

Definir escenarios de prueba para combinar órdenes de comer y volar, 
validando los diferentes estadíos de la manzana.
*/

