import { Request, Response } from "express";
import { CreateMessageUseCase } from "./CreateMessageUseCase";

export class CreateMessageController {
  async handle(req: Request, res: Response) {
    const createMessageUseCase = new CreateMessageUseCase();

    const { content } = req.body;
    const { conversation_id } = req.params;

    let user_id;

    if (req.payload) {
      user_id = req.payload.user_id;
    }

    let message = await createMessageUseCase.execute({ message: content, conversation_id, user_id });

    return res.status(201).json({ message });
  }
}