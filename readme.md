## Language School Laravel

Este é um exercício de desenvolvimento fullstack em PHP utilizando o framework Laravel.
A aplicação contempla o cadastro de dados pessoais e de pagamento de uma escola de idiomas.

## Requisitos

* PHP 7 ^
* MySQL 5.7 ^
* Composer 1.5 ^
* NPM 3.10 ^

## Instalação

**Banco de dados**

Execute no seu banco de dados os scripts localizados na pasta `misc/database`: `create_schema.sql` e `create_user.sql`, `create_tables.sql`.

**Aplicação**

```
composer install
```

```
npm install
```

## Executando a aplicação

* Execute o comando:
```
php artisan serve
```

* Abra http://localhost:8000 em um navegador.

## `TODO`

- [x] Modelagem de dados
- [ ] ORM e CRUD
- [ ] Serviços REST
- [ ] Aplicação front-end