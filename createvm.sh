#!/usr/bin/env bash
gcloud compute instances create $VM_NAME --zone us-central1-a --machine-type=e2-medium  --network-interface=network=custom-vpc,subnet=us-central-subnet --tags=web-server --service-account=vm-sa-730@aw-project-374412.iam.gserviceaccount.com --scopes=cloud-platform
