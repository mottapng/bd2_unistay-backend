import { Request, Response } from "express";
import { GetImagesUseCase } from "./GetImagesUseCase";

export class GetImagesController {
  async handle(req: Request, res: Response) {
    const { listing } = req.params
    const listing_id = Number(listing);

    const getImagesUseCase = new GetImagesUseCase();
    const result = await getImagesUseCase.execute({
      listing_id
    });

    return res.status(201).json(result);
  }
}