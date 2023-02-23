#!/bin/bash

SCRIPTS_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# we need the Xray API credentials...
if [ -z "${XRAY_API_CLIENT_ID}" ]; then
    echo "Xray Client ID missing!"
    exit 1
fi
if [ -z "${XRAY_API_CLIENT_SECRET}" ]; then
    echo "Xray Client Secret missing!"
    exit 1
fi

# ...so we can request a temporary API token
XRAY_API_TOKEN=`"${SCRIPTS_DIR}"/libs/obtain-xray-api-token.sh`

# creating meta file
node "${SCRIPTS_DIR}"/libs/createMetaInfoFile.mjs
metaInfoFile="${SCRIPTS_DIR}"/temp/meta-info.json

# uploading each test result one by one
resultFile="${SCRIPTS_DIR}"/../cypress/reports/json/test-results.json
echo "Uploading: $resultFile"

RESPONSE=`curl -# --fail --retry 6 \
    -X POST 'https://xray.cloud.getxray.app/api/v2/import/execution/cucumber/multipart' \
    -H "Authorization: Bearer $XRAY_API_TOKEN" \
    -H "Content-Type: multipart/form-data" \
    -F results="@${resultFile}" \
    -F info="@${metaInfoFile}"`

JIRA_ISSUE_ID=`node "${SCRIPTS_DIR}"/libs/extractJiraIssueId.mjs $RESPONSE`;
echo "Test execution results uploaded to https://more-cars.atlassian.net/browse/$JIRA_ISSUE_ID"
echo
