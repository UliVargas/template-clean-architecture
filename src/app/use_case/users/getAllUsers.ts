import { IDependencies } from '../../../infrastructure/configs/DependenciesBuilder'
import { IUserResponse } from '../../../core/repositories/user.repository'

type GetAllUsers = (limit: number, skip: number, filters: any) => Promise<IUserResponse>

export default (dependecies: IDependencies): GetAllUsers => async (limit, skip, filters) => {
  return dependecies.userRepository.getAllUsers(limit, skip, filters)
}
