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

  robot.hear /!mod add @?([\w .\-_]+)\?*$/i, (msg) ->
    admin = robot.brain.userForName msg.message.user.name
    if admin.name is 'grubbins2'
      moderator = msg.match[1]
      room = msg.message.room
      user = robot.brain.userForName moderator
      if user?
        user.roomModerator = {} unless user.roomModerator?
        user.roomModerator[room] = true
        msg.reply "added moderator #{moderator}!"
    else
      msg.reply "ACCESS DENIED!"
