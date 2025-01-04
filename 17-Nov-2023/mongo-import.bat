@echo off
set outputFolder=C:\Prem\GIT\my-backup\17-Nov-2023\json
set targetDb=test

mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=activities --file=%outputFolder%\activities.json

mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=comparableobjectmodels --file=%outputFolder%\comparableobjectmodels.json

mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=datas --file=%outputFolder%\datas.json

mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=products --file=%outputFolder%\products.json

mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=tags --file=%outputFolder%\tags.json

mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=tasks --file=%outputFolder%\tasks.json

mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=topics --file=%outputFolder%\topics.json

mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=tweets --file=%outputFolder%\tweets.json

mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=usercolls --file=%outputFolder%\usercolls.json

mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=users --file=%outputFolder%\users.json

mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=words --file=%outputFolder%\words.json