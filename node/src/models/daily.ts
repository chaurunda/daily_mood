import mongoose from "mongoose";

const Schema = mongoose.Schema;

const moodModel = new Schema({
  date: { type: String, required: true },
  value: { type: Number, required: true },
});

export default mongoose.model("mood", moodModel);
