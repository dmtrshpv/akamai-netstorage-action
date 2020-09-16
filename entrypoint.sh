#!/bin/sh
set -e
#set -o pipefail

# Build Jekyll
/bin/bash -l -c "bundle install"
/bin/bash -l -c "bundle exec jekyll build"

# Create private_key file from env variable
echo -e "${AKAMAI_PRIVATEKEY}" > /root/privatekey

# Upload to NetStorage
akamai netstorage --config /root/.edgerc --section default upload "/github/workspace/_site/*" --directory "/_site/"

scp -i /root/privatekey -r /github/workspace/_site sshacs@nsmediadocs.scp.upload.akamai.com:/${{cpcode}}/_site/
  
  
