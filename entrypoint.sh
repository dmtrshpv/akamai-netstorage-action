#!/bin/sh -l
set -e
set -o pipefail

# Build Jekyll
bundle install
bundle exec jekyll build

# Create /root/.edgerc file from env variable
echo -e "${EDGERC}" > /root/.edgerc

# Upload to NetStorage
akamai netstorage \
  --config /root/.edgerc \
  --section netstorage \
  put --from ./_site/ /886532/_site
  
