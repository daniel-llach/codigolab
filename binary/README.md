# binario el lenguaje de las máquinas

El objetivo de este ejercicio es enseñar que la programación es una interpretación
de un lenguaje, que existen los lenguajes de bajo nivel y
alto nivel para finalmente comprender cómo se puede leer y escribir en el lenguaje
más básico que entienden las maquinas; el codigo binary.

Los lenguajes de bajo nivel son el machine code (código máquina) y el assembly
(asamblea). Estos son los lenguajes más cercanos a las máquinas y son los más
complejos de leer por los personas.

Los lenguajes de bajo nivel interactúan con el código binario, el código binario
es un sistema numérico, por el cual se puede representar numeros, letras y signos
solamente combinando 2 digitos el 0 y el 1.


## Historia

El sistema binario actual fue inventado en 1679 por el erudito alemán y filósofo
Gottfried Leibniz. Quién se basó en el sistema de secuencias Yijing llamado
hexagramas (del Iching 0-64 .. ying/yang) cuenta la leyenda que el emperador Zhou encontró los
hexagramas escritos en la caparazón de una tortuga por el año 3000 A.C.

Este concepto de sistema numérico que utiliza sólo 2 digitos, más el concepto de
Algebra buleana (cierto/falso) fue llevado a la electrónica en 1937 por el
matemático, ingeniero y criptografo estadounidense Claude Shannon. Él demostró
que las aplicacion del algebra booleana podría construir cualquier relación
lógico-numérica. Que representando el 1 con un voltaje alto y el 0 con
un voltaje bajo, asi electrónicamente es posible utilizar el sistema numérico binario
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

## Desafío: crear un programa que convierta un nombre en código binario

Para esto utilizaremos un lenguaje de alto nivel llamado processing, inventado en
el año 2001 por Ben Fry y Casey Reas en un grupo del MIT (explicar que es el MIT)
llamado Aesthetics and Computation Group (grupo de estética y computación). Este
lenguaje fue creado para ayudar a los artistas a interactuar con dispositivos
electrónicos como computadores, celulares, televisores, proyectores, radios,
lavadoras, y un largo etc.

Vamos a bajar el interprete de processing e instalarlo en sus computadores

Luego enseñar la interfaz del interprete (explicar que es interfaz)

Interfaz: interface = superficie de contacto. En informática se utiliza para nombrar
la conexión funcional entre dos sistemas, dispositivos y componentes de cualquier
tipo. Permitiendo asi la comunicación y el intercambio de información. Ej: interfaz
hombre máquina o maquina maquina. (actividad: construyamos una interfaz con nuestros
cuerpos, entre Todos haremos una maquina, brazos de alguien seran palancas,
manos y o cabezas serán botones y harán sonidos y asi... luego un estudiante
interactua con esta maquina)

Continuar explicando la interfaz del IDE (Integrate Drive Electronics, entorno de
desarrollo integrado)... aplicación que facilita el crear aplicaciones, es decir
una aplicación que ayuda a escribir codigo de un determinado lenguaje por medio
de su interfaz.


Actividad: Mi primer programa ... Luego haremos un hello world. Explicar qué es
hello world... hola mundo, es una tradición dentro del mundo de la programación
y se llama así al primer ejercicio que se realiza cuando uno comienza a aprender
un nuevo lenguaje de programazión. Y el ejercicio consiste en hacer un pequeño
programa que escriba "hello world" para así consolidar el entendimiento de lograr
la compilación y ejecución correcta de un programa en dicho lenguaje. (en
lenguajes donde se interactua con microcircuitos (ej: arduino) el hola mundo se
reemplaza con el encender un led de manera intermitente)

Ejemplos de hola mundo en distintos lenguajes de programación:
https://helloworldcollection.github.io/

Hacemos hola mundo basico en processing:

´´´
println("hola mundo!");
´´´

Explicar estructura esencial del codigo de processing (setup() y draw())... aquí
hay que explicar conceptos de setup (setting) y de loop (Actividad: crear un loop
musical con cosas, objetos, silvidos, entre todos .. basarse en una partitura simple
de ejemplo 4/4).  

***** tirar idea de hacer otro desafío despues con sonido, explicar un poco
que el sonido se puede lograr con un componente que vibra a entre un determinado
rango de hertz por milisegundos y para lograr eso hay que entender como se generarel
sonido y como poder programar esa variable con arduino. ******

Primero vamos a crear un loop de un log que diga "hola mundo"... vamos a explicar
el concepto de log. Y vamos a hacer un log en setup()

´´´
println("hola mundo!");
´´´

Excelente han hecho su primer programa!

Hay que fijarse que aparece una sola vez, luego vamos a colocar el log en draw()
y vemos que aparece infinitamente por que draw() ejecuta lo que hay en su interior
en un loop infinito.

Setear ventana:

Luego vemos que aparece una pantalla chica... y vamos a setear sus dimensiones y su
color en setup con el comando size() con numeros y luego utilizando la variable
displayWidth y displayHeight.

Luego vamos a cambiar el color del fondo con background(), pero primero hay que
conocer un poco más acerca del color en el mundo de la programación !!!!

sistemas o modelos de color:

RGB (sintesis aditiva / luz) red, green and blue
CMYK (sintesis substractiva / pigmento) cyan, magenta, yellow and black
HSB (percepción humana) / hue, saturation and bright

Vamos a usar el sistema aditivo... ACTIVIDAD: focos de luces red, green y blue
probamos las distintas combinaciones.

En processing se utiliza el color mediante el comando color() y usualmente se
define en una variable de tipo color. El comando color acepta el modelo de color RGB por
defecto (aunque se puede configurar para utilizar otros modelos de colores).

El comando color() permite tres numeros del 0 al 255 cada uno y cada numero
representa, en orden de izquierda a derecha, el rojo, el verde y el azul.
Hay que recordar que es mezcla aditiva / luz). por ejemplo:

´´´
color c = color(255, 204, 0);
´´´

Ahora vamos a usar este color para cambiar el color del fondo dentro de setup():

´´´
void setup(){
  size(displayWidth, displayHeight);
  color c = color(255, 204, 0);
  background(c);
}
´´´
