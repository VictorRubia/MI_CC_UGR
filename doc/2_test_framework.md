# Hito 2

## Marco de trabajo para pruebas

Ruby On Rails es un marco de trabajo que incorpora casi todo lo necesario, haciendo hincapié en usar convenciones antes que hacer configuraciones propias. Minitest es el framework que incorpora Rails como parte de esta convención. Es rápido, ligero y provee muchas aserciones para que los tests sean legibles y limpios.

### RSpec

Es el marco de trabajo para pruebas más popular. Tiene los mismos objetivos que Minitest pero se centra en especificaciones legibles, describiendo cómo se debería comportar la aplicación con un lenguaje muy cercano al inglés.

Este marco de trabajo para pruebas se centra en BDD y en la escritura de especificaciones. Los test verifican el código de la aplciación y proveen expresiones detalladas acerca de cómo debe comportarse la aplicación.

Como ejemplo de test unitario tenemos:

```ruby
require 'rails_helper'

RSpec.describe Article, type: :model do

 context 'validations' do
  article = Article.new
  article.valid?
  it 'must have a title' do
   expect(article.errors.messages[:title]).to include("can't be blank")
  end

  it 'must have a body' do
   expect(article.errors.messages[:body]).to include("can't be blank")
  end
 end
end
```

```bash
Article
 validations
  must have a title (FAILED - 1)
  
Failures:

 1) Article validations must have a title
   Failure/Error: expect(article.errors.messages[:title]).to include("can't be blank")
    expected ["is too short (minimum is 5 characters)"] to include "can't be blank"
   # ./spec/models/article_spec.rb:9:in `block (3 levels) in <top (required)>'
   
Finished in 0.02552 seconds (files took 1.3 seconds to load)
1 examples, 1 failures

Failed examples:
rspec ./spec/models/article_spec.rb:8 # Article validations must have a title
```

Como vemos, tiene una escritura bastante a alto nivel, alejándose bastante del lenguaje Ruby.

### MiniTest

Es el marco de trabajo que incorpora Rails por convención. Su legibilidad erradica bastante en saber Ruby. Es compatible con TDD, BDD, _mocking_ y _benchmarking_.

Como ejemplo de test unitario tenemos:

```ruby
require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  setup do
    @article = articles(:one)
  end

  def test_validates_title
    @article.title = nil
    assert @article.valid?
    assert_equal ["can't be blank"], @article.errors[:title]
  end
  
end
```

```bash
F

Failure:
ArticleTest#test_validates_body [/Users/williamkennedy/projects/honeybadger/test_minitest/test/models/article_test.rb:17]:
Expected: ["can't be blank"]
 Actual: []

rails test test/models/article_test.rb:14
Finished in 0.015373s, 130.0982 runs/s, 260.1964 assertions/s.
1 runs, 2 assertions, 1 failures, 0 errors, 0 skips
```

Como vemos, tiene una escritura bastante cercana al lenguaje Ruby.

### Test-unit

Es un marco de trabajo para pruebas basado en los principios de xUnit. Este principio fue creado por Kent Beck, creador de la metodología del Extreme Programming para SUnit de Smalltalk.

Permite escribir tests, comprobar los resultados y automatizar el testeo en Ruby.

Esta librería es la que originalmente usa Ruby para sus tests unitarios y sigue activo aún a día de hoy.