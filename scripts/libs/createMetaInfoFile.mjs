import fs from 'fs';

const projectId = "10103";
const issueTypeId = "10129";
const transitionId = "31";
const testPlanKey = "MCTR-9";
const environments = ["production", "desktop"];

const metaInfo = {
    "fields": {
        "project": {
            "id": projectId
        },
        "summary": "Test execution",
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

fs.writeFileSync('scripts/temp/meta-info.json', JSON.stringify(metaInfo, null, 2));
