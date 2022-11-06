import express, { json, urlencoded } from 'express'
import morgan from 'morgan'

import v1RouterInit from '../../interface/v1/routes/index.routes'
import contextData from '../configs/context-handler'
import headersHandler from '../configs/headers-handler'
import errorHandler from '../configs/error-handler'
import { IDependencies } from '../configs/DependenciesBuilder'

export default async (dependecies: IDependencies) => {
  const v1Router = v1RouterInit(dependecies)
  const app = express()

  app.use(headersHandler)
  app.use(morgan('dev'))
  app.use(urlencoded({ extended: false }))
  app.use(json({ limit: '50mb' }))

  app.get('/', (_, res) => {
    res.json({ mensaje: 'Working' })
  })

  app.use('/api/v1', v1Router)
  app.use(errorHandler)
  app.use('/api/v1', contextData)

  return app
}
