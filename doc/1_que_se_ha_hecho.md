# Hito 1

## Creación del modelo de películas en la aplicación

Para crear el modelo de películas y su CRUD en nuestro sistema de _Ruby On Rails_, tendremos en cuenta la definición dada para el modelo de películas (consultar [aquí](/doc/1_justif_modelo_pelicula.md). Ejecutaremos el siguiente comando de acuerdo con las convenciones que se han de seguir en Ruby On Rails (nombrar los modelos en inglés).

```Bash
$ rails generate scaffold movie title:string synopsis:text launch_date:datetime age_classification:string length:string genre:string director:string poster:string rating_avg:decimal 
```

Tras la ejecución de este comando, se habrán creado los archivos necesarios en nuestro sistema para añadir, editar, eliminar y visualizar películas de nuestra base de datos.

Para completar la acción, se debe ejecutar el siguiente comando, para que se apliquen los cambios en la base de datos.

```Bash
$ rails db:migrate
```

Para poder visualizar las páginas generadas necesitamos añadir en el archivo `routes.rb` el nuevo modelo generado.

```Ruby
Rails.application.routes.draw do
  resources :movies
end
```

Ya podremos añadir, visualizar, editar y eliminar películas de nuestro sistema.

![Resultado de creación](/doc/img/1_creacion_pelicula.png)
![Resultado listado de películas del sistema](/doc/img/1_lista_peliculas.png)