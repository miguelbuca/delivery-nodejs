import { prisma } from "../../../database/prismaClient"
import { hash } from 'bcrypt'

interface ICreateClient{
    username: string,
    password: string
}

export class CreateClientUseCase {
  async execute({ username, password }: ICreateClient) {
    // validar o usuario

    const clientExists = await prisma.clients.findFirst({
      where: {
        username
      },
    });

    if(clientExists){
        throw new Error('Client already exists!')
    }

    // criptografar

    const hashPassword = await hash(password,10);

    //salvar

    const client = await prisma.clients.create({
        data: {
            username,
            password: hashPassword
        }
    })

    return client
  }
}