'use strict';

tableName = 'activities'

exports.up = (db, callback) ->
  options =
    columns:
      id:
        type: 'int', primaryKey: true, autoIncrement: true
      description:
        type: 'string', notNull: false
      status:
        type: 'string', notNull: false
      problemDescription:
        type: 'string', notNull: false
    ifNotExists: true
  db.createTable tableName, options, () -> callback()

exports.down = (db, callback) ->
  options =
    ifExists: true
  db.dropTable tableName, options, callback
