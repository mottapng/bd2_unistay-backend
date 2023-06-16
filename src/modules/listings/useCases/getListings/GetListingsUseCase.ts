import { listings } from "@prisma/client";
import { prisma } from "../../../../prisma/client";

export class GetListingsUseCase {
  async execute({ search }: { search: string }): Promise<listings[]> {
    let whereClause = {};
    if (search) {
      whereClause = {
        name: { contains: search, mode: "insensitive" }
      };
    }

    const listings = await prisma.listings.findMany({
      where: whereClause,
      include: {
        address: true
      }
    })

    return listings;
  }
}