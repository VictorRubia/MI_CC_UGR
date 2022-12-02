# Hito 3

## Justificación de la elección del contenedor base

Para elegir un contenedor base, estudiaremos tres posibles alternativas en función de la eficiencia de tiempo de ejecución que necesitan, el peso de la imagen y las capas que usa. Estas tres posibles alternativas son:

- Ubuntu 22.04
- Ruby
- Alpine

### Ubuntu

La elección de un contenedor Ubuntu pasa por ser una de las distribuciones Linux más utilizadas en la actualidad. Por eso, probaremos a crear una imagen con base Ubuntu de la siguiente forma:

```Dockerfile
FROM ubuntu:20.04

RUN \
  apt-get update && apt-get install -y --no-install-recommends --no-install-suggests curl git bzip2 build-essential ca-certificates libssl-dev libreadline-dev zlib1g-dev && \
  rm -rf /var/lib/apt/lists/* && \
  curl --proxy-insecure -L https://github.com/rbenv/ruby-build/archive/refs/tags/v20221124.tar.gz | tar -zxvf - -C /tmp/ && \
  cd /tmp/ruby-build-* && ./install.sh && cd / && \
  ruby-build -v 3.1.3 /usr/local && rm -rfv /tmp/ruby-build-* && \
  gem install rails bundler
WORKDIR /CC
COPY Gemfile /CC/Gemfile
COPY Gemfile.lock /CC/Gemfile.lock
COPY . /CC/
RUN bundle install

CMD ["rake", "test"]
```

Para medir la eficiencia en cuanto al tiempo, se ejecutará la orden

```Bash
time docker run victorrubia/mi_cc_ugr/ubuntu
```
```Bash
Running 12 tests in a single process (parallelization threshold is 50)                                                                                                                                       ─╯
Run options: --seed 26192

# Running:

............

Finished in 0.541135s, 22.1756 runs/s, 29.5675 assertions/s.
12 runs, 16 assertions, 0 failures, 0 errors, 0 skips
docker run victorrubia/mi_cc_ugr/ubuntu  0.04s user 0.04s system 1% cpu 5.239 total
```

Como vemos, el tiempo que ha tardado en ejecutarse es de 5,24 segundos.

En cuanto al número de capas que se generan, para visualizarlo ejecutaremos el siguiente comando:

```Bash
docker inspect victorrubia/mi_cc_ugr/ubuntu 
```
```Json
"RootFS": {
  "Type": "layers",
  "Layers": [
    "sha256:f50861bc90c09d421467781dde6342bc7fd173a3a6c257b3fe3c32046ada05d6",
    "sha256:db3b11f920fab67d49ee382c4116e674d05d9ac62fa31af35acf8aba3416283b",
    "sha256:90a44625fe5eb192e46266a1f7fa77f80b2601d5333297d15de7210883d5a0c7",
    "sha256:a9251bd0635b766eb06db32fa5bc289b4e75b88c8832672a46f010dc9e154765",
    "sha256:91736446efd095e71c3cf012866309da762bc2edac0330d6308ebe4d13bbad70",
    "sha256:b74ec2b1d95609b285082f0ab14f9dc28c5542cca5334ffa307e570f92748d1d",
    "sha256:eaa9a1a88373233fcb72dd6f16ff16a670f5b4b24848548c0e8d10bf8a9ee21c"
  ]
},
```

Siendo 7 las capas que componen esta imagen.

En cuanto al tamaño de la imagen encontramos que esta generada con Ubuntu es algo mayor que la generada por la imagen base Ruby que veremos a continuación.

```bash
$ docker images
REPOSITORY                     TAG               IMAGE ID       CREATED          SIZE
victorrubia/mi_cc_ugr/ubuntu   latest            0e98e0b7cbb5   4 minutes ago    506MB
```

### Ruby

Ruby tiene publicada en DockerHub una imagen base que viene con lo mínimo necesario para ejecutarlo en un contenedor. Se puede optar por la versión completa o una slim a la que nosotros añadamos lo estrictamente necesario para así optimizar el espacio que este ocupa. Se optará por la versión slim para una mejor optimización.

```Dockerfile
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

Para medir la eficiencia en cuanto al tiempo, se ejecutará la orden

```Bash
$ time docker run victorrubia/mi_cc_ugr
Running 12 tests in a single process (parallelization threshold is 50)
Run options: --seed 3563

# Running:

............

Finished in 0.478274s, 25.0902 runs/s, 33.4537 assertions/s.
12 runs, 16 assertions, 0 failures, 0 errors, 0 skips
docker run victorrubia/mi_cc_ugr  0.03s user 0.04s system 1% cpu 5.312 total
```

Ha tardado 5,3 segundos en ejecutar los test, es algo superior a la ejecución anterior pero para nada algo que reseñar.

```bash
docker inspect victorrubia/mi_cc_ugr
```
```Json
"RootFS": {
    "Type": "layers",
    "Layers": [
        "sha256:acef1b1c001e7f34ee6701a5bec3c73c5f0661ecdb6415b295a9aa426a5fdec0",
        "sha256:38b2fd2a0bbd47dc290b14813d9d699d1419db8e55b5f4482ef0ebbbbc314eb7",
        "sha256:5a953fa183fa9498667f9e499fe0d163f497bd91eef7d11c5e03705c5498b44b",
        "sha256:796b494c5fd831da51ca1180354594294ce94276ab6500b808aed32fb66796d7",
        "sha256:e680c2cc2ee91a5e8727022cd89e98dfb7fbf1ec7c401666b04705921697ba79",
        "sha256:2a624165a0ac10e41543fd9131be82dec956f2417c05e58472affef56229f803",
        "sha256:5c70e582b4ac99e075fd5310d649daaf64d20e32fb6665106df0db6e44e03d71",
        "sha256:b46c372c19d7b05d76835bfc24afb6eff539d492dd01b767436573a7f7ceea03",
        "sha256:e070aa677811346f2c593607a74987b7bd5ff1a525bf55b4742aef416db17f63",
        "sha256:19adec9d8c0b95aea6fec81ff7539c7c7f91a70da4f48c78dfbe87d8c21f7f8d",
        "sha256:e7be5801b0fc6f935532301c3f9be1aeba2fddb7e03fc0f96056848c6ce5c33a",
        "sha256:c99ebc97a923a6d767a03e5a8cc26bf25ce17f123fc0cda42f0b3fa4d131e200"
    ]
}
```

Esta imagen tiene 11 capas, que es algo mayor al número de capas obtenidas en la imagen con base Ubuntu.

En cuanto al tamaño de la imagen encontramos que esta generada con base Ruby es algo menos pesada (496MB) que la que se ha generado con base Ubuntu (506MB) en el apartado anterior.

```bash
$ docker images
REPOSITORY                     TAG               IMAGE ID       CREATED          SIZE
victorrubia/mi_cc_ugr/ubuntu   latest            0e98e0b7cbb5   4 minutes ago    506MB
victorrubia/mi_cc_ugr          latest            e37f6d2e1769   9 minutes ago    496MB
```

### Alpine

Al intentar realizar un contenedor con alpine, basándonos en la imagen que tiene Ruby con alpine, se ha encontrado un error para el que no se ha encontrado solución. Sin embargo, exponemos a continuación los resultados que podemos medir.

```Dockerfile
# syntax=docker/dockerfile:1
FROM ruby:3.1.3-alpine
RUN apk add --update build-base
WORKDIR /CC
COPY Gemfile /CC/Gemfile
COPY Gemfile.lock /CC/Gemfile.lock
COPY . /CC/
RUN bundle install

CMD ["rake", "test"]
```

El tiempo de ejecución no lo podemos medir, ya que nos encontramos ante un error de librerías del sistema relacionadas con sqlite3, que aparentemente no tiene aún solución, ya que debería estar presente pero no lo está.

```Bash
$ docker run victorrubia/mi_cc_ugr/alpine  
Caused by:
LoadError: Error loading shared library ld-linux-aarch64.so.1: No such file or directory (needed by /usr/local/bundle/gems/sqlite3-1.5.4-aarch64-linux/lib/sqlite3/3.1/sqlite3_native.so) - /usr/local/bundle/gems/sqlite3-1.5.4-aarch64-linux/lib/sqlite3/3.1/sqlite3_native.so
/usr/local/bundle/gems/bootsnap-1.13.0/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:32:in `require'
/usr/local/bundle/gems/bootsnap-1.13.0/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:32:in `require'
/usr/local/bundle/gems/sqlite3-1.5.4-aarch64-linux/lib/sqlite3.rb:4:in `<main>'
/usr/local/bundle/gems/bootsnap-1.13.0/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:32:in `require'
/usr/local/bundle/gems/bootsnap-1.13.0/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:32:in `require'
/usr/local/bundle/gems/bundler-2.3.7/lib/bundler/runtime.rb:60:in `block (2 levels) in require'
/usr/local/bundle/gems/bundler-2.3.7/lib/bundler/runtime.rb:55:in `each'
/usr/local/bundle/gems/bundler-2.3.7/lib/bundler/runtime.rb:55:in `block in require'
/usr/local/bundle/gems/bundler-2.3.7/lib/bundler/runtime.rb:44:in `each'
/usr/local/bundle/gems/bundler-2.3.7/lib/bundler/runtime.rb:44:in `require'
/usr/local/bundle/gems/bundler-2.3.7/lib/bundler.rb:176:in `require'
/CC/config/application.rb:7:in `<top (required)>'
/CC/Rakefile:4:in `require_relative'
/CC/Rakefile:4:in `<top (required)>'
```

Para conocer el número de capas generadas ejecutamos el siguiente comando sobre la imagen:

```bash
docker inspect victorrubia/mi_cc_ugr/alpine
```
```Json
"RootFS": {
    "Type": "layers",
    "Layers": [
        "sha256:1b577a8fb8ce25023a0ec0a17a6dc3d6aa9cca989f75457800cb55179ee2e834",
        "sha256:b1b9d8e088e4630b5261a27f1b4c03b986b8a31e1748ceca8f1725a38ddaa38c",
        "sha256:4ca0071abfeb762faaaf29f875258618175db5acbe9d15f32e3765733ec51b96",
        "sha256:208a0146aa7da0ef2f5aa9ee0bf46597586271d71a725434f3c196dc540e7814",
        "sha256:ec797bd0ec673f16f808b844ac31ac040a2dcc320474cbc13679a1f0ce172682",
        "sha256:0f4008d6a4fb854ea543a1f56244e76704349bf5d6845301d909ae95874e2381",
        "sha256:707aaa6e19f7d26221684064b9777e8ab6ddddb976a424c025fdd9db6d8a9248",
        "sha256:cb51acd22a6e7f087760dc150595c4e9d31170b663fdbd20f3378100fbc7a571",
        "sha256:34323f9a7bc6dd8531248d014c46e02ecc48c4e5d7478e69f141589a819729a8",
        "sha256:8dd02c056e7b2e78b7c234efd8c33c5286edd98b4a3012a2aa2d0a21ebe93a5c",
        "sha256:5fd14ade31354f793e64e1dbfb266b4fe4bcb70e84fc810744d631f012bc2004"
    ]
}
```

Vemos que esta opción presenta 11 capas como la de Ruby, por lo que no presenta una mejora.

En cuanto al tamaño de la imagen encontramos que esta generada con base Ruby sobre Alpine es sustancialmente menos pesada (407MB) que la que se han generado en los apartados anteriores. Si consiguen resolver el [issue](https://github.com/sparklemotion/nokogiri/discussions/2359) relacionado con este error en el futuro, se puede considerar esta imagen base como potencial, ya que es la más ligera de las tres.

```bash
$ docker images
REPOSITORY                     TAG               IMAGE ID       CREATED          SIZE
victorrubia/mi_cc_ugr/alpine   latest            0d689306c31c   58 seconds ago   407MB
victorrubia/mi_cc_ugr/ubuntu   latest            0e98e0b7cbb5   4 minutes ago    506MB
victorrubia/mi_cc_ugr          latest            e37f6d2e1769   9 minutes ago    496MB
```

## Conclusiones

Finalmente se opta por el uso de la imagen con base Ruby para realizar la imagen y contenedor de pruebas para el proyecto.