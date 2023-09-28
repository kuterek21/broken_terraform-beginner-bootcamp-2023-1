#!/usr/bin/env bash

PROJECT_ROOT= '/workspace/terraform-beginner-bootcamp-2023'

cd /workspace

sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl

wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint


sudo apt update

sudo apt-get install terraform

cd $PROJECT_ROOT
