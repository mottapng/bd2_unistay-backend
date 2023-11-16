import { Request, Response } from "express";
import { GetListingsUseCase } from "./GetListingsUseCase";

export class GetListingsController {
  async handle(req: Request, res: Response) {
    const { search } = req.query

    const getListingsUseCase = new GetListingsUseCase();
    const result = await getListingsUseCase.execute({
      search: search ? String(search) : ''
    });

    return res.status(200).json(result);
  }
}