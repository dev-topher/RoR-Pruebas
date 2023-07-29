# Ejercicios de Pruebas

El siguiente repositorio tiene como propósito mostrar mis resultados en dos pruebas


## Examen 1

- El examen 1 consta de la prueba que me tocó realizar a mí para obtener la certificación.
	> Dentro de la carpeta **Rails-Prueba-TLCert** se encuentra más detalles en el archivo PDF.

    
## Examen 2

- El examen 2 consta de una prueba de similares características para la obtención de certificado, para este examen he creado un vídeo que muestra una manera de sobrellevar el examen y completar el desarrollo.
	> Dentro de la carpeta **covid_retail** se encuentra más detalles en el archivo PDF.
    > El enlace al video es el siguiente: https://youtu.be/WyThHUeeMoc

### Pasos para bootstrap

- agregar bootstrap como gema al proyecto
	> gem install bootstrap
	> gem install jquery-rails
	> gem install popper_js

- agregamos la gema al Gemfile y ejecuta un bundle install
	> bundle add bootstrap
	> bundle add jquery-rails
	> bundle add popper_js

- cambiar el nombre 
	> application.css a application.scss

-  agregar en application.scss la linea
	> @import "bootstrap";

-  agregar a application.js 
	> import "popper"
	> import "bootstrap"

- agregar en config/initializers/assets.rb
	> Rails.application.config.assets.precompile += %w( application.scss bootstrap.min.js popper.js )

- agregar en config/importmap.rb
	> pin "popper", to: 'popper.js', preload: true
	> pin "bootstrap", to: 'bootstrap.min.js', preload: true
