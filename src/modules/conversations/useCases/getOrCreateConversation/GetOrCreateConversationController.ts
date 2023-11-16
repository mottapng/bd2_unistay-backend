import { Request, Response } from "express";
import { CreateConversationUseCase } from "./CreateConversationUseCase";
import { GetConversationUseCase } from "./GetConversationUseCase";

export class GetOrCreateConversationController {
  async handle(req: Request, res: Response) {
    const createConversationUseCase = new CreateConversationUseCase();
    const getConversationUseCase = new GetConversationUseCase();

    const {
      userTwo
    } = req.params;

    let userOne

    if (req.payload)
      userOne = req.payload.user_id

    let conversation = await getConversationUseCase.execute({ userOne, userTwo }) ||
      await getConversationUseCase.execute({ userTwo, userOne });

    if (!conversation) {
      conversation = await createConversationUseCase.execute({ userOne, userTwo });
    }

    return res.status(200).json({ conversation })
  }
}