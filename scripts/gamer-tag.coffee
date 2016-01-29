# Description:
#   <description of the scripts functionality>
#
# Dependencies:
#   "<module name>": "<module version>"
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot <trigger> - <what the respond trigger does>
#   <trigger> - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   <github username of the original script author>

module.exports = (robot) ->

  robot.hear /^\s*(\!gt)\s*$/i, (msg) ->
    msg.send "Type: !gt <your gamer tag>"

  robot.hear /^\!gt\s+@?(.+)$/i, (msg) ->
    match1 = msg.match[1].trim()
    if match1.match /^(help)$/i
      return msg.send "Type: !gt <your gamer tag>"
    room = msg.message.room
    admin = robot.brain.userForName msg.message.user.name
    if admin.roomModerator?[room] is true # is moderator, query gamertag
      user = robot.brain.userForName match1
      if user?.gamertag?
        msg.send "gt: #{user.gamertag}"
      else
        msg.send ":( @#{match1} no gamer tag was found!"
        msg.send "Type: !gt <your gamer tag>"
    else # regular user, save gamertag
      user = robot.brain.userForName msg.message.user.name
      gamertag = match1
      unless user.gamertag is gamertag
        user.gamertag = gamertag
        msg.reply "KAPOW gamer tag saved: #{gamertag}"
      else
        msg.reply "I already have your gamer tag! B)"
