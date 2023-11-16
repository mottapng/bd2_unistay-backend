import { Request, Response } from "express";
import { GetListingUseCase } from "./GetListingUseCase";

export class GetListingController {
  async handle(req: Request, res: Response) {
    const { listing_id } = req.params

    const getListingUseCase = new GetListingUseCase();
    const result = await getListingUseCase.execute({
      listing_id
    });

    return res.status(201).json(result);
  }
}