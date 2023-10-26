#!/usr/bin/env bash
echo $1 > token
VM_NAME=ci-vm
gcloud compute instances create $VM_NAME --project aw-project-374412 --zone us-central1-a --machine-type=e2-medium  --network-interface=network=custom-vpc,subnet=us-central-subnet --tags=web-server --service-account=vm-sa-730@aw-project-374412.iam.gserviceaccount.com --scopes=cloud-platform  --access-token-file=token
