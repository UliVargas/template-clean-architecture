# Trueq-In REST API
This API is built with Clean Architecture. It is a way to separate business logic from application logic.

This in order to be more scalable in the future if it is necessary to change infrastructure or technologies.

## Technologies
Project is created with:
* Typescript
* Yarn
* Jest
* Prisma ORM
* Bcrypt
* JWT
* Husky

## Minimum Requirements

* Yarn V1.22.19
* NodeJS V14.20.1
* Docker

## Variables Enviroment
* Add in the root a folder called __env__ and inside a file __.env.dev__

```` env
DATABASE_URL=postgresql://postgres:postgres@localhost:5432/postgres
PORT=5000
````
# Setup
### Initially you have to run Docker so that the database is created and filled with information with users
```` bash
$ yarn docker:compose
````
This step is not necessary if you are going to use the url of your cloud database or if you do not need a list of users.

### Generate the prism schema to be able to interact with the database.

```` bash
$ yarn prisma:pull
````

This script allows us to use the schema of our database if we already have one. If you are using the init.sql file found in /src/infrastructure/database or if you are using a cloud-based database, this command is recommended.

If you are going to work with a blank project, it is recommended to read the prism documentation if you want to use said ORM. ___[Prisma Docs](https://www.prisma.io/docs/)___

### Generate the prism client to work with your database

```` bash
$ yarn prisma:generate
````

## Start the application
* Install the dependencies

```` bash
$ yarn install
````

* Run the project

```` bash
$ yarn dev
````

# Husky & Jest

The project is designed to work with version control alone or as a team.
So you have Husky set up, which is a hook to avoid pushing to a Git branch if it contains Eslint errors or fails tests.

Before committing, the project tests are run, but in order to run the tests before committing, we can run the following command:

```` bash
$ yarn test
````