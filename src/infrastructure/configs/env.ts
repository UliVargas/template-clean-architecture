import dotenv from 'dotenv'
dotenv.config()

export const env = {
  PORT: process.env.PORT,
  PROJECT_NAME: process.env.PROJECT_NAME
}
