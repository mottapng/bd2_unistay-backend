import { Request, Response } from "express";
import { DeleteListingUseCase } from './DeleteListingUseCase';

export class DeleteListingController {
  async handle(req: Request, res: Response) {
    const deleteListingUseCase = new DeleteListingUseCase();

    const { listing_id } = req.params;

    let user_id

    if (req.payload)
      user_id = req.payload.user_id

    await deleteListingUseCase.execute({ listing_id, user_id })

    return res.status(204).json({ message: "Listing deleted successfully" });
  }
}