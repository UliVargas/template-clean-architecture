import Router from 'express-promise-router'
import { IDependencies } from '../../../infrastructure/configs/DependenciesBuilder'
import usersRouter from './users.routes'

const router = Router()

export default (dependecies: IDependencies) => {
  router.use('/users', usersRouter(dependecies))

  return router
}
