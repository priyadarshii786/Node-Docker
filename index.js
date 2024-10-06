import express from "express";
import dotenv from "dotenv";
dotenv.config();

const PORT = process.env.PORT || 8080;
const app = express();

app.get("/", (req, res) => res.json({ message: "App is running on the Docker Container!" }));

app.listen(PORT, () => console.log(`Server started at PORT ${PORT}`));