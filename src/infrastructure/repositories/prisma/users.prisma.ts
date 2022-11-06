import prisma from '../../orm/index.prisma'
import { IUserRepository, IUserResponse } from '../../../core/repositories/user.repository'
import { User } from '../../../core/entities/user.entity'

class UserRepository implements IUserRepository {
  async getAllUsers (limit: number, skip: number, where: any): Promise<IUserResponse> {
    const [totalCount, users] = await Promise.all([
      prisma.users.count({
        where: { ...where }
      }),
      prisma.users.findMany({
        take: limit,
        skip,
        where: {
          ...where
        }
      })
    ])
    return {
      totalCount,
      users
    }
  }

  create (data: any): Promise<User> {
    return prisma.users.create({
      data: {
        ...data
      }
    })
  }
}

export default UserRepository
