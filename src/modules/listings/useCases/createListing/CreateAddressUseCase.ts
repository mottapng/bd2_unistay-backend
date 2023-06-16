import { prisma } from "../../../../prisma/client";
import { CreateAddressDTO } from "../../dtos/createAddressDTO";
import { address } from "@prisma/client";

export class CreateAddressUseCase {
  async execute({ street, number, uf, city }: CreateAddressDTO): Promise<address> {
    const address = await prisma.address.create({
      data: {
        street,
        number: Number(number),
        uf,
        city
      }
    })

    return address;
  }
}