# Hito 2

## Gestor de tareas

Para nuestro proyecto elegiremos el gestor de tareas por excelencia que se usa en entornos de desarrollo con Ruby y Ruby On Rails: _**Rake**_.

### Rake

Es una herramienta que reemplazo a _Make_ de Unix como herramienta de compilación para Ruby. Es útil para automatizar tareas escritas en código Ruby que se ejecuten en la línea de comandos. Normalmente se usa para tareas de administración para Ruby On Rails.

Esta herramienta está escrita en Ruby, lo que hace que pueda leer código Ruby para sus tareas. Utiliza Rakefiles para leer de aquí las tareas.

Como ejemplo tenemos la siguiente tarea de Rake:

```ruby
desc "Imprime un recordatorio para comer más manzanas."
task :manzana do
  puts "¡Come más manzanas!"
end
```

Para ejecutar esta tarea tan solo debemos poner en el terminal:

```bash
rake manzana

# "¡Come más manzanas!"
```

### Thor

Es una gran alternativa a Rake, que suele usarse en el desarrollo de programas con interfaz de líneas de comando.

Ejecuta tareas en "_Thorfiles_", usando el comando `thor`. Las tareas tienen acceso a todas las características de Thor, incluyendo las opciones y flags de la línea de comandos al estilo de Unix, y ayuda automática.

### Toys

Este gestor de tareas, lee los archivos del directorio actual y es compatible con las opciones y flags de líneas de comandos al estilo Unix y genera de forma automática ayuda.

Provee funciones que ayudan a la gestión de proyectos complejos, gracias a una mejor organización del cógido, y a que se integra con algunas gemas. Incluye plantillas para generar tareas típicas y provee helpers para desarrollar aplicaciones CLI y controlar subprocesos. Es compatible con Rakefiles.
