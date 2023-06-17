import { Request, Response } from "express";
import { CreateListingUseCase } from './CreateListingUseCase';
import { CreateAddressUseCase } from "./CreateAddressUseCase";

export class CreateListingController {
  async handle(req: Request, res: Response) {
    const createAddressUseCase = new CreateAddressUseCase();
    const createListingUseCase = new CreateListingUseCase();

    const {
      name,
      description,
      private_room,
      price,
      qnt_bedrooms,
      qnt_bathrooms,
      qnt_garage,
      type_id,
      street,
      number,
      uf,
      city
    } = req.body;


    let user_id

    if (req.payload)
      user_id = req.payload.user_id

    const address = await createAddressUseCase.execute(
      { street, number, uf, city }
    )

    const address_id = address.address_id

    const listing = await createListingUseCase.execute(
      { name, description, private_room, price, qnt_bedrooms, qnt_bathrooms, qnt_garage, type_id, user_id, address_id }
    )

    return res.status(201).json({ listing, address });
  }
}