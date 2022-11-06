import { IDependencies } from '../src/infrastructure/configs/DependenciesBuilder'
import { user } from './fixtures/__mockData__'

export const dependencies: IDependencies = {
  userRepository: {
    getAllUsers: async () => ({ totalCount: 1, users: [user] })
  }
}
