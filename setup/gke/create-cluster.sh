#!/bin/bash
# @DESCRIPTION script to generate an autoscaling(3-5) GKE cluster with a given name.
# @USAGE ./create-cluster <CLUSTER_NAME>
CLUSTER_NAME=${1:-workshop};

gcloud container clusters create ${CLUSTER_NAME} \
  --cluster-version "1.10.7-gke.2" \
  --num-nodes=3 \
  --enable-autoscaling \
  --min-nodes 3 \
  --max-nodes 5 \
  --enable-network-policy;