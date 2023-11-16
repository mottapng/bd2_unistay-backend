import { prisma } from "../../../../prisma/client";
import { conversations } from "@prisma/client";

export class GetAllConversationsUseCase {
  async execute({ user_id }: { user_id: string }): Promise<conversations[]> {
    const conversations = await prisma.conversations.findMany({
      orderBy: {
        updated_at: 'desc'
      },
      where: {
        OR: [
          { renter_id: user_id },
          { locator_id: user_id },
        ]
      },
      include: {
        renter: true,
        locator: true
      }
    });

    return conversations;
  }
}