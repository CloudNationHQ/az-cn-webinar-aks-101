# CloudNation Webinar

This repository is to show how one can simply set up an azure AKS environment with a container registry to quickly deploy a simple and stable application

Prerequisites:

A application which can be built using a `Dockerfile`

Go into the `terraform` folder and add your subscription ID in the environment.tf.example file and name your workload

Run `terraform init` to download the required providers.

Run a `terraform plan` to see if your configuration is valid

Once a successful `plan` has run, run a `terraform apply` and, when prompted, type `yes`