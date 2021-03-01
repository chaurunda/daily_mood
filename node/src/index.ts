import bodyParser from "body-parser";
import cors from "cors";
import express from "express";
import mongoose from "mongoose";

import { router } from "./routes";

const app = express();
const port = process.env.PORT || 5656;
// Connecting to the database
mongoose
  .connect(
    "mongodb://localhost/mood",
    // 'mongodb+srv://admin:pass1234@cluster0-3q8op.mongodb.net/jcc?retryWrites=true&w=majority',
    {
      useNewUrlParser: true,
      useUnifiedTopology: true,
    }
  )
  .catch((e) => {
    console.error("Cannot connect to database", e);
  });

// setting CORS
app.use(cors());

// setting body parser middleware
app.use(bodyParser.json());
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
);

// API routes
app.use("/api", router);

// Running the server
app.listen(port, () => {
  console.log(`http://localhost:${port}`);
});
