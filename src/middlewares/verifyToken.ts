import { Request, Response, NextFunction } from 'express';
import jwt, { JwtPayload } from 'jsonwebtoken';
import { AppError } from '../errors/AppError';

declare global {
  namespace Express {
    interface Request {
      payload?: JwtPayload;
    }
  }
}

export const verifyToken = (req: Request, res: Response, next: NextFunction) => {
  const token = req.headers.authorization?.split(' ')[1];

  if (!token) {
    throw new AppError('Authentication token is missing', 401);
  }

  if (!process.env.JWT_SECRET) {
    throw new AppError('Server missing secret', 500);
  }

  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET) as JwtPayload;
    req.payload = decoded;
    next();
  } catch (error) {
    throw new AppError('Invalid authentication token', 401);
  }
};