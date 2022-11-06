import Joi from 'joi'

const props = {
  name: Joi.string(),
  lastname: Joi.string(),
  email: Joi.string(),
  password: Joi.string(),
  limit: Joi.string(),
  skip: Joi.string(),
  filters: Joi.any()
}

export const getAllUsersSchema = Joi.object({
  limit: props.limit.required(),
  skip: props.skip.required(),
  filters: props.filters
})
