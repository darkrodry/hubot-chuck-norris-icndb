# Description
#   Response with a joke from ICNDb
#
# Commands:
#   hubot chuck joke - ask for a random Chuck Norris joke
#
# Author:
#   Rodrigo De Frutos <darkrodry@gmail.com>

module.exports = (robot) ->
  robot.respond /chuck joke/, (msg) ->
    msg.http("http://api.icndb.com/jokes/random")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).value.joke
