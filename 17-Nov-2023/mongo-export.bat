@echo off
set outputFolder=C:\Prem\GIT\my-backup\17-Nov-2023

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=activities --out=activities.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=comparableobjectmodels --out=comparableobjectmodels.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=datas --out=datas.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=products --out=products.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=tags --out=tags.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=tasks --out=tasks.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=topics --out=topics.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=tweets --out=tweets.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=usercolls --out=usercolls.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=users --out=users.json

mongoexport --uri=mongodb://localhost:27017/mongodb_test --collection=words --out=words.json