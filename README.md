# massive-js-issue-260

Replicate massive-js issue [#260](https://github.com/robconery/massive-js/issues/260) - [Functions as column when updating [Bug or feature?]](https://github.com/robconery/massive-js/issues/260)

## Before running

- Pg database should be created locally
- Database credentials should be edited on `database.json`

## Running

```
  npm install
  node_modules/db-migrate/bin/db-migrate up
  node_modules/coffee-script/bin/coffee --compile --map src/
  node src/
```
