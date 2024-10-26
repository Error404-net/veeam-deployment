# Veeam Deployment with Terraform

This project automates the deployment of a Veeam environment on Proxmox using Terraform.

## Project Structure
- **main.tf**: Central Terraform configuration file.
- **variables.tf**: Variables for configuration inputs.
- **outputs.tf**: Outputs for useful information.
- **terraform.tfvars**: Contains actual values for variables (e.g., API credentials).
- **provider.tf**: Proxmox and Azure provider configurations.
- **veeam/**: Contains individual configurations for each Veeam component.

## Setup Instructions
1. Define your environment variables in `terraform.tfvars`.
2. Run `terraform init` to initialize the project.
3. Run `terraform apply` to deploy the environment.
