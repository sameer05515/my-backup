@echo off
set outputFolder=D:\GIT\my-backup\MongoDB-BKP\json
set targetDb=test23Oc2024

mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=activities --file=%outputFolder%\activities.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=categories --file=%outputFolder%\categories.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=comparableobjectmodels --file=%outputFolder%\comparableobjectmodels.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=datas --file=%outputFolder%\datas.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=interviewanswers --file=%outputFolder%\interviewanswers.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=interviewcategories --file=%outputFolder%\interviewcategories.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=interviewquestions --file=%outputFolder%\interviewquestions.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=links --file=%outputFolder%\links.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=memorymaps --file=%outputFolder%\memorymaps.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=mongodb_test --file=%outputFolder%\mongodb_test.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=myresumemodels --file=%outputFolder%\myresumemodels.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=pinneditems --file=%outputFolder%\pinneditems.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=relatednodes --file=%outputFolder%\relatednodes.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=resumes --file=%outputFolder%\resumes.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=tags --file=%outputFolder%\tags.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=tasks --file=%outputFolder%\tasks.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=topics --file=%outputFolder%\topics.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=topicschemas --file=%outputFolder%\topicschemas.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=topicsections --file=%outputFolder%\topicsections.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=topicses --file=%outputFolder%\topicses.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=tweets --file=%outputFolder%\tweets.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=tweetv2 --file=%outputFolder%\tweetv2.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=usercolls --file=%outputFolder%\usercolls.json
mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=words --file=%outputFolder%\words.json