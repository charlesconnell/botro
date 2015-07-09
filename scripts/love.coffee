# Description:
#   For Kevin

module.exports = (robot) ->

  robot.respond /what is love/i, (msg) ->
    msg.send "https://tctechcrunch2011.files.wordpress.com/2014/10/what-is-love.gif"

