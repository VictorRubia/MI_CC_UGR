# Hito 3: API End-Points
Peticiones API RESTful para la aplicaci贸n Cine贸polis desarrollada

# 馃搧 Colecci贸n: Identificaci贸n


## End-point: Registrarse
### M茅todo: POST
>```
>http://localhost:3000/users
>```
### Par谩metros de la petici贸n

|Par谩metro|valor|
|---|---|
|user[email]|admin@cineopolis.com|
|user[password]|admincineopolis|


鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦?

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
### M茅todo: POST
>```
>http://localhost:3000/users/login
>```
### Par谩metros de la petici贸n

|Par谩metro|valor|
|---|---|
|user[email]|admin@cineopolis.com|
|user[password]|admincineopolis|


鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦?

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
### M茅todo: GET
>```
>http://localhost:3000/users
>```
### Autorizaci贸n: Bearer Token

### Par谩metros de la petici贸n

|Par谩metro|valor|
|---|---|
|user[email]|admin@cineopolis.com|
|user[password]|admincineopolis|

鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦? 鈦?