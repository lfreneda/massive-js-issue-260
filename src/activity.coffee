class Activity
  constructor: (@description, @status = 'placed') ->

  reportAsProblem: (problemDescription) ->
    @status = 'reported'
    @problemDescription = problemDescription

module.exports = Activity
