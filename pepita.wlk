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

/*
Ejercicio 6: Reflexión sobre los conceptos
Teniendo en cuenta tu solución del problema, respondé las preguntas siguientes:

¿Qué métodos son consultas y cuáles son órdenes?
 - consultas: Todos aquellos metodos que tienen return como cansada(), cenas(),
    podrida(), más los getter getCalorias() y getEnergia().

 - ordenes: Aquellos que modifican el estado, como volar(), alimentar(). setAve(), 
    comer(), descansar() y entrenador().

En cuanto a cada situación que manifiesta polimorfismo:

a. ¿Cuál es el mensaje polimórfico y quién lo envía?

 - El mensaje polimórfico es comer(alimento) y lo envía rebeca a través de ave. 
  Como ave puede referenciar a distintas aves, el mismo mensaje 
  puede ser recibido por pepita o pepon.

- El otro mensaje polimórfico es getCalorias(). Lo envía el ave que está comiendo, 
  es decir, Pepita o Pepón, a través del parámetro alimento.

b. Considerando los objetos que entienden el mensaje polimórfico 
¿Qué nombre le pondrías al tipo polimórfico?

- Al primer tipo polimórfico le pondría Ave, ya que representa a los objetos 
  que pueden comportarse como aves y responder al mensaje comer.

- Al segundo ALmento Porque tanto el alpiste como la manzana son alimentos 
  que saben responder a getCalorias().

d. ¿Qué objetos implementan ese tipo?
- Los objetos que implementan ese tipo son pepita y pepon, en el primer caso, 
  alpiste y manzana en el segundo.
*/

