import express, { Request, Response } from "express";
import moodModel from "../models/daily";

const moodRouter = express.Router();

moodRouter
  .route("/")
  .get((req: Request, res: Response) => {
    moodModel.find({}, (err, moods) => {
      try {
        res.status(200).json(moods);
      } catch (error) {
        res.status(500).send(error);
      }
    });
  })
  .post((req: Request, res: Response) => {
    console.log(req.body);
    try {
      const mood = new moodModel(req.body);
      mood.save();
      res.status(201).send(mood);
    } catch (error) {
      res.status(500).send(error);
    }
  });

export default moodRouter;
