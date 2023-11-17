@echo off
set outputFolder=D:\GIT\my-backup\MongoDB-BKP\json
set sourceDb=mongodb_test

mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=activities --out=%outputFolder%\activities.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=categories --out=%outputFolder%\categories.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=comparableobjectmodels --out=%outputFolder%\comparableobjectmodels.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=datas --out=%outputFolder%\datas.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=interviewanswers --out=%outputFolder%\interviewanswers.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=interviewcategories --out=%outputFolder%\interviewcategories.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=interviewquestions --out=%outputFolder%\interviewquestions.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=links --out=%outputFolder%\links.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=memorymaps --out=%outputFolder%\memorymaps.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=mongodb_test --out=%outputFolder%\mongodb_test.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=myresumemodels --out=%outputFolder%\myresumemodels.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=pinneditems --out=%outputFolder%\pinneditems.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=relatednodes --out=%outputFolder%\relatednodes.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=resumes --out=%outputFolder%\resumes.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=tags --out=%outputFolder%\tags.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=tasks --out=%outputFolder%\tasks.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=topics --out=%outputFolder%\topics.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=topicschemas --out=%outputFolder%\topicschemas.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=topicsections --out=%outputFolder%\topicsections.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=topicses --out=%outputFolder%\topicses.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=tweets --out=%outputFolder%\tweets.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=tweetv2 --out=%outputFolder%\tweetv2.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=usercolls --out=%outputFolder%\usercolls.json
mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=words --out=%outputFolder%\words.json