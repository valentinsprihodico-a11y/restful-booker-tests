@echo off

set datetime=%date:~6,4%-%date:~3,2%-%date:~0,2%_%time:~0,2%-%time:~3,2%

newman run ../"collections\Restful_Booker_Collection.postman_collection.json" ^
  -e ../"environments\environment.postman_environment.json" ^
  -r html ^
  --reporter-html-export ../reports/report_%datetime%.html