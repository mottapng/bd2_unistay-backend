import "express-async-errors"
import express, { NextFunction, Request, Response } from 'express';
import cors from 'cors';

import { routes } from './routes';
import { AppError } from "./errors/AppError";
import dotenv from 'dotenv'

const app = express();

app.use(express.json());
app.use(cors());

dotenv.config();

app.use(routes);
app.use((err: Error, request: Request, response: Response, next: NextFunction) => {
  if (err instanceof AppError) {
    return response.status(err.statusCode).json({
      status: "error",
      message: err.message
    });
  }

  return response.status(500).json({
    status: "error",
    message: `Internal server error - ${err.message}`
  })
})

app.listen(5000, () => console.log('Server is running on port 5000 🚀'));
