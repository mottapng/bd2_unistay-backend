import { Request, Response } from "express";
import { GetUserListingsUseCase } from "./GetUserListingsUseCase";

export class GetUserListingsController {
  async handle(req: Request, res: Response) {

    const { user_id } = req.params;

    if (!user_id) {
      return res.status(400).json({ error: 'User Not Provided' });
    }

    const getUserListingsUseCase = new GetUserListingsUseCase();
    const result = await getUserListingsUseCase.execute({ user_id });

    return res.status(200).json(result);
  }
}