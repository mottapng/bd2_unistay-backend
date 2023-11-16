import { prisma } from "../../../../prisma/client";
import { message } from "@prisma/client";
import { MessageDTO } from "../../dtos/MessageDTO";
import { AppError } from "../../../../errors/AppError";

export class CreateMessageUseCase {
  async execute({ message, conversation_id, user_id }: MessageDTO): Promise<message> {
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
      throw new AppError('You are not allowed to send to this conversation', 401);
    }

    const createdMessage = await prisma.message.create({
      data: {
        message,
        conversation_id,
        user_id
      }
    })

    await prisma.conversations.update({
      where: { conversation_id },
      data: { updated_at: new Date() },
    });

    return createdMessage;
  }
}