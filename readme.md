# NVX Hotel API


<h3 align="center">🏨 A RESTful API for Hotel Data Management 🏨</h3>

<p align="center">
  A robust backend service for managing hotel listings, recommendations, and static resources, built with Node.js and Express.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Node.js-18.x-green?logo=node.js" alt="Node.js version">
  <img src="https://img.shields.io/badge/Express-4.x-black?logo=express" alt="Express.js version">
  <img src="https://img.shields.io/badge/MySQL-8.x-orange?logo=mysql" alt="MySQL">
  <img src="https://img.shields.io/badge/Prisma-5.x-teal?logo=prisma" alt="Prisma">
</p>

---

## About The Project

NVX Hotel API is a RESTful service designed to manage hotel data efficiently. It provides well-defined endpoints for retrieving hotel listings, recommendations, and serving image assets. Built with a modern backend stack, it serves as a reliable data source for any frontend or third-party application.

## 🛠️ Tech Stack

-   **Runtime:** [Node.js](https://nodejs.org/en/)
-   **Framework:** [Express.js](https://expressjs.com/)
-   **Database:** [MySQL](https://www.mysql.com/)
-   **ORM:** [Prisma](https://www.prisma.io/)
-   **Language:** JavaScript

## 🚀 Getting Started

Follow these steps to set up and run the project locally.

### 1. Prerequisites

Make sure you have the following installed on your machine:
-   [Node.js](https://nodejs.org/en/) (v18.x or later)
-   [npm](https://www.npmjs.com/)
-   A running [MySQL](https://www.mysql.com/) server

### 2. Installation & Setup

1.  **Clone the repository:**
    ```bash
    git clone this project
    cd nvx-hotel-api
    ```

2.  **Install dependencies:**
    ```bash
    npm install
    ```

3.  **Set up the Database:**
    -   Ensure your MySQL server is running.
    -   Create a new database (e.g., `hotel`).
    -   Import the provided `hotel.sql` file into your newly created database.
        ```bash
        # Example command using MySQL CLI
        mysql -u your_username -p hotel < hotel.sql
        ```

4.  **Configure Environment Variables:**
    -   Create a `.env` file in the root of the project.
    -   Copy the contents from `.env.example` or use the template below.
    -   Update the `DATABASE_URL` with your actual database credentials.
        ```env
        # .env
        # Format: mysql://USER:PASSWORD@HOST:PORT/DATABASE
        DATABASE_URL="mysql://root:your_password@localhost:3306/hotel"
        ```

5.  **Generate Prisma Client:**
    After setting up the database and `.env` file, generate the Prisma client.
    ```bash
    npx prisma generate
    ```

### 3. Running the Application

Start the development server with:

```bash
npm run start
```

The API will be available at `http://localhost:3000`.

## 📖 API Documentation

The base URL for all endpoints is `http://localhost:3000/v1`.

---

### **Fetch Home Page Data**

Retrieves a combined list of hotels and hotel recommendations.

-   **Endpoint:** `GET /home`
-   **Success Response:**
    -   **Code:** `200 OK`
    -   **Content:**
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
          ]
        }
        ```
-   **Error Response:**
    -   **Code:** `500 Internal Server Error`
    -   **Content:** `{ "message": "An error occurred" }`

---

### **Fetch Static Images**

Serves static image files for hotels.

-   **Endpoint:** `GET /static/image/{image_filename}`
-   **URL Parameters:**
    -   `image_filename` (string, required): The name of the image file (e.g., `5.jpeg`).
-   **Success Response:**
    -   **Code:** `200 OK`
    -   **Content-Type:** `image/jpeg` (or other appropriate image type)
-   **Error Response:**
    -   **Code:** `404 Not Found`

---

## 🤝 Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1.  **Fork** the Project.
2.  Create your **Feature Branch** (`git checkout -b feature/AmazingFeature`).
3.  **Commit** your Changes (`git commit -m 'feat: Add some AmazingFeature'`).
4.  **Push** to the Branch (`git push origin feature/AmazingFeature`).
5.  Open a **Pull Request**.

## 📄 License

Distributed under the [MIT License](https://opensource.org/license/mit).. See `LICENSE` for more information.

## 📬 Contact

**Satria Nur Saputro**

-   Email: [satrianursaputro06@gmail.com](mailto:satrianursaputro06@gmail.com)
