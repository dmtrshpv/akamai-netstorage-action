#!/bin/sh -l
set -e
set -o pipefail

# Build Jekyll



# Create /root/.edgerc file from env variable
echo -e "${EDGERC}" > /root/.edgerc

# Upload to NetStorage
akamai netstorage \
  --edgerc /root/.edgerc \
  --section netstorage \
  
