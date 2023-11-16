import { AppError } from "../../../../errors/AppError";
import { prisma } from "../../../../prisma/client";
import { message } from "@prisma/client";

export class GetMessagesUseCase {
  async execute(conversation_id: string, user_id: string): Promise<message[]> {
    const isUsersConversation = await prisma.conversations.findFirst({
      where: {
        conversation_id,
        OR: [
          { renter_id: user_id },
          { locator_id: user_id },
        ]
      }
    })

    if (!isUsersConversation) {
      throw new AppError('You are not allowed to see this conversation', 401);
    }

    const messages = await prisma.message.findMany({
      where: {
        conversation_id
      },
      orderBy: {
        created_at: 'asc'
      },
      include: {
        conversation: true,
      }
    });

    return messages;
  }
}