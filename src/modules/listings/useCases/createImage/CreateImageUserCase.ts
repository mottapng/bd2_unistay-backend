import { AppError } from "../../../../errors/AppError";
import { prisma } from "../../../../prisma/client";
import { images } from '@prisma/client';

export class CreateImageUseCase {
  async execute(data: any, listing_id: string): Promise<images[]> {
    const images: images[] = [];

    if (!listing_id) {
      throw new AppError("Listing id not found!", 400);
    }

    for (const file of data) {
      const image = await prisma.images.create({
        data: {
          file_name: file.originalname,
          file_key: file.key,
          file_url: file.location,
          listing_id: listing_id
        }
      });

      images.push(image);
    }

    return images;
  }
}