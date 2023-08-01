//import library
const express = require("express");

//import handler
const hotelControllers = require("../controllers/hotel");
const router = express.Router();

router.get("/home", hotelControllers.hotelHome);
module.exports = router;
