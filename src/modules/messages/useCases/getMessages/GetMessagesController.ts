import { Request, Response } from "express";
import { GetMessagesUseCase } from "./GetMessagesUseCase";

export class GetMessagesController {
  async handle(req: Request, res: Response) {
    const getMessagesUseCase = new GetMessagesUseCase();

    const { conversation_id } = req.params;

    const user = req?.payload?.user_id;

    const messages = await getMessagesUseCase.execute(conversation_id, user);

    return res.status(200).json({ messages });
  }
}