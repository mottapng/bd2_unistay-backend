import { prisma } from "../../../../prisma/client";
import { conversations } from "@prisma/client";
import { GetConversationDTO } from "../../dtos/GetConversationDTO";

export class GetConversationUseCase {

  async execute({ userOne, userTwo }: GetConversationDTO): Promise<conversations | null> {
    const conversation = await prisma.conversations.findFirst({
      where: {
        AND: [
          { renter_id: userOne },
          { locator_id: userTwo },
        ]
      },
      include: {
        renter: true,
        locator: true
      }
    });

    return conversation || null;
  }
}