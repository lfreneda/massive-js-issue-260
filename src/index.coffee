massive  = require 'massive'
Activity = require './activity'

db = massive.connectSync({connectionString: 'postgres://postgres:test@localhost/issue260'})

activity = new Activity 'Replicated issue 206'

db.activities.save activity, (err, savedActivity) ->
  if err
    console.log err
  else
    console.log savedActivity
