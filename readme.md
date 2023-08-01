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
