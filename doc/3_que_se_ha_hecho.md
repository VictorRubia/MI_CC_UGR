# Hito 3: Tareas de desarrollo

## Implementación del módulo de autenticación

Para realizar la autenticación en nuestra aplicación nos valdremos del módulo `Devise`, el cual es bastante conocido y el más utilizado para llevar a cabo las tareas de registro e identificación en aplicaciones con Ruby On Rails.

Se ha añadido este módulo al ``Gemfile`` y se ha procedido a realizar un `bundle install` para instalarlo.

## Creación del modelo de usuario identificado

Para generar el modelo de usuario se ha optado por tener un campo para el email, el cual es único y nos permitirá mandarle la contraseña en caso de que se le olvide y un campo para la contraseña, que se guardará encriptada.

Se puede consultar el modelo de usuarios generado pulsando [aquí](/doc/3_justif_modelo_usuarios.md).

## Adaptación de las operaciones de consulta

Para restringir las operaciones de CRUD sobre los modelos de películas y sesiones de películas, de modo que solo las personas autorizadas por el gestor del cine sean las que puedan añadir, editar y eliminar los registros de dichos modelos.

Se añadirá al modelo de peliculas `before_action :authenticate_user!` para que antes de realizar cualquier operación se necesite autenticar al usuario.

De este modo, sin estar registrado únicamente se podrá acceder a la cartelera del cine como ya lo hacíamos anteriormente.

Además, se han añadido algunas API Endpoints para poder gestionar el inicio de sesión y el registro de usuarios. Puede consultarlos pulsando [aquí](/doc/3_api_endpoints.md).

## Adaptación de los test unitarios

Al igual que se han modificado los controladores para que se requiera una identificación para realizar algunos tipos de operaciones, se debe reflejar en las pruebas para que sigan funcionando.

## Creación de los contenedores

Para conocer qué se ha desarrollado para conseguir un contenedor automatizado para las pruebas, pulse [aquí](/doc/3_justif_contenedor.md).