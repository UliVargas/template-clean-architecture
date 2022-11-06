import http from 'http'

import appContainer from './app'
import dependencies from '../configs/DependenciesBuilder'
import { env } from '../configs/env'

function normalizePort (val: any) {
  const port = parseInt(val, 10)

  if (isNaN(port)) return val
  if (port >= 0) return port
  return false
}

const port = normalizePort(env.PORT || 3001)

function onError (error: any) {
  if (error.syscall !== 'listen') {
    throw error
  }

  const bind = typeof port === 'string'
    ? 'Pipe ' + port
    : 'Port ' + port

  switch (error.code) {
    case 'EACCES':
      console.error(bind + ' requires elevated privileges')
      process.exit(1)
      break
    case 'EADDRINUSE':
      console.error(bind + ' is already in use')
      process.exit(1)
      break
    default:
      throw error
  }
}

dependencies().then(dependency => {
  appContainer(dependency).then(app => {
    function onListening () {
      const addr: any = server.address()
      const bind = typeof addr === 'string'
        ? 'pipe ' + addr
        : 'port ' + addr.port
      console.log(`Running ${env.PROJECT_NAME} on ${bind}` )
    }

    app.set('port', port)

    const server = http.createServer(app)

    server.listen(port)
    server.on('error', onError)
    server.on('listening', onListening)
  })
})
