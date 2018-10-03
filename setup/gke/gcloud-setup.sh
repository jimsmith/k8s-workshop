#!/bin/bash
# @DESCRIPTION script to configure and authenticate to given gcloud project
# @USAGE ./gcloud-setup.sh <PROJECT_ID>

PROJECT_ID=${1:-us-k8s-wokshop};

gcloud config set project ${PROJECT_ID};
gcloud config set compute/region us-east1;
gcloud config set compute/zone us-east1-b;
