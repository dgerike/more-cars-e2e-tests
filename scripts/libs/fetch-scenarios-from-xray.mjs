import fs from 'fs';
import fetch from 'node-fetch';

const xrayApiToken = process.env.XRAY_API_TOKEN;

let allTests = [];
fetchTests()
    .then(tests => {
        allTests = allTests.concat(tests);
        fs.writeFileSync('scripts/temp/scenarios.json', JSON.stringify(allTests));
    });

function fetchTests() {
    return fetch('http://xray.cloud.xpand-it.com/api/v2/graphql', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer ' + xrayApiToken
        },
        body: JSON.stringify({
            query: getQueryToGetAllTests()
        })
    })
        .then(r => r.json())
        .then(r => {
            return r.data.getTests.results;
        });
}

function getQueryToGetAllTests() {
    return `query {
              getTests(
                  projectId: "10102"
                  testType: {
                      kind: "gherkin"
                  }
                  limit: 100
                  start: 0)
              {
                  total
                  results {
                      issueId
                      preconditions(limit: 3) {
                          results {
                              definition
                              jira(fields: ["key", "summary"])
                          }
                      }
                      scenarioType
                      gherkin
                      jira(fields: ["key", "status", "issuelinks", "summary", "labels"])
                  }
              }
          }`;
}