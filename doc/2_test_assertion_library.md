# Hito 2

## Librería de aserciones

### RSpec y Minitest

Ambos marcos de trabajo para pruebas incluyen sus propias librerías de aserciones, las cuales son las más usadas y más aceptadas en el mundo del desarrollo en Ruby On Rails.

Se pueden incluir algunas gemas para añadir más aserciones como [`minitest-bonus-assertions`](https://github.com/halostatue/minitest-bonus-assertions) para MiniTest.

### [Solid Assert](https://github.com/jorgemanrubia/solid_assert)

Es una implementación simple de una utilidad de aserción para Ruby. Algunos ejemplos de aserciones son los siguientes:

```ruby
assert some_string != "unexpected value"
assert user.authenticated?

assert apples_count > 5, "Not enough apples!"
assert !clients.empty?, "The list must NOT be empty!"
```