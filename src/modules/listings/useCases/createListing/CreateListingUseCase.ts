import { prisma } from "../../../../prisma/client";
import { listings } from "@prisma/client"
import { CreateListingDTO } from "../../dtos/createListingDTO";

export class CreateListingUseCase {
  async execute({
    name,
    description,
    private_room,
    price,
    qnt_bedrooms,
    qnt_bathrooms,
    qnt_garage,
    type_id,
    user_id,
    address_id
  }: CreateListingDTO): Promise<listings> {
    const listing = await prisma.listings.create({
      data: {
        name,
        description,
        private_room,
        price,
        qnt_bedrooms,
        qnt_bathrooms,
        qnt_garage,
        type_id,
        user_id,
        address_id
      }
    })

    return listing;
  }
}