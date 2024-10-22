@echo off
set outputFolder=D:\GIT\my-backup\17-Nov-2023\json
set sourceDb=mongodb_test

mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=activities --out=%outputFolder%\activities.json

mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=comparableobjectmodels --out=%outputFolder%\comparableobjectmodels.json

mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=datas --out=%outputFolder%\datas.json

mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=products --out=%outputFolder%\products.json

mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=tags --out=%outputFolder%\tags.json

mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=tasks --out=%outputFolder%\tasks.json

mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=topics --out=%outputFolder%\topics.json

mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=tweets --out=%outputFolder%\tweets.json

mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=usercolls --out=%outputFolder%\usercolls.json

mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=users --out=%outputFolder%\users.json

mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=words --out=%outputFolder%\words.json