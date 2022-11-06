import { NextFunction, Request, Response } from 'express'
import { getAllUsersInit } from '../../app/use_case/users'
import { IDependencies } from '../../infrastructure/configs/DependenciesBuilder'

export default (dependecies: IDependencies) => {
  const GetAllUsers = getAllUsersInit(dependecies)

  const getAllUsers = async (req: Request, res: Response) => {
    const { limit, skip } = req.query
    const { filters } = req.body
    const users = await GetAllUsers(Number(limit), Number(skip), filters)
    res.status(200).json(users)
  }

  return {
    getAllUsers
  }
}
