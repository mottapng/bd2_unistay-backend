import { users } from "@prisma/client";
import { prisma } from "../../../../prisma/client";
import { AppError } from "../../../../errors/AppError";

export class GetUserUseCase {
  async execute({ user_id }: { user_id: string }): Promise<users> {

    const user = await prisma.users.findUnique({
      where: {
        user_id
      }
    })

    if (!user) {
      throw new AppError("User not found!", 400);
    }

    return user;
  }
}