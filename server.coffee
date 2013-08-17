express = require 'express'
app = express()

app.configure () ->
  app.use express.static __dirname

app.get '/', (req, res) ->
  res.sendfile __dirname + '/index.html'

app.listen 8080
console.log 'server running at localhost:8080'
