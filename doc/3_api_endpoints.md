# Hito 3: API End-Points
Peticiones API RESTful para la aplicación Cineópolis desarrollada

# 📁 Colección: Identificación


## End-point: Registrarse
### Método: POST
>```
>http://localhost:3000/users
>```
### Parámetros de la petición

|Parámetro|valor|
|---|---|
|user[email]|admin@cineopolis.com|
|user[password]|admincineopolis|


⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Identificarse
``` json
{
    "user": {
        "id": 1,
        "email": "admin@cineopolis.com",
        "token": "eyJhbGciOiJIUzI1NiJ9.eyJpZCI6MSwiZXhwIjoxNjc1NDIwMTAzfQ.khnkkl5542CKYfn2UjArZvJc4ElKjyzDVlEo1LeQNx8"
    }
}
```
### Método: POST
>```
>http://localhost:3000/users/login
>```
### Parámetros de la petición

|Parámetro|valor|
|---|---|
|user[email]|admin@cineopolis.com|
|user[password]|admincineopolis|


⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Obtener datos de usuario
``` json
{
    "user": {
        "id": 1,
        "email": "admin@cineopolis.com",
        "token": "eyJhbGciOiJIUzI1NiJ9.eyJpZCI6MSwiZXhwIjoxNjc1NDIwMTAzfQ.khnkkl5542CKYfn2UjArZvJc4ElKjyzDVlEo1LeQNx8"
    }
}
```
### Método: GET
>```
>http://localhost:3000/users
>```
### Autorización: Bearer Token

### Parámetros de la petición

|Parámetro|valor|
|---|---|
|user[email]|admin@cineopolis.com|
|user[password]|admincineopolis|

⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃