import { listings } from "@prisma/client";
import { prisma } from "../../../../prisma/client";

export class GetUserListingsUseCase {
  async execute({ user_id }: { user_id: string }): Promise<listings[]> {

    const listings = await prisma.listings.findMany({
      where: { user_id },
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