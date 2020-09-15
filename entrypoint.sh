#!/bin/bash
set -e
#set -o pipefail

# Build Jekyll
/bin/bash -l -c "bundle install"
/bin/bash -l -c "bundle exec jekyll build"

# Create /root/.edgerc file from env variable
echo -e "${EDGERC}" > /root/.edgerc

# Upload to NetStorage
akamai netstorage \
  upload /github/workspace/_site --directory /886532/_site \
  --config /root/.edgerc \
  --section netstorage
  
  
