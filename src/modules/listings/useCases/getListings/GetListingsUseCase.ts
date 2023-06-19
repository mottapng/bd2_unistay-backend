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
      orderBy: {
        listing_id: 'desc'
      },
      include: {
        address: true,
        images: {
          orderBy: { image_id: 'desc' }
        }
      }
    })

    return listings;
  }
}