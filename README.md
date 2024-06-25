# CloudNation Webinar

This repository is to show how one can simply set up an azure AKS environment with a container registry to quickly deploy a simple and stable application

Prerequisites:

A application which can be built using a `Dockerfile`

Go into the `terraform` and rename the `environment.tf.example` file to `environment.tf`, add your existing azure subscription ID and give a name your workload. If you have issues deploying your workload in the region `westeurope` consider changing the location to another region, e.g. `germanywestcentral`

Run `terraform init` to download the required providers.

Run a `terraform plan` to see if your configuration is valid

Once a successful `plan` has run, run a `terraform apply` and, when prompted, type `yes`