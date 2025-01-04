const mongodb_collection_names=["activities","categories","comparableobjectmodels","datas","interviewanswers","interviewcategories","interviewquestions","links","memorymaps","mongodb_test","myresumemodels","pinneditems","relatednodes","resumes","tags","tasks","topics","topicschemas","topicsections","topicses","tweets","tweetv2","usercolls","words"];

// commands to do export
//mongodb_collection_names.forEach(s=>console.log(`mongoexport --uri=mongodb://localhost:27017/%sourceDb% --collection=${s} --out=%outputFolder%\\${s}.json`));

// commands to do import
mongodb_collection_names.forEach(s=>console.log(`mongoimport --uri=mongodb://localhost:27017/%targetDb% --collection=${s} --file=%outputFolder%\\${s}.json`));