
# Terraform AWS EC2 with Remote State

Provisioning an AWS EC2 instance using Terraform with S3 remote backend and state locking.

## Prerequisites
- Terraform >= 1.15.0
- AWS CLI configured
- S3 bucket created for remote state
- DynamoDB table created for state locking

## Project Structure
    .
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    ├── .gitignore
    ├── .terraform.lock.hcl
    └── config/
        ├── backend-dev.conf.example
        └── dev.tfvars.example

## Setup

1. Clone the repo
    git clone https://github.com/Anuragkumar-8680/terraform-aws-ec2-remote-state.git
    cd terraform-aws-ec2-remote-state

2. Create config files from examples
    cp config/backend-dev.conf.example config/backend-dev.conf
    cp config/dev.tfvars.example config/dev.tfvars

3. Initialize Terraform
    terraform init -backend-config=config/backend-dev.conf

4. Plan and Apply
    terraform plan -var-file=config/dev.tfvars
    terraform apply -var-file=config/dev.tfvars

5. Destroy
    terraform destroy -var-file=config/dev.tfvars

## Remote State
State file is stored in S3 and locked using use_lockfile to prevent concurrent modifications.

## Outputs
| Name           | Description              |
|----------------|--------------------------|
| instance_id    | EC2 Instance ID          |
| public_ip      | Public IP of EC2         |
| private_ip     | Private IP of EC2        |
| instance_state | Current state of EC2     |
