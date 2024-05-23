import fs from 'fs';

const projectId = "10103";
const issueTypeId = "10129";
const transitionId = "31";
const testPlanKey = "MCTR-9";
const environments = ["production", "desktop"];
const dateTime = new Date().toUTCString();

const metaInfo = {
    "fields": {
        "project": {
            "id": projectId
        },
        "summary": dateTime,
        "issuetype": {
            "id": issueTypeId
        }
    },
    "transition": {
        "id": transitionId
    },
    "xrayFields": {
        "testPlanKey": testPlanKey,
        "environments": environments
    }
}

const tempDirectoryPath = 'scripts/temp/';
if (!fs.existsSync(tempDirectoryPath)) {
    fs.mkdirSync(tempDirectoryPath)
}
fs.writeFileSync(tempDirectoryPath + 'meta-info.json', JSON.stringify(metaInfo, null, 2));
