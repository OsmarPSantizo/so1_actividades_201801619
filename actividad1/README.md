# Tipos de Kernel y sus diferencias


Un kernel no es más que un software especial que forma parte importante del sistema operativo de cualquier computadora. 

Cuenta con la característica de que el mismo se ejecuta en un modo con privilegios, también llamado y mejor conocido como núcleo.
Dentro de sus principales funciones, está el hecho de que facilita cualquier programa principal y necesario en el hardware del ordenador y es el encargado de gestionar cada uno de ellos para que funcionen de forma correcta.


Antes, los núcleos eran prácticamente obsoletos, por no decir innecesarios, ya que para que todo volviera a funcionar como se debe, la computadora debía reiniciarse y reconfigurarse a cada momento para que sus programas se restablezcan. Sin embargo, con el tiempo los desarrolladores se dieron cuenta de que se necesitaba un refuerzo y cambiar de estrategia ya que la misma estaba empezando a pasar factura, por lo que se empezó poco a poco a incluir en los ordenadores, diversos sistemas y memorias para que todo quede establecido en ellas. Los programas que se creaban son catalogados como programas auxiliares, entre los cuales destacan el **cargador** y el **depurador**. Una vez que estos programas iban aumentando en número, se consideraron necesarios y se catalogaron como núcleos, siendo estos los primeros en ser creados. 

Con esto se llegó a la conclusión de que los ordenadores necesitaban de un kernel de forma obligatoria para que el funcionamiento del ordenador se produzca de forma correcta. Sin embargo, se sigue sosteniendo la teoría de que no son del todo obligatorios y de que un ordenador puede seguir funcionando sin un núcleo. Por eso se crearon diversos **tipos de kernel** en donde cada uno de ellos funciona a su manera y cumple diferentes características, estos son los cuatro tipos de kernel que han sido desarrollados hasta el día de hoy:


- ### **Kernel monoliticos**

	Un kernel grande para todas las tareas. Es el único responsable de la gestión de la memoria y de los procesos, de la comunicación entre procesos y proporciona funciones de soporte de drivers y hardware. Los sistemas que usan el kernel monolítico son Linux, OS X y Windows. 

- ### **Microkernel**
	El microkernel se ha diseñado intencionalmente de un tamaño pequeño para que en caso de fallo no paralice todo el sistema operativo. No obstante, para que pueda asumir las mismas funciones que un kernel grande, está dividido en varios módulos. Como ejemplo de aplicación solo existe el componente Mach de OS X, ya que hasta ahora no hay ningún sistema operativo con microkernel.

- ### **Kernel híbrido**
	La combinación del kernel monolítico y el microkernel se denomina kernel híbrido. En este caso, el kernel grande se hace más compacto y modulable. Otras partes del kernel pueden cargarse dinámicamente. Esto ya ocurre en cierta medida en Linux y OS X.

- ### **Exonúcleos**
	También conocidos como sistemas operativos verticalmente estructurados, representan  una aproximación radicalmente nueva al diseño de sistemas operativos. La idea subyaciente es permitir que el desarrollador tome todas las decisiones relativas al rendimiento del hardware. Los exonúcleos son extremadamente pequeños, ya que limitan expresamente su funcionalidad a la protección y el multiplexado de los recursos. Se llaman a´sí porque toda la funcionalidad deja de estar residente en memoria ya pasa a estar fuera, en librerías dinámicas.

# User vs Kernel Mode

- ### **User Mode**
	Cuando un programa se inicia en un sistema operativo, luego inicia el programa en modo usuario. Cuando un programa en modo usuario solicita ejecutarse, Windows crea un proceso y un espacio de direcciones virtuales. Los programas de modo de usuario tienen menos privilegios que las aplicaciones de modo de usuario y no se les permite acceder a los recursos del sistema directamente. 

- ### **Kernel Mode**
	El kernel es el programa central en el que se basan todos los demás componentes del sistema operativo, se utiliza para acceder a los componentes de hardware y programar qué procesos deben ejecutarse en un sistema informático y cuándo, también administra la interacción entre el software y el hardware de la aplicación. Por lo tanto, es el programa más privilegiado, a diferencia de otros programas, puede interactuar directamente con el hardware. Cuando los programas que se ejecutan en modo de usuario necesitan acceso al hardware



- ### Diferencias
	| Criterios | Kernel Mode | User Mode |
	| ------ | ------ |------ |
	| User Mode vs Kernel Mode.  | El programa tiene acceso directo y sin restricciones a los recursos del sistema. |El programa de aplicación se ejecuta y se inicia. |
	| Interrupciones.  | Todo el sistema operativo podría detenerse si se produce una interrupción. | Un solo proceso fallaría si ocurre una interrupción.  |
	| Modos | Se le conoce como maestro, modo privilegiado o modo de sistema. | Se le conoce como modo no privilegiado, modo restringido o modo esclavo. |
	| Espacio de dirección virtual  | Todos los procesos comparten un solo espacio de dirección virtual.| Todos los procesos obtienen espacio de dirección virtual separado. |
	| Nivel de privilegio  | Las aplicaciones tienen más privilegios en comparación con el modo de usuario.| Las aplicaciones  tienen menos privilegio. |
	| Restricciones  | Puede acceder tanto a los programas de usuario como a los programas de kernel, no hay restricciones. | Necesita acceder a los programas del kernel ya que no puede acceder directamente a ellos. |
	| Valor de bit de modo  | El bit del modo kernel es 0. | El bit del modo usuario es 1. |
	| Referencias de memoria | Es capaz de hacer referencia a ambas áres de memoria. | Solo puede hacer referencias a la memoria asignada para el modo de usuario. |
	| Acceso | Solo permite la funcionalidad esencial para operar en este modo. | Los programas de  usuario pueden acceder y ejecutarse en este modo para un sistema determinado. |