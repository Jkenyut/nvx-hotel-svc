# NVX Hotel API

A RESTful API for hotel data management.

## Getting Started

### 1. Import Database

- Import the provided `hotel.sql` file into your MySQL database.
- **Note:** Auto-migration is disabled.

### 2. Configure Environment Variables

Create a `.env` file in the project root with the following content:

```
DATABASE_URL="mysql://root@localhost:3306/hotel"
```

### 3. Install Dependencies

Run the following command to install all required packages:

```bash
npm install
```

### 4. Start the Application

Start the server with:

```bash
npm run start
```

### 5. API Endpoints

- **Fetch Home Data:**  
  `GET http://localhost:3000/v1/home`

- **Fetch Images:**  
  `GET http://localhost:3000/static/image/{image_filename}`

### 6. Example JSON Response

```json
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
    }
    // ...more hotels...
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
    }
    // ...more recommendations...
  ]
}
```

### 7. Additional Resources

- [Postman API Collection](#) *(link to be provided)*

---

## Contributing

Contributions are highly appreciated! To contribute:

1. Fork this repository.
2. Create a new branch:
   ```bash
   git checkout -b feature/your-feature
   ```
3. Commit your changes with clear messages.
4. Push your branch:
   ```bash
   git push origin feature/your-feature
   ```
5. Open a pull request describing your changes.

Please ensure your code adheres to the project's coding standards and includes relevant tests and documentation.

## License

This project is licensed under the [MIT License](https://opensource.org/license/mit). See the `LICENSE` file for
details.

## Contact

For questions, suggestions, or feedback, please contact:

**Satria Nur Saputro**  
Email: [satrianursaputro06@gmail.com](mailto:satrianursaputro06@gmail.com)