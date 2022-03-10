import { Document, model, Schema } from "mongoose";

interface Mood extends Document {
  date: string;
  value: number;
}

const schema = new Schema<Mood>({
  date: { type: String, required: true },
  value: { type: Number, required: true },
});

// @ts-ignore
export default model<Mood>("mood", schema);
