import { prisma } from "../../../../prisma/client";
import { conversations } from "@prisma/client";
import { CreateConversationDTO } from "../../dtos/CreateConversationDTO";

export class CreateConversationUseCase {
  async execute({ userOne, userTwo }: CreateConversationDTO): Promise<conversations> {
    const conversation = await prisma.conversations.create({
      data: {
        renter_id: userOne,
        locator_id: userTwo,
      },
      include: {
        renter: true,
        locator: true,
      }
    })

    return conversation;
  }
}