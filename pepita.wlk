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

  /*
  Ejercicio 2: Alimentar a pepita
  Para incorporar energía, pepita come alpiste.
   El alpiste le aporta 25 calorías.

  Tareas:

  Definir el objeto alpiste respetando los requerimientos descriptos.

  Definir el método comer(alpiste) en el objeto pepita.

  Probar el siguiente escenario
  Hacer que pepita vuele 900m, luego de eso está cansada (su energía se redujo a 0).
  Hacer que pepita coma alpiste, sigue estando cansada (energía = 25 calorías).
  Nuevamente hacer que pepita coma alpiste y verificar que 
  ya no está cansada (energía = 50 calorías).
  */

