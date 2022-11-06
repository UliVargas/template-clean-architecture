import jwt from 'jsonwebtoken'
import dontenv from 'dotenv'
import { NextFunction, Request, Response } from 'express'
dontenv.config()

interface IRequest extends Request {
  USER: any
  token: string
}

const { JWT_SECRET_KEY } = process.env

export const generate = (payload: any) => {
  return jwt.sign(payload, JWT_SECRET_KEY || '')
}

export const decode = (accessToken: string) => {
  return jwt.verify(accessToken, JWT_SECRET_KEY || '')
}

export default (req: IRequest, res: Response, next: NextFunction) => {
  const authHeader = req.headers.authorization
  const token = authHeader && authHeader.split(' ')[1]

  if (!token) {
    return res.status(401).json({
      errCode: 401,
      message: 'Authentication is required'
    })
  }

  try {
    req.USER = decode(token)
    req.token = token
    next()
  } catch (error) {
    return res.status(403).json({
      errCode: 403,
      message: 'Access Denied – You dont have permission to access'
    })
  }
}
