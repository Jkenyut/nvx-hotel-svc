const { prisma } = require("../connectDB");
const { errorData } = require("./error");
const { Prisma } = require("@prisma/client");
const hotelHome = async (req, res, next) => {
  try {
    const { name = "" } = req.query;
    const contains = `%${name}%`;
    console.log(contains);
    const hotelSearch = await prisma.$queryRaw(
      Prisma.sql`SELECT * FROM profile WHERE name LIKE ${contains} OR city LIKE ${contains} ORDER BY star DESC LIMIT 8;`
    );

    console.log(hotelSearch.length);
    if (hotelSearch.length === 0) {
      console.log("jajaj");
      return next(errorData("data hotel tidak ada", 404));
    }
    const containsCity = hotelSearch[0].city;

    const hotelRecommendations = await prisma.$queryRaw(
      Prisma.sql`select * from profile where city not like ${containsCity}  order by star DESC limit 8;`
    );
    console.log("mssm");
    return res.status(201).json({ hotelSearch, hotelRecommendations });
  } catch (err) {
    next(err);
  }
};

module.exports = { hotelHome };
