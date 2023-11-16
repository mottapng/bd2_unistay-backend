import { Request, Response } from "express";
import { GetAllConversationsUseCase } from "./GetAllConversationsUseCase";

export class GetAllConversationsController {
  async handle(req: Request, res: Response) {
    const getAllConversationsUseCase = new GetAllConversationsUseCase();

    let user_id

    if (req.payload)
      user_id = req.payload.user_id

    let conversations = await getAllConversationsUseCase.execute({ user_id })

    return res.status(200).json({ conversations })
  }
}