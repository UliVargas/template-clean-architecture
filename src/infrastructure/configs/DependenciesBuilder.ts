import { IUserRepository } from '../../core/repositories/user.repository'
import { UserRepository } from '../repositories/prisma/index.prisma'

export interface IDependencies {
  userRepository: IUserRepository
}

export default async (): Promise<IDependencies> => {
  const userRepository: IUserRepository = new UserRepository()

  return {
    userRepository
  }
}
