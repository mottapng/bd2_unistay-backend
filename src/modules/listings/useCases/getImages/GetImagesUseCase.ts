import { images } from "@prisma/client";
import { prisma } from "../../../../prisma/client";
import { AppError } from "../../../../errors/AppError";

export class GetImagesUseCase {
  async execute({ listing_id }: { listing_id: number }): Promise<images[]> {

    const images = await prisma.images.findMany({
      where: {
        listing_id
      }
    })

    return images;
  }
}