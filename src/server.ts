import "express-async-errors"
import express, { NextFunction, Request, Response } from 'express';
import cors from 'cors';

import { Server } from 'socket.io';
import http from 'http';

import { routes } from './routes';
import { AppError } from "./errors/AppError";
import dotenv from 'dotenv'

const app = express();
const httpServer = http.createServer(app);
const io = new Server(httpServer, {
  cors: {
    origin: '*',
  }
});

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

io.on('connection', (socket) => {
  console.log('New connection:', socket.id);

  socket.on('send_message', ({ conversation_id, content, sender_id, created_at }) => {
    const channelKey = `messages:${conversation_id}`;
    io.to(channelKey).emit('new_message', {
      content,
      sender_id,
      created_at
    });
  });

  socket.on('join_conversation', (conversation_id) => {
    const channelKey = `messages:${conversation_id}`;
    socket.join(channelKey);
    console.log(`Socket ${socket.id} joined ${channelKey}`);
  });

  socket.on('disconnect', () => {
    console.log(`User ${socket.id} disconnected`);
  });
});

httpServer.listen(5000, () => {
  console.log('Server is running on port 5000 🚀');
});
