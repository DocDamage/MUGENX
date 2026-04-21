                 -----=================================-----   
                             ELIAS para M.U.G.E.N.
                 -----=================================-----   
                                     por Inverse
                                     (mr_santana@hotmail.com)
                                     Homepage: http://inverse.mgbr.net

                                Versi¢n 1.0

                    -- FAQ & Strategy Guide in English --


+----------------------------------------------------------------------------+
|                                                                            |
|                             Mini "disclaimer":                             |
|                                                                            |
|  Hola amigo.                                                               |
|  Lo ideal ser¡a que el archivo se bajara desde mi p gina web, que para     |
|  eso la tengo. Ahora, si tienes una p gina dedicada al mundo del Mugen y   |
|  quieres incluir a Mauru (o cualquier otro de mis trabajos) en ella, por   |
|  m¡ perfecto, pero al menos hazme 3 favores, ¨ok?                          |
|                                                                            |
|    1 - No alteres el contenido del zip (ni mucho menos los "readmes").     |
|    2 - Al lado del enlace al menos incluye mi nombre (Inverse) y un        |
|          enlace a mi p gina web. Al fin y al cabo soy yo el que ha         |
|          puesto su esfuerzo para crear/convertir el personaje, as¡ que     |
|          creo que merezco algo de cr‚dito, ¨no?.                           |
|    3 - Env¡ame un e-mail (mr_santana@hotmail.com) cont ndomelo :)          |
|                                                                            |
|  Creo que mis peque¤as condiciones no son mucho pedir y entran dentro de   |
|  lo razonable. El encanto del Mugen est  en que todos pueden participar    |
|  y sobre todo, en compartir el trabajo con los dem s, pero como en todo,   |
|  con un m¡nimo de respeto hacia los dem s y sin pisarnos unos a otros,     |
|  ¨no crees? Perfecto entonces.                                             |
|                                                                            |
+----------------------------------------------------------------------------+


                            =================== 
                              ||  Sumario  ||
                            ===================



 --  Introducci¢n  ----------------------------------------------------------

    + Qui‚n es ELIAS?
    + De d¢nde proviene ELIAS?
    + C¢mo instalar a ELIAS?

 --  Lista de T‚cnicas  -----------------------------------------------------

 --  An lisis de T‚cnicas  --------------------------------------------------

    + Controles B sicos
    + T‚cnicas Defensivas
    + T‚cnicas Ofensivas
    + Ataques Adicionales
    + T‚cnicas Especiales
    + S£per T‚cnicas

 --  Combos  ----------------------------------------------------------------

 --  Cr‚ditos  --------------------------------------------------------------






                          ========================
                            ||  Introducci¢n  ||
                          ========================




      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============
                                                          Qui‚n es ELIAS? ||
      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============


    Elias Patrick pertenece a una familia de clase alta, que acab¢ heci‚ndose
  sacerdote. Fue acusado de un crimen que no cometi¢ y fue a la c rcel donde
  aprendi¢ las artes del exorcismo, adem s de ponerse cuadrado a base de
  entrenamiento. Cuando sali¢ de all¡ se interes¢ en hacer uso de sus
  habilidades para el bien expulsando esp¡titus malignos de las personas. Sus
  primeros objetivos fueron dos j¢venes hermanos japoneses llamados Oni y
  Cassandra. Hizo todo lo que pudo por ellos, pero un d¡a escaparon de su
  albergue por razones desconocidas. Los busc¢ pero no pudo encontrarlos.
  Despu‚s de aqu‚llo, sus servicios fueron requeridos para tratar a una
  ni¤a peque¤a inglesa llamada Alice Carroll, que mostraba indicios de
  posesi¢n. Su estado empeor¢ y fue transferida a America, de donde acab¢
  escap ndose. Completamente decidido a cumplir con su deber esta vez, Elias
  sale en su b£squeda para ayudarla.




      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============
                                                 De d¢nde proviene ELIAS? ||
      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============


    Elias Patrick es un personaje del juego Rage Of The Dragons de Evoga
  Entertainment y Noise Factory. El juego en cuanto a historia est  muy
  inspirado en el universo de Double Dragon, y es considerado por algunos
  como la secuela del juego Double Dragon para la Neo-Geo (pero no lo es).
  ROTD intent¢ traer un poco de aire fresco al mundo de la lucha para la
  Neo-Geo. Aunque el sistema de juego era similar al de los KOF, ROTD est 
  estructurado en combates dos contra dos: los equipos est n compuestos de
  dos personajes, que para ganar deben derrotar a la pareja contrincante.
  Pero al contrario que en KOF, los equipos pueden cambiar de personaje en
  cualquier momento (con algunas restricciones), e incluso pueden ejecutar
  algunos s£pers en pareja. Esto a¤ad¡a un cierto componente estrat‚gico a
  las batallas. El juego tambi‚n pose¡a un sistema de combos que, aunque
  aun siendo un poco simple, permit¡a algunos combos realmente largos y
  espectaculares. En esencia, ROTD pretend¡a destacar como juego de lucha por
  s¡ mismo en vez de ser catalogado como copia del KOF, consigui‚ndolo.

    ROTD por supuesto tambi‚n ten¡a sus fallos, pero en general es un
  juegazo, especialmente siendo el primer juego de lucha de Noise Factory
  (los primeros juegos de lucha de SNK tampoco eran tan buenos).




      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============
                                                   C¢mo instalar a ELIAS? ||
      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============


    1. Descomprime el archivo Elias.zip en el directorio mugen/chars/Elias .
    2. Edita el archivo mugen/data/select.cfg y, debajo de donde pone
       "[Characters]" (donde seguramente tendr s un mont¢n de nombres de
       personajes), a¤ade:

        kfm, stages/kfm.def            \
        sho, stages/shobg.def          |- Otros personajes en el select.def 
        daolong, stages/daobg.def      /

        Elias                          <-- A¤ade esta l¡nea

    ­Y ya est !

    Muy bien, con esto ya tenemos introducci¢n para rato, as¡ que vamos a lo
  que realmente interesa: el sumario de t‚cnicas y su correspondiente
  an lisis :).




                        =============================
                          ||  Lista de T‚cnicas  ||
                        =============================


Notaci¢n:
---------
                        MUGEN              NEO-GEO
      U
  UB  ú  UF          Bot¢n X: LP              A
     \|/             Bot¢n Y: LK              B
 B ú==O==ú F         Bot¢n A: SP              C
     /|\             Bot¢n B: SK              D
  DB  ú  DF          
      D

 U = Up = Arriba                LP = Light Punch  = Pu¤o D‚bil
 D = Down = Abajo               LK = Light Kick   = Patada D‚bil
 B = Back = Atr s               SP = Strong Punch = Pu¤o Fuerte
 F = Forward = Adelante         SK = Strong Kick  = Patada Fuerte
                                P = Cualquier Pu¤o
 (mirando hacia la derecha)     K = Cualquier Patada


Sumario de T‚cnicas:
--------------------

(= Controles B sicos =)

  Correr                  Pulsa suavemente F dos veces, y mantenlo pulsado
  Retirarse               Pulsa suavemente B dos veces

  Salto Normal            UB, U, UF
  H¡per Salto             D, y luego UB, U, UF, o Salta mientras corres
  Salto Corto             Pulsa suavemente UB, U, UF
  H¡per Salto Corto       D, luego pulsa suavemente UB, U, UF,
                          o da un Salto Corto mientras corres

(= T‚cnicas Defensivas =)

  Esquivar                LP + LK
  Rodas Adelante/Atr s    F/B + LP + LK
  Contraataque            B + SP + SK, mientras te cubres de un ataque
                          (requiere 1 Barra de Poder)

(= T‚cnicas Ofensivas =)

  Lanzar/Proyecci¢n       F/B + SP, cerca del oponente
  First Impact            SP + SK


(= Ataques Adicionales =)

  Pu¤o Vertical           F + LP
  Doble Patada Baja       F + LK


(= T‚cnicas Especiales =)

  Sinful                  F, D, DF + P, cerca del oponente
  Magnus                  D, B + P
  Hell or Heaven          F, D, B + K
  Holy Flare              D, F + P


(= S£per T‚cnicas =)

  Maximum Desiderium      F, D, B, F + P




                      ================================
                        ||  An lisis de T‚cnicas  ||
                      ================================




      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============
                                                        Controles B sicos ||
      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============


    Bueno, pulsa F, F para correr y B, B paar retirarte hacia atr s. Eso ya
  lo sab¡as no? :D. Sin embargo hay un detalle importante respecto al
  retirarse, y es que mientras lo hace Elias es completamente invencible de
  principio a fin, tenlo en cuenta.

    Tambi‚n hay cuatro tipos de salto:

    Un Salto Normal es eso mismo, un salto normal :).

    Un H¡per Salto es un salto con m s alcance horizontal, con ellos puedes
  llegar al otro extremo de la pantalla de un salto. Muy £tiles para
  para acercarse al enemigo r pidamente desde lejos, y tambi‚n para hacer
  una escapada r pida.

    Un Salto Corto es, como el nombre indica, un salto corto :). Si has
  jugado al KOF alguna vez, ya sabes c¢mo funcionan: son muy eficaces para
  empezar un asalto. Tambi‚n son un poco dif¡ciles de realizar.

    Un H¡per Salto Corto es una combinaci¢n de los dos tipos de salto
  mencionados arriba: un salto corto con m s alcance horizontal. Es ideal
  para empezar ataques sorpresa desde media distancia. Tambi‚n es el m s
  dif¡cil de realizar. Pero en combates a dobles, el esfuerzo compensa :).



      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============
                                                      T‚cnicas Defensivas ||
      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============


** Esquivar                                                         LP + LK **

    Elias se retira un poco en direcci¢n al escenario, efectivamente
  esquivando cualquier ataque. Pero hay una pega, mientras esquivas el
  contrario puede agarrarte en cualquier momento, as¡ que no abuses de ‚l.

    Usa un Esquive para evitar proyectiles y contra oponentes predecibles.
  Esquivar cerca del enemigo es una apuesta arriesgada, ya que est s
  completamente inm¢vil y susceptible de ser lanzado.


** Rodar Adelante/Atr s                                       F/B + LP + LK **

    Rodar es b sicamente un Esquive en movimiento. Elias rodar  por el suelo
  una corta distancia evitando cualquier ataque (excepto agarres), pasando
  a trav‚s del enemigo. Pero, al contrario que la Esquiva, al Rodar hay un
  muy corto tiempo de vulnerabilidad al final.

    Rodar es muy £til para alcanzar una posici¢n ventajosa en un combate,
  permiti‚ndonos actuar de forma agresiva. Tan s¢lo evita ser demasiado
  predecible (contra oponentes humanos, se entiende).


** Contraataque                B + SP + SK, mientras te cubres de un ataque
                                                   ( 1 Power Bar required ) **

    Elias contrarresta el ataque enemigo con dos potentes pu¤etazos, enviando
  al oponente al otro lado de la pantalla si el segundo conecta. El primer
  pu¤etazo no tiene mucho alcance pero es invencible, mientras que el segundo
  tiene mucho alcance pero es vulnerable.

    El Contraataque se vuelve muy £til cuando estamos bajo presi¢n. Ideal
  contra ataques que hacen mucho da¤o al cubrirse o para librarnos del
  enemigo si estamos atrapados en una esquina. Por otro lado, el da¤o causado
  es m¡nimo, ya que ‚ste es un ataque puramente defensivo (¨?), y cuesta 1
  Barra de Poder, lo que no deber¡a ser un gran problema ya que El¡as gana
  Poder bastante r pido.



      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============
                                                       T‚cnicas Ofensivas ||
      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============


** Lanzar/Proyecci¢n                           F/B + SP, cerca del oponente **

    Elias agarra al oponente y le propina un fuerte pu¤etazo en la cara,
  mand ndole lejos por el impacto. La direcci¢n pulsada determina en qu‚
  direcci¢n saldr  despedido el contrario tras ser golpeado. Utiliza esto
  en tu provecho, enviando al enemigo a la esquina siempre que puedas por
  ejemplo.


** First Impact                                                     SP + SK **

    La t‚cnica de ataque m s caracter¡stica del Rage Of The Dragons. Elias
  se desliza hacia adelante , atacando con un gancho. Si conecta, el enemigo
  comenzar  a flotar lentamente, y podr s comenzar un combo FI. Aparecer n
  cinco letras debajo de Elias, representando una serie de botones (en
  notaci¢n Neo-Geo, A es pu¤o d‚bil, B es patada d‚bil, y as¡ sucesivamente).
  Pulsa los botones en secuencia y El¡as propinar  al oponente un golpe tras
  otro. El £ltimo golpe derribar  al contrario, pero lo mejor es que puedes
  continuar el combo con m s ataques.

    Hay dos tipos de combos FI: en Tierra y A‚reos. Mant‚n pulsado Arriba
  tras conectar el iniciador de FI para intentar un combo FI A‚reo, de lo
  contrario El¡as ir  a por un combo FI en Tierra. Cada uno tiene una
  secuencia prefijada de botones, que te aprender s en nada. Aunque ambos
  tipos causan el mismo da¤o (no demasiado), son diferentes. Un combo FI en
  Tierra gana menos Poder, pero puedes cancelar el £ltimo golpe con cualquier
  T‚cnica Especial o S£per T‚cnica (algunas s¢lo conectar n en ciertas
  situaciones, o no conectar n nunca). Los combos FI A‚reos, por contra,
  ganan el doble de Poder pero el £ltimo golpe no es cancelable (no para
  El¡as). Sin embargo El¡as aterriza antes que el contrario, con el tiempo
  justo para un Super. Recu‚rdalo.

    Los combos FI son excelentes para castigar errores del enemigo, pero hay
  que cerciorarse de que el golpe va a entrar o sufrir s las consecuencias.
  El iniciador de FI no tiene mucho alcance (aunque tiene m s del que parece)
  y tiene un retardo considerable antes y despu‚s de golpear. No puedes
  combinar ning£n golpe con el iniciador de FI, excepto un ataque Fuerte en
  salto, pero para ello debe golpear *muy* bajo.



      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============
                                                      Ataques Adicionales ||
      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============


** Pu¤o Vertical                                                     F + LP **

    Elias toma un poco de impulso y descarga un fuerte pu¤etazo hacia abajo.
  Este golpe es un verhead, y debe ser cubierto por arriba. Es muy lento como
  para entrar en combo, pero es cancelable, as¡ que si conecta puedes
  combinarlo con cualquier T‚cnica Especial o S£per T‚cnica. Es arriesgado
  hacerlo contra la m quina, pero es muy £til para enga¤ar a oponentes
  humanos y romper su defensa, especialmente si se alterna con su otro
  ataque Adicional.


** Doble Patada Baja                                                 F + LK **

    Elias se desliza hacia adelante lanzando dos patadas bajas que deben ser
  cubiertas por abajo. Aunque hay un cierto retardo al principio, son lo
  suficientemente r pidas como para poder combinarse desde un ataque Fuerte.
  Adem s es cancelable en cualquiera de las dos patadas, dando mucho tiempo
  para ejecutar cualquier T‚cnica despu‚s. ste es un ataque que utilizar s
  frecuentemente para alargar los combos. Sin embargo es un poco peligroso
  usarlo fuera de un combo, debido al largo retardo tras la segunda patada.



      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============
                                                      T‚cnicas Especiales ||
      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============


** Sinful                                  F, D, DF + P, cerca del oponente **

    Elias intenta agarrar al oponente. Si lo consigue, le levantar  y le
  trabajar  le est¢mago con una serie de pu¤etazos ultrarr pidos. Si no lo
  consigue, se quedar  quieto como un pasmarote por un segundo, siendo muy
  vulnerable. La parte buena es que puede entrar en combo, y que no se puede
  bloquear. Adem s es la £nica T‚cnica Especial que puede combinarse con
  ataques D‚biles, aunque es dif¡cil. La parte mala es que tiene poco
  alcance, aunque m s que el lanzamiento normal. Es un buen ataque en
  general, muy sorpresivo, pero como siempre, no abuses de ‚l. Es un poco
  arriesgado hacerlo en un combo porque puede fallar, y adem s Elias dispone
  de mejores opciones en cuanto a combos.


** Magnus                                                          D, B + P **

    Elias levanta el brazo e invoca una columna de fuego sagrado delante
  suyo, que env¡a al oponente al suelo ardiendo. La versi¢n D‚bil es
  estacionaria, y suficientemente r pida como para entrar en combo desde
  cualquier ataque Fuerte. La versi¢n Fuerte hace que El¡as se mueva una
  cierta distancia hacia delante, pero tarda m s tiempo y s¢lo puede entrar
  en combo desde el primer golpe de la Doble Patada baja. Ambas versiones
  causan el mismo da¤o, y pueden cancelar proyectiles.

    sta es la T‚cnica Especial m s vers til de Elias. Es excelente para
  terminar combos, derriba al contrario y provee cierta protecci¢n delante
  suyo. El poder cancelar proyectiles est  muy bien, aunque suele ser mejor
  Esquivar o Rodar. Otro punto positivo es que aunque Elias sea golpeado, la
  llama alcanzar  igualmente al contrario. Sin embargo no conf¡es demasiado
  en sus capacidades como antia‚reo, ya que su alcance vertical no es tan
  grande como parece.


** Hell or Heaven                                               F, D, B + K **

    Elias coge impulso por un segundo, y echa a correr intentando agarrar al
  oponente. Si tiene ‚xito, levantar  al contrario con una mano ardiendo con
  fuego sagrado, succion ndole algo de vida. El 40% del da¤o causado al
  contrario ser  transferido a El¡as. La versi¢n D‚bil hace que Elias corra
  aproximadamente media pantalla, mientras que la versi¢n Fuerte cubre una
  pantalla entera. Debido a la pausa inicial, s¢lo entrar  en combo desde un
  Pu¤o Vertical, o el primero golpe de: un pu¤o Fuerte de cerca de pie, un
  pu¤o Fuerte agachado, o una Doble Patada Baja.

    ste golpe es clave para sobrevivir, debido por suuesto a sus propiedades
  revitalizadoras. Es mortal en combos, pero dif¡cil de conectar por s¡ solo,
  as¡ que £salo con precauci¢n.


** Holy Flare                                                      D, F + P **

    Elias levanta una mano e invoca un gran anillo de fuego sagrado, para
  acto seguido lanzarlo hacia el oponente. La versi¢n D‚bil lanzar  el
  proyectil a velocidad media, y la Fuerte algo m s r pido. El da¤o es el
  mismo en ambas. Esta t‚cnica es muy lenta como para poder entrar en combo.

    A primera vista este ataque no parece demasiado pr ctico, debido al
  tiempo que tarda hasta que el proyectil es lanzado. La verdad es que no
  ganar s ninguna guerra de proyectiles con esto. Entonces cu l es la
  utilidad de este ataque? Presionar, y mantener al oponente a raya. Al
  contrario que muchos otros proyectiles, el Holy Flare es bastante grande y
  adem s es lanzado a bastante altura, as¡ que a menos que le contrario
  salte muy alto o pueda hacer saltos dobles o en tri ngulo, no tendr  m s
  remedio que bloquearlo, d ndote tiempo a acercarte. Otro aspecto muy
  interesante del Holy Flare es que, aunque no derriba, el oponente tarda
  bastante tiempo en recuperarse. Esto no es de gran utilidad de cerca, pero
  si consigues golpear al enemigo con un Holy Flare desde una cierta
  distancia, el tiempo recuperaci¢n es lo suficientemente largo como para
  permitir combinarlo con otras t‚cnicas m s potentes, concretamente...



      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============
                                                           S£per T‚cnicas ||
      ú  ú  ú ú ú úú úú úúú-úú-úú-ú-ú-ú--ú--ú---=--=--=-=-=-==-==-============


** Maximum Desiderium                                        F, D, B, F + P **

    Elias se concentra, y sale disparado corriendo a gran velocidad
  intentando agarrar al contrario. Si lo consigue, levanta al contrario
  quem ndolo con llamas sagradas primero con una mano, luego con las dos,
  succion ndole vida, para despu‚s lanzarlo lejos violentamente. El 40% de
  el da¤o causado al oponente es transferido a Elias. La versi¢n D‚bil
  iniciar  el Super a Nivel 1, consumiendo 1 Barra de Poder, y la Fuerte
  lo iniciar  a Nivel 2, necesitando 2 Barras de Poder, causando m s da¤o y
  tambi‚n ganando m s vida. Esta t‚cnica *no* puede ser bloqueada en el aire.

    El Maximum Desiderium es similar en concepto al Hell or Heaven, pero
  tienen diferencias muy importantes (aparte del da¤o). A diferencia del HoH,
  el MD no tiene un retardo de inicio, y es muy r pido. sto convierte al MD
  en una t‚cnica enormemente vers til, siendo muy f cil castigar errores
  enemigos. Tambi‚n significa que el MD entra en combo desde cualquier
  ataque cancelable, D‚bil o Fuerte. Y otra consecuencia es que puede usarse
  el Holy Flare como encerrona: lanza un HF a media distancia y, si el
  oponente es golpeado o se cubre en el aire, inicia el MD, y el contrario
  no podr  hacer otra cosa que com‚rselo :).




                             ==================
                               ||  Combos  ||
                             ==================
   Extraido de el "Rage of The Dragons Moves and Combo FAQ" de TerryBogard
              Puedes encontrar este excelente FAQ en GameFAQS


Combos First Impact (FI):
-------------------------

En tierra - A, B, A, C, D  (LP, LK, LP, SP, SK)
A‚reo     - A, C, D, D, D  (LP, SP, SK, SK, SK)


-SK en salto, FI, LP, LK, LP, SP, SK, Magnus

-SK en salto, FI, LP, LK, LP, SP, SK, Hell or Heaven

-SK en salto, FI, LP, LK, LP, SP, SK, Maximum Desiderium

    Este combo depende de la situaci¢n y del enemigo: seg£n el oponente
  (concretamente seg£n c¢mo tenga definidas sus cajas de colisi¢n), el MD
  puede conectar inmediatamente o puede fallar, con lo que Elias pasar¡a por
  debajo del contrario. Sin embargo, si el contrario est  a 1/3 pantalla o
  menos de la esquina cuando conecta el golpe final del FI, el MD alcanzar 
  al oponente mientras est  cayendo aunque no conectara al principio.

-SK en salto, FI, mant‚n Arriba, LP, SP, SK, SK, SK, Maximum Desiderium


Otros combos:
-------------

-SK en salto, SP de cerca (2 golpes), Double Low Kick (2 golpes),
  Magnus D‚bil.

-SK en salto, SP de cerca (2 golpes), Double Low Kick (1 golpe),
  Hell or Heaven.

-SK en salto, SP de cerca (1 golpe), Double Low Kick (1 golpe), Sinful.

-SK en salto, SP de cerca (2 golpes), Double Low Kick (1 golpe),
  Maximum Desiderium.


Combos para pillar :) :
-----------------------

-LK de cerca, Pu¤o Vertical, Holy Flare (su LK de cerca debe cubrirse por
  abajo ^_^).
-SP(1 golpe) de cerca, Doble Patada Baja o Pu¤o Vertical, Magnus D‚bil.
  Alternar entre la Doble Patada Baja y Pu¤o Vertical.
-Holy Flare D‚bil, el contrario se cubre en el aire, Maximum Desiderium. A la
  distancia adeciada, Elias golpear  al contrario en el super antes de que
  aterrice tras bloquear.  ^_^




                            ====================
                              ||  Cr‚ditos  ||
                            ====================




    No soy muy dado a las secciones de Cr‚ditos porque la mayor¡a de las
  veces sirven para darle un aire de falsa importancia a un documento o
  proyecto, como si mucha gente hubiera colaborado en ‚l. No obstante, hay
  ciertas personas que simplemente tienen que ser mencionadas.

  - Antes que nadie, Evoga y Noise Factory, por haber colaborado y haber
      cerado el estupendo Rage Of The Dragons ( y sus secuelas? Esperemos ).
      the wonderful Rage Of The Dragons (and a sequel?...).

  - Elecbyte por programar el Mugen, por supuesto.

  - TerryBogard por su "Rage of the Dragons Moves and Combo FAQ" (v1.26)
      en el cual est  basada la secci¢n de combos.

  - Wally Domey por su "Rage of the Dragons FAQ" (v1.2) en el cual est 
      basada la secci¢n de historia.

  - Y por supuesto t£ por bajarte mi implementaci¢n de Elias :). Espero
      sinceramente que te guste y que te lo pases pipa jugando con ‚l :D.




Este archivo proviene de:

Inverse' s Hideout
http://inverse.mgbr.net
