const express = require("express");
const swaggerUI = require("swagger-ui-express");
const swaggerJsDoc = require("swagger-jsdoc");
const cors = require("cors");
const app = express();
const port = process.env.PORT || 3001;
const hostname = "localhost";
const programmingLanguagesRouter = require("./routes/programmingLanguages");

const options = {
  definition: {
    openapi: "3.0.0",
    info: {
      title: "Library API",
      version: "1.0.0",
      description: "A simple Express library API",
    },
    /*
    servers: [
      {
        url: "http://localhost:3001",
      },
    ],
  */
  },
  apis: ["./routes/*.js"],
};

const specs = swaggerJsDoc(options);

app.use(express.json());
app.use(
  express.urlencoded({
    extended: true,
  })
);

app.use(cors());

//app.use(cors({ origin: true, credentials: true }));

app.get("/", (req, res) => {
  //res.header("Access-Control-Allow-Origin", "*");
  res.json({ message: "ok" });
});

app.use("/api-docs", swaggerUI.serve, swaggerUI.setup(specs));

app.use("/programming-languages", programmingLanguagesRouter);

/* Error handler middleware */
app.use((err, req, res, next) => {
  const statusCode = err.statusCode || 500;
  console.error(err.message, err.stack);
  res.status(statusCode).json({ message: err.message });

  return;
});

// Prints a log once the server starts listening
app.listen(port, "46.101.222.19", () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
