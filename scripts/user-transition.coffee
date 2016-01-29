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

ignoreUsers = [ 'nightbot', 'moobot', 'wizebot' ]
replies = [
  "hi", # us
  "hello", # us
  "yo", # us
  "good day", # uk
  "hiya", # uk
  "Grüßgott", # austrian german
  "guten tag", # german
  "hola", # spanish
  "ahoj", # czech
  "hallo", # german informal, dutch
  "bonjour", # french
  "ciao", # italian
  "Kon'nichiwa", # japanese
  "doumo", # japanese
  "Yoi tsuitachi", # japanese good day
  "olá", # portugese
  "zdravstvuyte", # russian
  "Dia duit", # irish
  "selamat datang", # malaysian
  "helló", # hungarian
  "hej", # danish informal
  "cześć", # poland
  "Hallå" # swedish
]

module.exports = (robot) ->
  robot.enter (res) ->
    userId = res?.message?.user?.id
    if ignoreUsers.indexOf(userId) == -1
      # res.send "#{res.random replies} #{userId}"
      res.send res.random replies

  # robot.leave (res) ->
  #   res.send res.random leaveReplies
