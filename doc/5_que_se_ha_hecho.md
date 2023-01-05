# Hito 5

## Justificación técnica del framework para el microservicio que provee el API.

Como ya se comenzó el desarrollo de la aplicación usando un framework como es el de Ruby on Rails, para Ruby, esto está ya justificado en el hito 1. Esto puede leerse en más profundidad pulsando [aquí](1_justif_lenguaje.md).

## Diseño general del API

Para conocer el diseño de la API desarrollado nos valdremos del uso de la herramienta Postman para realizar las peticiones. Esta herramienta además nos permite extraer la documentación de la misma, la cual se ha ido añadiendo a lo largo de los desarrollos de los diferentes hitos. Para conocer los End-Points de la API actualmente pulse [aquí](/doc/5_api_endpoints.md). En este hito se han añadido:

- **Comprar sesión**. Para comprar una entrada de una sesión de una película del cine.
- **Ver compras realizadas**. Para ver las entradas compradas por los clientes.
- **Ver una compra específica**. Para ver una compra en específico, incluyendo detalles de la película y la sesión.

## Uso de logs: Logging

Para conocer el Stack de frameworks que se han utilizado para llevar a cabo las tareas de logging en nuestra aplicación pulsa [aquí](5_logs_framework.md).

## Buenas prácticas: Configuración distribuida

Desde el comienzo del desarrollo se está optando por hacer una configuración distribuida, donde tenemos un contenedor el cual puede ser desplegado en cualquier plataforma. Además, para la configuración del Logging, se han utilizado otros contenedores los cuales se han aglutinado en un `docker-compose.yml` que compone tanto los contenedores de Logging como nuestra aplicación y se interconectan entre ellos. Esto hace que sea una configuración muy distribuida.

En cuanto al `make build`, `make install` y `make test` que se indica en el guión de la práctica, este ha sido implementado satisfactoriamente haciéndose las siguientes tareas:

```Makefile
build:
	docker build -t victorrubia/mi_cc_ugr .
```

Esto construye la imagen de nuestra aplicación.

```Makefile
install:
	docker-compose up
```

Esto construirá la composición de contenedores, descargando las imágenes del Stack Elastic y componiéndolas con la imagen de nuestra aplicación previamente construida con `make build`.

```Makefile
test:
	docker run victorrubia/mi_cc_ugr
```

Esto descargará la última versión de nuestro contenedor de pruebas de DockerHub y ejecutará los tests de forma local.

## Avances en la implementación de las tareas de desarrollo

El hito 5 marcaba como objetivo tener un sistema que permitiese comprar entradas para las sesiones del cine a cualquier usuario. Para ello, se ha razonado, en primer lugar, el modelo que pudiese representar esto.

El razonamiento pasa por tener que modificar el modelo de sesiones, el cual puede ser consultado pulsando [aquí](2_justif_modelo_sesiones.md), añadiéndole un atributo que represente el número de entradas disponibles para esa sesión junto con su precio.

Tras esto, se ha creado un modelo nuevo, el cual lleva el registro de compra de entradas del cine. Este modelo puede ser consultado pulsando [aquí](5_justif_modelo_entradas.md).

Una vez creados los modelos, se ha procedido a crear una nueva función dentro del controlador de Sesiones, el cual se encargará de registrar las compras de entradas de los usuarios (método `comprar_entrada`). También hemos añadido una ruta para poder acceder a esta función, la cual puede verse en la documentación de la API, pulsando [aquí](/doc/5_api_endpoints.md).

Por último, se ha creado una nueva vista para poder visualizar las entradas compradas por los clientes.

## Tests de la funcionalidad implementada correctos

Se han añadido nuevos tests que comprueban que las funciones desarrolladas no han afectado al correcto funcionamiento anterior y, además, comprueban que las nuevas funciones funcionan correctamente.

Puede comprobar la corrección de los tests en la siguiente ejecución o comprobándolo en las GitHub Actions del repositorio, donde ya se configuró en hitos anteriores para ejecutar automáticamente los tests cada vez que hacemos un commit en el que se ha modificado la lógica de la aplicación.

```bash
Running 20 tests in a single process (parallelization threshold is 50)
Run options: --seed 28039

# Running:

....................

Finished in 0.214612s, 93.1913 runs/s, 130.4678 assertions/s.
20 runs, 28 assertions, 0 failures, 0 errors, 0 skips
```