import { prisma } from "../../../../prisma/client";
import { users } from "@prisma/client"
import bcrypt from 'bcrypt';
import { AppError } from "../../../../errors/AppError";
import { LoginUserDTO } from "../../dtos/loginUserDTO";
import jwt from 'jsonwebtoken';

interface LoginResponse {
  user: users;
  token: string;
}

export class LoginUserUseCase {
  async execute({ email, password }: LoginUserDTO): Promise<LoginResponse> {
    const user = await prisma.users.findUnique({
      where: {
        email
      }
    })

    if (!user) {
      throw new AppError("User not found!", 400);
    }

    const validPass = await bcrypt.compare(password, user.password);

    if (!validPass) {
      throw new AppError("Password incorrect!", 401);
    }

    const jwtPayload = {
      user_id: user.user_id
    };

    const token = jwt.sign(jwtPayload, process.env.JWT_SECRET || "");

    return { user, token };
  }
}