import express from "express";
import * as bodyParser from "body-parser";
const app = express();
app.use(
  bodyParser.json({
    limit: "50mb",
    verify(req: any, res, buf, encoding) {
      req.rawBody = buf;
    },
  })
);
export { app };
