# Hito 1

## Proceso de instalación

### Ruby on Rails

Para comenzar, se ha buscado la mayor portabilidad para la ejecución y desarrollo de la aplicación. Por esto, se propone al cliente (profesora) el desarrollo mediante un contenedor Docker.

Tras la aprobación, se procede a [buscar en DockerHub la imagen más reciente y estable de _Ruby_](https://hub.docker.com/_/ruby). En este momento, la versión 3.1.2 es la versión más reciente y estable.

Sabiendo esto, procedemos a la elaboración de un Dockerfile que monte un entorno con _Ruby_ sobre el que poder instalar el framework _Ruby On Rails_.

Este `Dockerfile` obtiene la imagen de Ruby, actualiza los paquetes e instala las dependencias necesarias. Para ello se ha seguido el tutorial oficial que provee Docker y se puede seguir [aquí](https://github.com/docker/awesome-compose/tree/master/official-documentation-samples/rails).

```Dockerfile
# syntax=docker/dockerfile:1
FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y build-essential npm yarn nodejs
RUN apt remove cmdtest -y
RUN npm install -g npm@latest
RUN npm install -g yarn
WORKDIR /CC
COPY Gemfile /CC/Gemfile
COPY Gemfile.lock /CC/Gemfile.lock
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
```

Tras esto, se ha creado un archivo `Gemfile` que incluye la última versión estable de Ruby On Rails (7.0.4).

```Gemfile
source "https://rubygems.org"
gem "rails", "~> 7.0.4"
```

Y se crea un archivo vacío llamado `Gemfile.lock`.

```Bash
$ touch Gemfile.lock
```

Para terminar, creamos un archivo `docker-compose.yml` donde se indica el servicio a ejecutar, otorgando un nombre al contenedor e indicándole el volumen de directorios.

```yaml
version: "3.9"
services:
  web:
    build: .
    command: bash -c "rm -f tmp/pids/server.pid && rake assets:precompile && bundle exec rails s -p 3000 -b '0.0.0.0'"
    container_name: cineopolis
    restart: always
    volumes:
      - .:/CC
    ports:
      - "3000:3000"
```

Ejecutando el siguiente comando, se generan todos los archivos necesarios de _Ruby On Rails_ y ya tendremos todo listo para comenzar el desarrollo.

```Bash
$ docker compose run web rails new .
```