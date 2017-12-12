#!/bin/bash

apt-get update -qq && apt-get install curl gnupg gnupg2 -y

# Create an environment variable for the correct distribution
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"

# Add the Cloud SDK distribution URI as a package source
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list


# Import the Google Cloud Platform public key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

# Update the package list and install the Cloud SDK
apt-get update -qq && apt-get install google-cloud-sdk -y --allow-unauthenticated

gcloud auth activate-service-account --key-file=$1
gcloud config set project $2
gcloud config  pass_credentials_to_gsutil True

gsutil ls
gcloud components list
