# Cloud Resume Challenge
## Overview
This repository contains the infrastructure as code (IaC) for deploying a personal resume website to AWS using Terraform. The project aims to showcase resume online while demonstrating skills in cloud technologies and DevOps practices.  
It is similar although not exact implementation of [Cloud Resume Challenge](https://cloudresumechallenge.dev/).

## Project Structure

- terraform/: Contains Terraform configuration files for provisioning AWS resources.
- assets/: Contains an example template from https://www.designstub.com/
- .github/workflows/deploy.yml: GitHub Actions workflow for automating deployment tasks.


## Getting Started
To deploy infrastructure, follow these steps:

1. Navigate to terraform/ directory.
2. Run terraform init to initialize the Terraform configuration.
3. Run terraform plan to preview the changes.
4. Run terraform apply to apply the changes and provision AWS resources.
   
### GitHub Actions Workflow

The repository includes a GitHub Actions workflow for automating the deployment process. This workflow triggers on push events to the master branch and performs the following tasks:

1. Checks out the repository.
2. Sets up AWS CLI with credentials stored in GitHub Secrets.
1. Syncs asset files to the S3 bucket.
2. Invalidates CloudFront cache to ensure changes are reflected immediately.

Remember to set up AWS credentials in Secrets Actions of your repository.

## Project Customization
Before applying Terraform changes, make sure to customize variables in terraform/variables.tf. Additionally, ensure that backend configurations in terraform/backend.tf match your desired setup, including S3 bucket names, DynamoDB table names, and regions.
