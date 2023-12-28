# Terraform Project: DevOps Assignment 4

## Overview

This Terraform project deploys a simple web application infrastructure on AWS. The architecture includes a VPC with 4 subnets distributed across two Availability Zones. EC2 instances will host a simple web server, with one instance for hosting a web server and the other for deploying a database instance.

## Project Structure

The project is organized into multiple files:

- `iam.tf`: Creates an IAM user and access key.
- `outputs.tf`: Defines the outputs that display public and private IP addresses of the EC2 instances and IAM user details.
- `networking.tf`: Defines VPC, subnets, internet gateway, and route table configurations.
- `security_groups.tf`: Defines the security group configuration.
- `keypair.tf`: Defines the key pair configuration.
- `ec2.tf`: Defines the EC2 instances configuration.

## Instructions

### Prerequisites

1. Install Terraform: [Terraform Installation Guide](https://learn.hashicorp.com/tutorials/terraform/install-cli)
2. Configure AWS CLI: [AWS CLI Configuration Guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html)

### Deploy Infrastructure

1. Clone this repository: `git clone https://github.com/your-repo-url.git`
2. Navigate to the project directory: `cd DevOps4`
3. Initialize Terraform: `terraform init`
4. Review the execution plan: `terraform plan`
5. Apply the changes: `terraform apply`

### Accessing Resources

1. After deployment, the public and private IP addresses of EC2 instances will be displayed as outputs.
2. Use the IAM user credentials generated during the setup for accessing the AWS Console.

### Clean Up

1. To destroy the infrastructure, run: `terraform destroy`
2. Confirm with `yes` when prompted.

## Outputs

- **IAM-Details**: IAM user details including access key.
- **db-server-instance-details**: Private and public IP addresses of the database server instance.
- **web-server-instance-details**: Private and public IP addresses of the web server instance.

## Important Notes

- Ensure that your AWS CLI is configured with the necessary credentials.
- Review the Terraform configuration files for customization.
