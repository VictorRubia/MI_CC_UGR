# Hito 1

## Justificación del lenguaje

### Ruby

El lenguaje que se va a usar para el desarrollo de la aplicación es Ruby. Ruby es un lenguaje de programación de propósito general no tipado que aprendí durante el transcurso de la carrera y desde entonces me ha ayudado al despliegue de aplicaciones web.

Además, Ruby es un lenguaje bastante limpio, sencillo y lógico, que ayuda a que el desarrollo sea ágil.

## Justificación del framework

### Ruby on Rails

El framework que se va a usar sobre el lenguaje de programación es _Ruby On Rails_, que es bien conocido por su uso para el desarrollo de aplicaciones web.

Este framework ayuda bastante en cuanto al ahorro de tiempo en el desarrollo de tareas redundantes. Además, este framework permite la edición y la adición de funcionalidades de forma sencilla y rápida, lo cual hace que se minimicen los costes.

Como admite módulos, las funcionalidades que van surgiendo en el tiempo se adicionan bastante rápido al framework, haciendo que este no se quede para nada obsoleto. Además, la comunidad de desarrolladores que apoyan este proyecto es bastante activa y grande.

Este framework facilita que la aplicación web sea escalable horizontalmente.

En cuanto a la seguridad, este framework esta a la orden del día, ya que evita inyecciones SQL y ataques XSS en los formularios y a la hora de mostrar variables de la aplicación.

En cuanto a la confiabilidad y mantenimiento, este framework usa el enfoque de Desarrollo Basado en Pruebas (TDD) y provee herramientas que permiten hacer pruebas bastante exahustivas.

## Justificación de la arquitectura

La arquitectura que se va a seguir en el proyecto viene dada directamente por la convención que se ha de seguir según el framework escogido. La arquitectura Modelo-Vista-Controlador (MVC) es ampliamente conocida y se estructura de la siguiente forma:

- **Modelo**: Parte que contiene la lógica de negocio de la aplicación. En cuanto a nuestra aplicación, será la parte que se interactúe con la base de datos.
- **Vista**: Parte que mantiene la lógica de la visualización de la interfaz del usuario. Usando el framework, los archivos HTML tienen código Ruby incrustado.
- **Controlador**: Parte que controla el flujo de la aplicación, mediante la comunicación con la vista y los modelos. Estos controladores procesan los datos del modelo y los envían a las vista.

