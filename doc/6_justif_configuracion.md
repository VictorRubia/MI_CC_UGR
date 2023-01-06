# Hito 6

## Justificación de la configuración de cada uno de los contenedores que componen el clúster

### Contenedor de la aplicación (API Rails)

Este contenedor es el fruto de la compilación de un Dockerfile que posee la siguiente estructura:

```Dockerfile
#Dockerfile
FROM ruby:3.1.3-slim
RUN apt-get update -qq && apt-get install -y build-essential
RUN apt remove cmdtest -y
WORKDIR /CC
COPY Gemfile /CC/Gemfile
COPY Gemfile.lock /CC/Gemfile.lock
COPY . /CC/
RUN bundle install

CMD ["rake", "test"]
```

En la cual usamos la imagen oficial de Ruby en formato SLIM para que no ocupe tanto espacio, como ya se vió y se justificó con el contenedor de tests en el [hito 3](3_justif_contenedor.md). Tras esto, se actualizan los paquetes y se instalan las herramientas necesarias para el desarrollo. Establecemos como directorio de trabajo una carpeta llamada CC y copiamos tanto el Gemfile como el resto de archivos del directorio del proyecto. Tras esto ejecutamos ``bundle install`` para instalar las gemas del `Gemfile`. Por último, como estamos basándonos en el `Dockerfile` creado para las pruebas, la línea con CMD no se ejecutará y será la línea de `command` del `docker-compose.yml` la que se ejecute: `bash -c "rm -f tmp/pids/server.pid && bundle exec rails s -p 3000 -b '0.0.0.0'"`. Esto hace que se ejecute el servidor de rails en el puerto 3000.

### Contenedor de la base de datos (SQLite3)

Este contenedor lo obtenemos de [una imagen de DockerHub](https://hub.docker.com/r/nouchka/sqlite3), la cual nos provee una interfaz CLI para hacer transacciones con la base de datos SQLite3. No haremos ninguna configuración adicional sobre esta imagen y la usaremos tal y como se presenta.

### Contenedor de ElasticSearch

Este contenedor lo obtenemos también de [una imagen de DockerHub](https://hub.docker.com/_/elasticsearch), la cual nos proporciona un motor de búsqueda y análisis para los logs de nuestra aplicación. No haremos ninguna configuración adicional sobre la imagen y la usaremos tal y como se descarga.

### Contenedor de Logstash

Este contenedor lo obtenemos también de [una imagen de DockerHub](https://hub.docker.com/_/logstash), la cual nos proporciona una herramienta para la administración de logs y para la recopilación, análisis y almacenamiento de datos. No haremos ninguna configuración adicional sobre la imagen y la usaremos tal y como se descarga.

### Contenedor de Kibana

Este contenedor lo obtenemos también de [una imagen de DockerHub](https://hub.docker.com/_/kibana), la cual nos proporciona una interfaz web para la visualización de los logs de nuestra aplicación. No haremos ninguna configuración adicional sobre la imagen y la usaremos tal y como se descarga.