#!/bin/bash 
# @DESCRIPTION script to set up kubectl to a given cluster
# @USAGE ./cluster-auth.sh <CLUSTER_NAME>
CLUSTER_NAME=${1:-workshop};

gcloud container clusters get-credentials ${CLUSTER_NAME};