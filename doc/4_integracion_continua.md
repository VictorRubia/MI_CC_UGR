# Hito 4

## Integración continua

Para realizar integración continua vamos a valorar cuatro entornos distintos.

### [Travis](https://www.travis-ci.com/)

Es una herramienta cuyas ventajas son:

- Fácil de implementar, ya que en pocas líneas podemos crear un archivo para ejecutar los tests.
- Se integra con GitHub, de modo que podemos ligar nuestro repositorio a la ejecución de los tests en Travis.

Las desventajas son:
- Ahora es de pago.
- Configuración compleja a medida que los proyectos crecen.

Esta opción ha quedado descartada ya que al ser de pago y al existir otras opciones, nos decantamos mejor por ellas.

### GitHub Action

Como ya usamos GitHub Action para el despliegue automatizado del contenedor de pruebas en GitHub Container Registry y DockerHub, podemos usarlo también para ejecutar nuestros tests de forma asíncrona, usando nuestro repositorio.

Puede visualizar el fichero de configuración para la automatización de ejecución de tests en GitHub Action en el siguiente [enlace](/.github/workflows/test_GA.yml).

Puede visualizar la ejecución de los tests automatizados en el siguiente [enlace](https://github.com/VictorRubia/MI_CC_UGR/actions/workflows/test_GA.yml).

### [Circle CI](https://circleci.com/)

Es una herramienta bastante similar a los Workflows de GitHub Actions. No se requiere de ninguna tarjeta y se ofrece un plan gratuito mediante créditos mensuales, lo cual restringe bastante el número de peticiones que se pueden realizar. Se enlaza con GitHub a través de un fichero de configuración en el repositorio. Este archivo de configuración puede visualizarse en el siguiente [enlace](/.circleci/config.yml).

Resultado de ejecución de los tests:

![Ejecución Tests en Circle CI](/doc/hito4/circle_ci.png)

### [Jenkins](https://www.jenkins.io/)

Esta herramienta tiene varios inconvenientes, ya que se necesita que instalemos la herramienta como una aplicación en nuestro sistema. Además, no es asíncrono y es necesario que se ejecute en una imagen de docker mediante el uso de plugins que dificultan la configuración.