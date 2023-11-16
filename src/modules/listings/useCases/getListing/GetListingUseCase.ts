import { listings } from "@prisma/client";
import { prisma } from "../../../../prisma/client";
import { AppError } from "../../../../errors/AppError";

export class GetListingUseCase {
  async execute({ listing_id }: { listing_id: string }): Promise<listings> {

    const listing = await prisma.listings.findUnique({
      where: {
        listing_id
      },
      include: {
        address: true,
        users: {
          select: {
            name: true,
            user_id: true
          }
        },
        images: {
          select: {
            file_url: true,
            file_name: true
          },
          orderBy: { image_id: 'desc' }
        }
      }
    })

    if (!listing) {
      throw new AppError("Listing not found!", 400);
    }

    return listing;
  }
}