# Prueba Certificación Rails

## Entorno

Mi entorno de prueba posee las siguientes características:

* Linux Mint 20.04 Cinnamon

* Ruby 3.1.1p18 (2022-02-18 revision 53f5fc4236) [x86_64-linux]

* Rails 7.0.5

* psql (PostgreSQL) 14.7 (Ubuntu 14.7-0ubuntu0.22.04.1)

## Gemas

* gem "bootstrap", "~> 5.2"
* gem "jquery-rails", "~> 4.5"
* gem "popper_js", "~> 2.11"
* gem "figaro" , "~> 1.2"
* gem "faker"
* gem "figaro"

## Instalación

Lo primero es descargar el proyecto con el entorno previamente mencionado

Lo siguiente es ejecutar un:

```bash
bundle install
```

en la terminal al estar puesto en la carpeta del proyecto para que instale todas las gemas con las versiones especificadas.

--------------------------------------------------------------------------------

También es necesario generar el archivo de entorno con la gema Figaro, la cual, utiliza el siguiente comando en terminal:

```bash
bundle exec figaro install
```

el cual crea un archivo "application.yml" en donde se deben introducir las siguientes variables de entorno para el correcto funcionamiento:

| Key                    | Value                                                |
| :--------------------- | :--------------------------------------------------- |
| `db_development`       | Nombre de la base de datos de desarrollo             |
| `db_production`        | Nombre de la base de datos de producción             |
| `db_test`              | Nombre de la base de datos de testing                |
| `db_usuario`           | Usuario con acceso a la base de datos                |
| `access_key_id`        | Key del bucket a utilizar de amazon                  |
| `secret_access_key`    | Key secreta del bucket a utilizar de amazon          |
| `region_amazon`        | Región del bucket                                    |
| `bucket`               | Nombre del bucket                                    |


Un ejemplo de cómo debería verse un valor es:

```yml
db_development: miprueba_development
```

Una vez realizado estos pasos puedes usar:

```bash
rails s
```

para correr el proyecto y probarlo tú mismo.