# Description:
#   Make fun of Ali

module.exports = (robot) ->

  robot.hear /\bmy favorite\b/i, (msg) ->
      user = msg.message.user.name
      if user == 'ali'
        msg.send 'https://filmhash.files.wordpress.com/2011/07/7harrys-pg-horizontal.jpg'

