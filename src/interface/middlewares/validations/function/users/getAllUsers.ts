import { NextFunction, Request, Response } from 'express'
import { getAllUsersSchema } from '../../schema/user.schema'
import validateData from '../validateData'

export default async (req: Request, res: Response, next: NextFunction) => {
  const { limit, skip } = req.query
  const { filters } = req.body

  await validateData(getAllUsersSchema, { limit, skip, filters })
  next()
}
