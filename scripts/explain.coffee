# Description:
#   Show information about Botro
#
# Commands:
#   hubot explain - What am I?

module.exports = (robot) ->
  robot.respond /explain/i, (msg) ->
    msg.send "I am a fork of Hubot, an open-source chat bot written in CoffeeScript, that runs in NodeJS. I am running on Charles's work computer. My source code is at https://github.com/charlesconnell/botro."

