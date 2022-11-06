import { dependencies } from '../dependencies'
import { getAllUsersInit } from '../../src/app/use_case/users'
import { user } from '../fixtures/__mockData__'

describe('GET All Users', () => {
  const result = {
    totalCount: 1,
    users: [user]
  }

  test('It should return an empty array', async () => {
    dependencies.userRepository.getAllUsers = jest.fn().mockResolvedValue([])
    const getAllUsers = getAllUsersInit(dependencies)
    await expect(getAllUsers(1, 0, {}))
      .resolves.toStrictEqual([])
    expect(dependencies.userRepository.getAllUsers).toHaveBeenCalledWith(1, 0, {})
  })

  test('It should return an array with all the users requested with the pagination', async () => {
    dependencies.userRepository.getAllUsers = jest.fn().mockResolvedValue(result)
    const getAllUsers = getAllUsersInit(dependencies)
    await expect(getAllUsers(1, 0, {}))
      .resolves.toStrictEqual(result)
    expect(dependencies.userRepository.getAllUsers).toHaveBeenCalledWith(1, 0, {})
  })
})
