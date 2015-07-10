# Description:
#   Make fun of Jesse. This was Ali's idea.

responses = [
  "Ugh",
  "No.",
  "You dummy",
  "Who's this kid?",
  ":thumbsdown:",
  ":poop:",
  "http://i.giphy.com/hQY7rPlW3Vc3K.gif"
]

module.exports = (robot) ->

  robot.hear /.*/i, (msg) ->
      user = msg.message.user.name
      if user == 'jesse' and Math.random() < 0.2
        msg.send msg.random responses

