import { AppError } from "../../../../errors/AppError";
import { prisma } from "../../../../prisma/client";
import { listings } from "@prisma/client"


export class DeleteListingUseCase {
  async execute({ listing_id, user_id }: { listing_id: string, user_id: string }): Promise<listings> {
    const existingListing = await prisma.listings.findFirst({
      where: {
        listing_id,
        user_id,
      },
    });

    if (!existingListing) {
      throw new AppError('Listing not found', 404);
    }

    await prisma.images.deleteMany({
      where: {
        listing_id: existingListing.listing_id,
      },
    });

    const deletedListing = await prisma.listings.delete({
      where: {
        listing_id: existingListing.listing_id,
      },
    });

    return deletedListing;
  }
}