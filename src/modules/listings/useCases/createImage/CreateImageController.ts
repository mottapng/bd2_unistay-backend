import { Request, Response } from "express";
import { CreateImageUseCase } from "./CreateImageUserCase";

export class CreateImageController {
  async handle(req: Request, res: Response) {
    const createImageUseCase = new CreateImageUseCase();

    const { listing } = req.params;
    const listing_id = Number(listing);

    const files = req.files;

    const images = await createImageUseCase.execute(files, listing_id)

    return res.status(201).json(images);
  }
}