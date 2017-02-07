# binario

El objetivo de este ejercicio es enseñar que la programación es una interpretación
de texto llamado lenguaje, que existen los lenguajes de bajo nivel y
alto nivel, dependiendo del nivel de abstracción de los comandos
del lenguaje en cuestión.

Los lenguajes de bajo nivel son el machine code (código máquina) y el assembly
(asamblea). Estos son los lenguajes más cercanos a las máquinas y son los más
complejos de leer por los personas.

Los lenguajes de bajo nivel interactúan con el código binario, el código binario
es un sistema numérico, por el cual se puede representar numeros, letras y signos
solamente combinando 2 digitos el 0 y el 1.


## Historia

El sistema binario actual fue inventado en 1679 por el erudito alemán y filósofo
Gottfried Leibniz. Quién se basó en el sistema de secuencias Yijing llamado
hexagramas (del Iching 0-64) cuenta la leyenda que este emperador encontró los
hexagramas escritos en la caparazón de una tortuga por el año 3000 A.C.

Este concepto de sistema numérico que utiliza sólo 2 digitos, más el concepto de
Algebra buleana (cierto/falso) fue llevado a la electrónica en 1937 por el
matemático, ingeniero y criptografo estadounidense Claude Shannon. Él demostró
que las aplicacion del algebra booleana podría construir cualquier relación
lógico-numérica. Que representando el 1 con un voltaje alto y el 0 con
un voltaje bajo, electrónicamente es posible utilizar el sistema numérico binario
con aparatos electrónicos y ésta sería la base de la creación de microcircuitos.

Esto quiere decir que se utiliza el sistema numerico binario por que es el
sistema numerico que mejor se adecua para "escribir" información con electricidad
por medio de la regulación del voltaje.


## Cómo leer el codigo binario (8 bits)

Podemos leer código binario de 8 bits con estas 3 simples reglas:

1.- Un carácter está formado siempre por 8 dígitos (8 bits)

2.- Los 3 primeros dígitos nos dirán si se trata de un número, una letra mayúscula
o una letra minúscula:

  000 = número
  010 = MAYÚSCULA
  011 = minúscula

3.- Los últimos números se leen de derecha a izquierda y se avanzan corriendo el
1 hacia la izquierda, rellenando de derecha a izquierda y luego avanzando un espacio
hacia la izquierda si no hay ceros entremedio:

  00000001 => 1   //comienza en 1
  00000010 => 2   //avanza una posición a la izquierda
  00000011 => 3   //rellena el espacio desde la derecha
  00000100 => 4   //no quedan ceros a la derecha avanzo uno hacia la izquierda y completo con ceros
  00000101 => 5   //comienzo a rellenar desde la derecha con unos
  00000110 => 6   //avanzo uno a la derecha
  00000111 => 7   //termino de rellenar con unos volviendo a patir desde la derecha
  00001000 => 8   // no quedan ceros a la derecha avanzo uno hacia la izquierda y completo con ceros
  .
  .
  .

  Lo mismo con letras MAYÚSUCULAS es igual pero cambian la clave de los 3
  primeros dígitos:

  01000001 => A
  01000010 => B
  01000011 => C
  01000100 => D
  01000101 => E
  01000111 => F
  01001000 => G
  .
  .
  .

  Con minúsculas es igual pero comienza con 011...


## Primera Actividad: Escribir su nombre con lapiz y papel (o en editor de texto)

Todos deben escribir su nombre en una columna de codigo binario, ej:

01000100
01100001
01101110
01101001
01100101
01101100
