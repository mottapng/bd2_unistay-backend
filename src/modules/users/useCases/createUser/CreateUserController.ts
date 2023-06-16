import { Request, Response } from "express";
import { CreateUserUseCase } from "./CreateUserUseCase";

export class CreateUserController {
  async handle(req: Request, res: Response) {
    const { email, password, name, cellphone, birth_date, country, uf } = req.body;

    const createUserUseCase = new CreateUserUseCase();

    const result = await createUserUseCase.execute(
      { email, password, name, cellphone, birth_date, country, uf }
    )

    return res.status(201).json(result);
  }
}