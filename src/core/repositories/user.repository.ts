import { IRepository } from '.'
import { User } from '../entities/user.entity'

export interface IUserResponse {
  users: User[]
  totalCount: number
}

export interface IUserRepository extends IRepository<User> {
  getAllUsers(limit: number, skip: number, where: any): Promise<IUserResponse>
}
