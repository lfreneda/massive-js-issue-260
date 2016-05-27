massive = require 'massive'
Activity = require './activity'
dbConfig = require('./../database.json').development
connectionString = "postgres://#{dbConfig.user}:#{dbConfig.password}@localhost/#{dbConfig.database}"
db = massive.connectSync({connectionString: connectionString})

newActivity = new Activity 'Replicated issue 206'

db.activities.save newActivity, (err, savedActivity) ->

  if err
    console.log err
  else
    
    console.log 'activity saved: ', savedActivity
    console.log 'let me try updated it'

    activity = new Activity 'Replicated issue 206 #update'
    activity.id = savedActivity.id
    db.activities.save activity, (err, updatedActivity) ->
      console.log err if err
      console.log updatedActivity

