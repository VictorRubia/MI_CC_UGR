# Hito 2: Tareas de desarrollo

## Índice
- [Hito 2: Tareas de desarrollo](#hito-2--tareas-de-desarrollo)
    * [Índice](#-ndice)
    * [Creación del modelo de sesiones de películas](#creaci-n-del-modelo-de-sesiones-de-pel-culas)
    * [Desarrollo de funciones CRUD y vistas para la gestión de películas](#desarrollo-de-funciones-crud-y-vistas-para-la-gesti-n-de-pel-culas)
    * [Desarrollo de funciones CRUD y vistas para la gestión de sesiones de películas](#desarrollo-de-funciones-crud-y-vistas-para-la-gesti-n-de-sesiones-de-pel-culas)
    * [Desarrollo de función y vista para obtener la cartelera](#desarrollo-de-funci-n-y-vista-para-obtener-la-cartelera)
        + [Resultados](#resultados)
    * [Documentación de gestores de tareas existentes](#documentaci-n-de-gestores-de-tareas-existentes)
    * [Documentación sobre marcos de trabajo para pruebas existentes](#documentaci-n-sobre-marcos-de-trabajo-para-pruebas-existentes)
    * [Documentación sobre biblioteca de aserciones existentes](#documentaci-n-sobre-biblioteca-de-aserciones-existentes)
    * [Test de unidad para los modelos de película y sesiones](#test-de-unidad-para-los-modelos-de-pel-cula-y-sesiones)
        + [Resultados de pruebas con el gestor de tareas](#resultados-de-pruebas-con-el-gestor-de-tareas)
    * [Documentación de los End-Points de nuestra API desarrollada](#documentaci-n-de-los-end-points-de-nuestra-api-desarrollada)

## Creación del modelo de sesiones de películas

Se ha creado el modelo de sesiones de acuerdo con la definición del mismo. Se puede leer [aquí](/doc/2_justif_modelo_sesiones.md). El desarrollo que se ha hecho para la creación del modelo se puede visualizar en los commits asociados a los siguientes issues.

- https://github.com/VictorRubia/MI_CC_UGR/issues/2
- https://github.com/VictorRubia/MI_CC_UGR/issues/25

## Desarrollo de funciones CRUD y vistas para la gestión de películas

Se han desarrollado las funciones para el controlador necesarias para realizar la gestión de la obtención, edición, creación y eliminación del modelo de películas. Las vistas se han desarrollado usando JBuilder, que nos facilita la construcción de JSON con información obtenida de los controladores que hemos desarollado. El desarrollo asociado se puede consultar en los commits asociados a los siguientes issues:

- https://github.com/VictorRubia/MI_CC_UGR/issues/1
- https://github.com/VictorRubia/MI_CC_UGR/issues/20
- https://github.com/VictorRubia/MI_CC_UGR/issues/21
- https://github.com/VictorRubia/MI_CC_UGR/issues/22
- https://github.com/VictorRubia/MI_CC_UGR/issues/23

## Desarrollo de funciones CRUD y vistas para la gestión de sesiones de películas

Se han desarrollado las funciones para el controlador necesarias para realizar la gestión de la obtención, edición, creación y eliminación del modelo de sesiones de películas. Las vistas se han desarrollado usando JBuilder, que nos facilita la construcción de JSON con información obtenida de los controladores que hemos desarollado. El desarrollo asociado se puede consultar en los commits asociados a los siguientes issues:

- https://github.com/VictorRubia/MI_CC_UGR/issues/2
- https://github.com/VictorRubia/MI_CC_UGR/issues/26
- https://github.com/VictorRubia/MI_CC_UGR/issues/27
- https://github.com/VictorRubia/MI_CC_UGR/issues/28
- https://github.com/VictorRubia/MI_CC_UGR/issues/29

## Desarrollo de función y vista para obtener la cartelera

Para desarrollar esta función, se ha pensado en el modelo de sesiones, ya que la nuestra cartelera mostrará las sesiones que estén creadas con fecha asiganada para cierto día. Se ha desarrollado dos posibilidades, obtener la cartelera para **hoy**, o para una fecha concreta.

Este desarrollo puede consultarse en los commits del issue https://github.com/VictorRubia/MI_CC_UGR/issues/2 

### Resultados

A continuación se muestra, mediante el uso de Postman, el resultado que se obtiene cuando hacemos una petición a nuestra API para obtener la cartelera para un día determinado.

![Postman](/doc/img/2_get_cartelera_postman.png)

## Documentación de gestores de tareas existentes

Se ha documentado los gestores de tareas más usados para Ruby On Rails. Se puede leer la documentación [aquí](/doc/2_gestor_tareas.md).

## Documentación sobre marcos de trabajo para pruebas existentes

Se ha documentado los diferentes marcos de trabajo para pruebas existentes en desarrollos con Ruby On Rails. Se puede leer [aquí](/doc/2_test_framework.md).

## Documentación sobre biblioteca de aserciones existentes

Se han documentado las diferentes bibliotecas de aserciones existentes en Ruby On Rails. Se puede leer [aquí](/doc/2_test_assertion_library.md).

## Test de unidad para los modelos de película y sesiones

Se han desarrollado test unitarios para comprobar que la funcionalidad desarrollada hasta ahora funciona correctamente.

El desarrollo de las pruebas puede verse en los commits asociados al issue https://github.com/VictorRubia/MI_CC_UGR/issues/34

### Resultados de pruebas con el gestor de tareas

Usamos `rake test` para comprobar que los tests realizados funcionan correctamente.

```bash
victorrubia@victorrubia MI_CC_UGR % rake test
Running 12 tests in a single process (parallelization threshold is 50)
Run options: --seed 41040

# Running:

............

Finished in 0.150519s, 79.7242 runs/s, 106.2989 assertions/s.
12 runs, 16 assertions, 0 failures, 0 errors, 0 skips
```

## Documentación de los End-Points de nuestra API desarrollada

Para consultar las peticiones que se pueden realizar a nuestra API y ver un ejemplo de resultado puede leer [este](/doc/2_api_endpoints.md) documento.