# 📦 Contenedores

## Justificación de elección de contenedor base

Para realizar el contenedor de pruebas para el proyecto, se utilizará como imagen base la imagen oficial de Ruby en su versión slim:

```Dockerfile
FROM ruby:3.1.3-slim
```

Para ver la justificación al completo de la elección de la imagen base pulsa [aquí](/doc/3_justif_contenedor.md).

## 🐋 DockerHub

En primer lugar utilizaremos DockerHub para alojar nuestro contenedor de pruebas porque nos permite tener actualizaciones automáticas y nos permite alojar y gestionar de forma sencilla las imágenes que generamos con Docker.

Además podemos integrar una GitHub Action para que, de forma automática, se detecte cambios de código en la aplicación y construya una nueva imágen, subiéndola a DockerHub.

Técnicamente es un servicio de repositorios de contenedores Docker, que en nuestro caso nos permite alojar nuestro contenedor de test para el proyecto y actualizando el código de forma automatizada mediante un Workflow. Puede visualizar el workflow creado pulsando [**aquí**](/.github/workflows/latest.yml). Con esto, podemos ejecutar los test y el proyecto de forma independiente de la plataforma desde la que se tenga.

Para visualizar la imagen en DockerHub 🐋 pulsa [aquí](https://hub.docker.com/r/victorrubia/mi_cc_ugr/tags).

## GitHub Container Registry

Se ha desplegado el contenedor en GitHub Container Registry. Para visualizar el paquete que se genera pulse [aquí](https://github.com/users/VictorRubia/packages/container/package/mi_cc_ugr).

Para conseguirlo, se ha creado un workflow para conseguir la actualización automática del código para el contenedor de test. El workflow se puede consultar [aquí](/.github/workflows/githubcr.yml). Los pasos que se han seguido para llevar a cabo este proceso, se pueden consultar en la [página oficial de GitHub Packages](https://docs.github.com/en/packages/quickstart).

## Otras alternativas

### ECR Amazon Elastic Container Registry

Podría decirse que, aunque esta opción es viable, dista mucho de la automatización de workflows en GitHub y es bastante dificil de compaginar con Docker, ya que requiere de un token temporal. Además, puede conllevar un coste extra si no se implementan los contenedores en AWS y hay poca información disponible sobre cómo utilizar el registro.

### GCR

Cuenta con un registro de contenedores gratuito y está enlazada con GitHub a través de las Actions, lo que nos permite actualizar automáticamente el código mediante workflows. Es seguro, ya que permite utilizar GITHUB_TOKEN y se permite un acceso anónimo a los contenedores públicos en ghcr.io