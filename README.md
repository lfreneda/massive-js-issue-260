# massive-js-issue-260

Replicate massive-js issue #260 - Functions as column when updating [Bug or feature?]

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
