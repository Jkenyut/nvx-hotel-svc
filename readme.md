## Run Project

1. Link API postman
2. Dump Sql extension to your mysql database because program disable auto-migrate (hotel.sql import in your database)
3. Build enviroment `.env`

```
DATABASE_URL="mysql://root@localhost:3306/hotel"
```

4. Run to download go package

```azure
   npm i
```

5. Run program

```azure
npm run start
```

6. API URI

```

 GET (http://localhost:3000/v1/home) untuk fetch data home
 GET (http://localhost:3000/static/image/{berdasarkan json image}) untuk fetch data gambar
```

7. EXAMPLE JSON RESPONSE

```
{
    "hotelSearch": [
        {
            "id": 5,
            "name": "santika",
            "image": "5.jpeg",
            "star": 5,
            "review": 5,
            "price": "359921",
            "city": "pekalongan"
        },
        {
            "id": 13,
            "name": "hotel borabudur",
            "image": "13.jpeg",
            "star": 5,
            "review": 3,
            "price": "236200",
            "city": "jakarta"
        },
        {
            "id": 4,
            "name": "sahid mandarin",
            "image": "4.jpeg",
            "star": 4,
            "review": 2,
            "price": "349859",
            "city": "pekalongan"
        },
        {
            "id": 6,
            "name": "dafam pekalongan",
            "image": "6.jpeg",
            "star": 4,
            "review": 1,
            "price": "157288",
            "city": "pekalongan"
        },
        {
            "id": 11,
            "name": "reddoodz",
            "image": "11.jpeg",
            "star": 4,
            "review": 5,
            "price": "131749",
            "city": "jakarta"
        },
        {
            "id": 14,
            "name": "kempinski",
            "image": "14.jpeg",
            "star": 4,
            "review": 3,
            "price": "497115",
            "city": "jakarta"
        },
        {
            "id": 15,
            "name": "intercontinental",
            "image": "15.jpeg",
            "star": 4,
            "review": 5,
            "price": "112394",
            "city": "jakarta"
        },
        {
            "id": 18,
            "name": "mulia senayan",
            "image": "18.jpeg",
            "star": 4,
            "review": 5,
            "price": "129819",
            "city": "jakarta"
        }
    ],
    "hotelRecommendations": [
        {
            "id": 13,
            "name": "hotel borabudur",
            "image": "13.jpeg",
            "star": 5,
            "review": 3,
            "price": "236200",
            "city": "jakarta"
        },
        {
            "id": 11,
            "name": "reddoodz",
            "image": "11.jpeg",
            "star": 4,
            "review": 5,
            "price": "131749",
            "city": "jakarta"
        },
        {
            "id": 14,
            "name": "kempinski",
            "image": "14.jpeg",
            "star": 4,
            "review": 3,
            "price": "497115",
            "city": "jakarta"
        },
        {
            "id": 15,
            "name": "intercontinental",
            "image": "15.jpeg",
            "star": 4,
            "review": 5,
            "price": "112394",
            "city": "jakarta"
        },
        {
            "id": 18,
            "name": "mulia senayan",
            "image": "18.jpeg",
            "star": 4,
            "review": 5,
            "price": "129819",
            "city": "jakarta"
        },
        {
            "id": 10,
            "name": "sedang sari",
            "image": "10.jpeg",
            "star": 3,
            "review": 5,
            "price": "274942",
            "city": "jakarta"
        },
        {
            "id": 17,
            "name": "yuan garden",
            "image": "17.jpeg",
            "star": 3,
            "review": 5,
            "price": "312825",
            "city": "jakarta"
        },
        {
            "id": 12,
            "name": "artotel",
            "image": "12.jpeg",
            "star": 2,
            "review": 5,
            "price": "173985",
            "city": "jakarta"
        }
    ]
}
```
