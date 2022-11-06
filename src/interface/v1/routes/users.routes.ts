import Router from 'express-promise-router'
import usersValidator from '../../../interface/middlewares/validations/function/users'

import userControllerInit from '../../controllers/users.controller'
import { IDependencies } from '../../../infrastructure/configs/DependenciesBuilder'

const router = Router()

export default (dependecies: IDependencies) => {
  const userController = userControllerInit(dependecies)

  router.get(
    '/',
    usersValidator.getAllUsers,
    userController.getAllUsers
  )

  return router
}
