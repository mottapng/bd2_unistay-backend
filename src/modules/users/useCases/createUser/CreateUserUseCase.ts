import { prisma } from "../../../../prisma/client";
import { users } from "@prisma/client"
import { CreateUserDTO } from "../../dtos/createUserDTO";
import bcrypt from 'bcrypt';
import { AppError } from "../../../../errors/AppError";

export class CreateUserUseCase {
  async execute({ email, password, name, cellphone, birth_date, country, uf }: CreateUserDTO): Promise<users> {
    const userAlreadyExists = await prisma.users.findUnique({
      where: {
        email
      }
    })

    if (userAlreadyExists) {
      throw new AppError("User already exists!", 400);
    }

    const user = await prisma.users.create({
      data: {
        email,
        password: await bcrypt.hash(password, 10),
        name,
        cellphone,
        birth_date: new Date(birth_date),
        country,
        uf
      }
    })

    return user;
  }
}