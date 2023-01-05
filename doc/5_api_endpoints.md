# Hito 5: API End-Points
Peticiones API RESTful para la aplicación Cineópolis desarrollada

# 📁 Colección: Películas

## End-point: Obtener películas
``` json
[
    {
        "id": 1,
        "title": "Avatar",
        "synopsis": "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home",
        "launch_date": "2009-12-18T00:00:00.000Z",
        "age_classification": "+13",
        "length": "162",
        "genre": "Acción, Aventura, Fantasía",
        "director": "James Cameron",
        "poster": "https://m.media-amazon.com/images/M/MV5BNjA3NGExZDktNDlhZC00NjYyLTgwNmUtZWUzMDYwMTZjZWUyXkEyXkFqcGdeQXVyMTU1MDM3NDk0._V1_SX300.jpg",
        "rating_avg": "8.0",
        "created_at": "2022-11-07T11:49:32.713Z",
        "updated_at": "2022-11-20T10:44:02.268Z",
        "url": "http://localhost:3000/movies/1.json"
    }
]

```
### Método: GET
>```
>http://localhost:3000/movies
>```
### 🔑 Autenticación bearer

|Parámetro|Valor|Tipo|
|---|---|---|
|token| token |string|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Añadir película
``` json
{
    "id": 2,
    "title": "Avengers: Endgame",
    "synopsis": "After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe.",
    "launch_date": "2019-04-26T00:00:00.000Z",
    "age_classification": " 13",
    "length": "181",
    "genre": "Action, Drama",
    "director": "Anthony Russo, Joe Russo",
    "poster": "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_SX300.jpg",
    "rating_avg": "8.0",
    "created_at": "2022-11-21T10:44:44.624Z",
    "updated_at": "2022-11-21T10:44:44.624Z",
    "url": "http://localhost:3000/movies/2.json"
}

```
### Método: POST
>```
>http://localhost:3000/movies?title=Los renglones torcidos de Dios&synopsis=Follows a woman checking into a psychiatric ward to investigate a homicide&launch_date=6/10/2022&age_classification=+18&length=154&genre=Mystery&director=Oriol Paulo&poster=https://m.media-amazon.com/images/M/MV5BNDhhNjFiZGYtM2NhZC00MWRlLWI4ZjctYzgwNzhkODhlMTkxXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_SX300.jpg&rating_avg=7.2
>```
### Parámetros de la petición

|Parámetro|Valor|
|---|---|
|title|Los renglones torcidos de Dios|
|synopsis|Follows a woman checking into a psychiatric ward to investigate a homicide|
|launch_date|6/10/2022|
|age_classification|+18|
|length|154|
|genre|Mystery|
|director|Oriol Paulo|
|poster|https://m.media-amazon.com/images/M/MV5BNDhhNjFiZGYtM2NhZC00MWRlLWI4ZjctYzgwNzhkODhlMTkxXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_SX300.jpg|
|rating_avg|7.2|


### 🔑 Autenticación bearer

|Parámetro|Valor|Tipo|
|---|---|---|
|token| token |string|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Actualizar película
``` json
{
    "id": 2,
    "title": "Los Vengadores: EndGame",
    "synopsis": "After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe.",
    "launch_date": "2019-04-26T00:00:00.000Z",
    "age_classification": " 13",
    "length": "181",
    "genre": "Action, Drama",
    "director": "Anthony Russo, Joe Russo",
    "poster": "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_SX300.jpg",
    "rating_avg": "8.0",
    "created_at": "2022-11-21T10:44:44.624Z",
    "updated_at": "2022-11-21T10:46:41.028Z",
    "url": "http://localhost:3000/movies/2.json"
}

```
### Método: PUT
>```
>http://localhost:3000/movies/2?title=Los Vengadores: EndGame
>```
### Parámetros de la petición

|Parámetro|Valor|
|---|---|
|title|Los Vengadores: EndGame|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Borrar película
Borrar la película con id = 1
### Método: DELETE
>```
>http://localhost:3000/movies/6
>```
### 🔑 Autenticación bearer

|Parámetro|Valor|Tipo|
|---|---|---|
|token| token |string|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Añadir pelicula sin datos
### Método: POST
>```
>http://localhost:3000/movies?title=Los renglones torcidos de Dios
>```
### Parámetros de la petición

|Parámetro|Valor|
|---|---|
|title|Los renglones torcidos de Dios|


### 🔑 Autenticación bearer

|Parámetro|Valor|Tipo|
|---|---|---|
|token| token |string|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃
# 📁 Colección: Sesiones


## End-point: Obtener sesiones
``` json
[
    {
        "id": 2,
        "movie_id": 1,
        "times": "16:00",
        "dates": "18/11/2022",
        "created_at": "2022-11-16T15:51:22.675Z",
        "updated_at": "2022-11-18T09:56:57.320Z",
        "url": "http://localhost:3000/sessions/2.json"
    },
    {
        "id": 3,
        "movie_id": 1,
        "times": "18:00",
        "dates": "18/11/2022",
        "created_at": "2022-11-16T16:04:24.198Z",
        "updated_at": "2022-11-18T10:17:33.049Z",
        "url": "http://localhost:3000/sessions/3.json"
    },
    {
        "id": 4,
        "movie_id": 1,
        "times": "18:00",
        "dates": "20/11/2022",
        "created_at": "2022-11-20T10:57:49.197Z",
        "updated_at": "2022-11-20T10:57:49.197Z",
        "url": "http://localhost:3000/sessions/4.json"
    },
    {
        "id": 5,
        "movie_id": 1,
        "times": "10:00",
        "dates": "20/11/2022",
        "created_at": "2022-11-20T11:09:51.742Z",
        "updated_at": "2022-11-20T11:09:51.742Z",
        "url": "http://localhost:3000/sessions/5.json"
    },
    {
        "id": 6,
        "movie_id": 1,
        "times": "10:00",
        "dates": "21/11/2022",
        "created_at": "2022-11-21T10:50:03.617Z",
        "updated_at": "2022-11-21T10:50:03.617Z",
        "url": "http://localhost:3000/sessions/6.json"
    }
]

```
### Método: GET
>```
>http://localhost:3000/sessions/
>```
### 🔑 Autenticación bearer

|Parámetro|Valor|Tipo|
|---|---|---|
|token| token |string|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Crear una sesión para una película
``` json
{
    "id": 1,
    "movie_id": 1,
    "times": "10:00",
    "dates": "21/11/2022",
    "created_at": "2022-11-07T11:49:32.713Z",
    "updated_at": "2022-11-20T10:44:02.268Z",
    "url": "http://localhost:3000/sessions/6.json",
    "title": "Avatar",
    "synopsis": "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home",
    "launch_date": "2009-12-18T00:00:00.000Z",
    "age_classification": "+13",
    "length": "162",
    "genre": "Acción, Aventura, Fantasía",
    "director": "James Cameron",
    "poster": "https://m.media-amazon.com/images/M/MV5BNjA3NGExZDktNDlhZC00NjYyLTgwNmUtZWUzMDYwMTZjZWUyXkEyXkFqcGdeQXVyMTU1MDM3NDk0._V1_SX300.jpg",
    "rating_avg": "8.0"
}

```
### Método: POST
>```
>http://localhost:3000/sessions/?session[movie_id]=1&session[times]=10:00&session[dates]=21/11/2022&session[num_tickets]=50&session[price]=8.5
>```
### Parámetros de la petición

|Parámetro|Valor|
|---|---|
|session[movie_id]|1|
|session[times]|10:00|
|session[dates]|21/11/2022|
|session[num_tickets]|50|
|session[price]|8.5|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Editar una sesión para una película
``` json
{
    "id": 1,
    "movie_id": 1,
    "times": "18:00",
    "dates": "18/11/2022",
    "created_at": "2022-11-07T11:49:32.713Z",
    "updated_at": "2022-11-20T10:44:02.268Z",
    "url": "http://localhost:3000/sessions/3.json",
    "title": "Avatar",
    "synopsis": "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home",
    "launch_date": "2009-12-18T00:00:00.000Z",
    "age_classification": "+13",
    "length": "162",
    "genre": "Acción, Aventura, Fantasía",
    "director": "James Cameron",
    "poster": "https://m.media-amazon.com/images/M/MV5BNjA3NGExZDktNDlhZC00NjYyLTgwNmUtZWUzMDYwMTZjZWUyXkEyXkFqcGdeQXVyMTU1MDM3NDk0._V1_SX300.jpg",
    "rating_avg": "8.0"
}

```
### Método: PUT
>```
>http://localhost:3000/sessions/3/?session[movie_id]=2&session[times]=16:30&session[dates]=18/11/2022&session[num_tickets]=50&session[price]=8.5
>```
### Parámetros de la petición

|Parámetro|Valor|
|---|---|
|session[movie_id]|2|
|session[times]|16:30|
|session[dates]|18/11/2022|
|session[num_tickets]|50|
|session[price]|8.5|


### 🔑 Autenticación bearer

|Parámetro|Valor|Tipo|
|---|---|---|
|token| token |string|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Eliminar una sesión para una película
Se inserta el id de la sesión que se quiere eliminar. id = 1
### Método: DELETE
>```
>http://localhost:3000/sessions/1
>```
### 🔑 Autenticación bearer

|Parámetro|Valor|Tipo|
|---|---|---|
|token| token |string|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃
# 📁 Colección: Cartelera


## End-point: Obtener cartelera
``` json
[
    {
        "times": [
            "18:00",
            "10:00"
        ],
        "movie": {
            "id": 1,
            "title": "Avatar",
            "synopsis": "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home",
            "launch_date": "2009-12-18T00:00:00.000Z",
            "age_classification": "+13",
            "length": "162",
            "genre": "Acción, Aventura, Fantasía",
            "director": "James Cameron",
            "poster": "https://m.media-amazon.com/images/M/MV5BNjA3NGExZDktNDlhZC00NjYyLTgwNmUtZWUzMDYwMTZjZWUyXkEyXkFqcGdeQXVyMTU1MDM3NDk0._V1_SX300.jpg",
            "rating_avg": "8.0"
        }
    }
]

```
### Método: GET
>```
>http://localhost:3000/cartelera?dates=20/11/2022
>```
### Parámetros de la petición

|Parámetro|Valor|
|---|---|
|dates|20/11/2022|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃
# 📁 Colección: Autenticación


## End-point: Registrarse
### Método: POST
>```
>http://localhost:3000/users?user[email]=admin@cineopolis.com&user[password]=admincineopolis
>```
### Parámetros de la petición

|Parámetro|Valor|
|---|---|
|user[email]|admin@cineopolis.com|
|user[password]|admincineopolis|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Identificarse
### Método: POST
>```
>http://localhost:3000/users/login?user[email]=admin@cineopolis.com&user[password]=admincineopolis
>```
### Parámetros de la petición

|Parámetro|Valor|
|---|---|
|user[email]|admin@cineopolis.com|
|user[password]|admincineopolis|

⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Usuarios
### Método: GET
>```
>http://localhost:3000/user
>```
### 🔑 Autenticación bearer

|Parámetro|Valor|Tipo|
|---|---|---|
|token| token |string|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃
# 📁 Colección: Compras


## End-point: Comprar sesión
``` json
{
    "id": 3,
    "email": "prueba@prueba.com",
    "num_tickets": 2,
    "price": "17.0",
    "timestamp": "2023-01-05T15:35:00.000Z",
    "session_id": 5,
    "created_at": "2023-01-05T15:35:06.045Z",
    "updated_at": "2023-01-05T15:35:06.045Z"
}

```
### Método: POST
>```
>http://localhost:3000/sessions/5/comprar/?num_tickets=2&email=prueba@prueba.com
>```
### Parámetros de la petición

|Parámetro|Valor|
|---|---|
|num_tickets|2|
|email|prueba@prueba.com|

⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Ver compras realizadas
``` json
[
    {
        "id": 2,
        "email": "prueba@prueba.com",
        "num_tickets": 2,
        "price": "17.0",
        "timestamp": "2023-01-05T15:28:00.000Z",
        "session_id": 5,
        "url": "http://localhost:3000/purchases/2.json",
        "session": {
            "id": 5,
            "movie_id": 1,
            "times": "10:00",
            "dates": "20/11/2022"
        }
    },
    {
        "id": 3,
        "email": "prueba@prueba.com",
        "num_tickets": 2,
        "price": "17.0",
        "timestamp": "2023-01-05T15:35:00.000Z",
        "session_id": 5,
        "url": "http://localhost:3000/purchases/3.json",
        "session": {
            "id": 5,
            "movie_id": 1,
            "times": "10:00",
            "dates": "20/11/2022"
        }
    }
]

```
### Método: GET
>```
>http://localhost:3000/purchases
>```
### 🔑 Autenticación bearer

|Parámetro|Valor|Tipo|
|---|---|---|
|token| token |string|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Ver una compra específica
``` json
{
    "id": 2,
    "email": "prueba@prueba.com",
    "num_tickets": 2,
    "price": "17.0",
    "timestamp": "2023-01-05T15:28:00.000Z",
    "session_id": 5,
    "url": "http://localhost:3000/purchases/2.json",
    "session": {
        "id": 5,
        "movie_id": 1,
        "times": "10:00",
        "dates": "20/11/2022",
        "num_tickets": 44,
        "price": "8.5",
        "created_at": "2022-11-20T11:09:51.742Z",
        "updated_at": "2023-01-05T15:35:06.023Z",
        "url": "http://localhost:3000/sessions/5.json",
        "movie": {
            "id": 1,
            "title": "Avatar",
            "synopsis": "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home",
            "launch_date": "2009-12-18T00:00:00.000Z",
            "age_classification": "+13",
            "length": "162",
            "genre": "Acción, Aventura, Fantasía",
            "director": "James Cameron",
            "poster": "https://m.media-amazon.com/images/M/MV5BNjA3NGExZDktNDlhZC00NjYyLTgwNmUtZWUzMDYwMTZjZWUyXkEyXkFqcGdeQXVyMTU1MDM3NDk0._V1_SX300.jpg",
            "rating_avg": "8.0",
            "created_at": "2022-11-07T11:49:32.713Z",
            "updated_at": "2022-11-20T10:44:02.268Z",
            "url": "http://localhost:3000/movies/1.json"
        }
    }
}

```
### Método: GET
>```
>http://localhost:3000/purchases/2
>```
### 🔑 Autenticación bearer

|Parámetro|Valor|Tipo|
|---|---|---|
|token| token |string|