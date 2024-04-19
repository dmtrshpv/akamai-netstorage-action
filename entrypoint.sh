#!/bin/sh
set -e
#set -o pipefail
cpCode=$1
path=$2
domainName=$3
nspath=$4

#Authorise SSH host
mkdir -p /root/.ssh
chmod 0700 /root/.ssh
ssh-keyscan ${domainName}.scp.upload.akamai.com > /root/.ssh/known_hosts

# Create private_key file from env variable
echo "${AKAMAI_PRIVATEKEY}" > /root/.ssh/privatekey
chmod 600 /root/.ssh/privatekey

# Upload to NetStorage
scp -i /root/.ssh/privatekey -v -o 'HostKeyAlgorithms=+ssh-dss' -o 'StrictHostKeyChecking no' -r /github/workspace/${path}/ sshacs@${domainName}.scp.upload.akamai.com:/${cpCode}/${nspath}  
  
