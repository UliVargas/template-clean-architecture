import { NextFunction, Request, Response } from 'express'

interface IError {
  statusCode: number
  title: string
  message: string
  status: number
  errCode: string
}

export default async (error: IError, req: Request, res: Response, next: NextFunction) => {
  const { statusCode, message, status, errCode } = error
  const code = statusCode || status || 500

  res.status(code).json({
    raw: {
      title: req.url || 'GENERIC_ERROR',
      message,
      errorCode: errCode || 'ERROR_CODE'
    }
  })
}
