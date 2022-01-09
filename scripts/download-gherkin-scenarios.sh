#!/bin/bash

SCRIPTS_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

"${SCRIPTS_DIR}"/libs/download-ghokin.sh

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
export XRAY_API_TOKEN=`${SCRIPTS_DIR}/libs/obtain-xray-api-token.sh`

# cleaning the temporary folder
mkdir -p "$SCRIPTS_DIR"/temp
rm -rf "$SCRIPTS_DIR"/temp/*

# removing all scenarios from disk, so we don't have to deal with merging old, new and deleted ones
rm -rf "$SCRIPTS_DIR"/../cypress/integration/e2e/*

# downloading the scenarios in the newest version from Xray (-> one big json file)
node "$SCRIPTS_DIR"/libs/fetch-scenarios-from-xray.js
if [ $? -ne 0 ]
then
  echo "Downloading the scenarios from Xray failed."
  exit 1
fi

# extracting the downloaded scenarios and converting them to proper feature files (-> cypress/integration/e2e folder)
node "$SCRIPTS_DIR"/libs/extract-gherkin-scenarios.js "$@"
if [ $? -ne 0 ]
then
  echo "Extracting the scenarios failed."
  exit 1
fi
