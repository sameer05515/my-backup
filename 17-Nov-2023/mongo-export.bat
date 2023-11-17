@echo off
set outputFolder=C:\Prem\GIT\my-backup\17-Nov-2023\json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=activities --out=%outputFolder%\activities.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=comparableobjectmodels --out=%outputFolder%\comparableobjectmodels.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=datas --out=%outputFolder%\datas.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=products --out=%outputFolder%\products.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=tags --out=%outputFolder%\tags.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=tasks --out=%outputFolder%\tasks.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=topics --out=%outputFolder%\topics.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=tweets --out=%outputFolder%\tweets.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=usercolls --out=%outputFolder%\usercolls.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=users --out=%outputFolder%\users.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=words --out=%outputFolder%\words.json