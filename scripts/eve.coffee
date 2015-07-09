# Description:
#   Show a picture of Eve
#
# Commands:
#   hubot eve me - Show a picture of Eve, the best dog

module.exports = (robot) ->

  robot.respond /eve me/i, (msg) ->

    request = msg.http("https://api.instagram.com/v1/users/1491052379/media/recent/?client_id=e4021d6b03a142aea0548ff43f174293")
    request
      .get() (err, res, body) ->
        if err
          msg.send "Oh no, got error: #{err}"
          return

        if res.statusCode isnt 200
          msg.send "Oh no, got code #{res.statusCode}"
          return

        results = JSON.parse(body).data
        choice = Math.floor(Math.random() * results.length)
        image_data = results[choice]
        msg.send image_data.images.standard_resolution.url

