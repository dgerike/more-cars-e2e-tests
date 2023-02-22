#!/bin/bash

# This script downloads "ghokin", a command-line tool that is used for formatting/prettifying our gherkin scenarios.

GHOKIN_BINARY=linux_amd64 # options: windows_amd64, linux_amd64, darwin_amd64
GHOKIN_VERSION=3.3.0

CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [[ ! -f ${CURRENT_DIR}/$GHOKIN_BINARY ]]; then
    curl -#Lo "${CURRENT_DIR}"/$GHOKIN_BINARY.tar.gz https://github.com/antham/ghokin/releases/download/v"$GHOKIN_VERSION"/ghokin_"$GHOKIN_VERSION"_"$GHOKIN_BINARY".tar.gz
    tar -xf "${CURRENT_DIR}"/$GHOKIN_BINARY.tar.gz ghokin
    mv ghokin "${CURRENT_DIR}"/$GHOKIN_BINARY
    chmod +x "${CURRENT_DIR}"/$GHOKIN_BINARY
    rm "${CURRENT_DIR}"/$GHOKIN_BINARY.tar.gz
fi

if [ ! -x "${CURRENT_DIR}"/$GHOKIN_BINARY ]
then
  echo "Ghokin download failed. Expected the binary here:"
  echo "${CURRENT_DIR}"/$GHOKIN_BINARY
  exit 1
fi
