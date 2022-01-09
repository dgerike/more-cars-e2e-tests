#!/bin/bash

CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# downloading "ghokin", a library that later-on is used for prettifying the gherkin scenarios
GHOKIN_BINARY=ghokin_linux_amd64
if [[ ! -f ${CURRENT_DIR}/$GHOKIN_BINARY ]]; then
    curl -#Lo "${CURRENT_DIR}"/$GHOKIN_BINARY https://github.com/antham/ghokin/releases/download/v1.6.2/$GHOKIN_BINARY
    chmod +x "${CURRENT_DIR}"/$GHOKIN_BINARY
fi

if [ ! -x "${CURRENT_DIR}"/$GHOKIN_BINARY ]
then
  echo "Ghokin download failed. Expected the binary here:"
  echo "${CURRENT_DIR}"/$GHOKIN_BINARY
  exit 1
fi
