import { Request, Response } from "express";
import { CreateImageUseCase } from "./CreateImageUserCase";

export class CreateImageController {
  async handle(req: Request, res: Response) {
    const createImageUseCase = new CreateImageUseCase();

    const { listing_id } = req.params;

    const files = req.files;

    const images = await createImageUseCase.execute(files, listing_id)

    return res.status(201).json(images);
  }
}