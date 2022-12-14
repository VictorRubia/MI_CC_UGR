# Hito 4

## Integracion Continua

Para realizar integración continua vamos a valorar cuatro entornos distintos:

- Travis: Justificaremos por qué ya no es una opción a valorar.
- Workflows de GitHub Actions: Herramienta proporcionada por GitHub, se conecta automáticamente con el repositorio y se ejecuta de forma asíncrona cada vez que modificamos el proyecto de nuestro repositorio.
- Circle CI: Una herramienta gratuita en la que podemos ejecutar el contenedor de pruebas.

## Desarrollo: Autorelleno de información de películas

Para cumplir con las tareas de desarrollo marcadas en el hito 4 de nuestro proyecto, se ha añadido la funcionalidad para que teniendo acceso a una base de datos de películas, ya sea local o a través de una API externa (en nuestro caso se hará mediante una base de datos local), se pueda optar a la hora de añadir una nueva película dando tan solo el nombre de la misma y dejando que el sistema rellene toda la demás información, como sipnosis, categoría, duración, imagen del póster, entre otros.

### Pruebas

Para comprobar que la funcionalidad desarrollada cumple con su función, se ha realizado la correspondiente prueba unitaria, la cual se puede consultar [aquí](/test/controllers/movies_controller_test.rb).

De igual forma, pueden verse la ejecución de los tests dentro del GitHub Actions que se ha desarrollado para el cumplimiento de este Hito.

## Conclusiones

Cabe destacar que se hace uso de los contenedores generados en las iteraciones anteriores mediante CI (en DockerHub y GitHub Container Registry), y cada vez que se genera un nuevo contenedor, se ejecutan los tests de forma automática. Esto se ha justificado en la sección de [integración continua](#integracion-continua).

Por otro lado, en cuanto al gestor de tareas que estamos utilizando (**make**), se siguen lanzando las mismas tareas que en el hito anterior, las cuales nos han ayudado a ejecutar el contenedor de pruebas en local. Se puede consultar [aquí](/Makefile).