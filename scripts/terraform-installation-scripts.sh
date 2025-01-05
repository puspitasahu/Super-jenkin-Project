#!/bin/bash

# Update the system
sudo yum update -y

# Install wget and unzip if they are not already installed
sudo yum install -y wget unzip

# Download the Terraform binary (replace version number if necessary)
wget https://releases.hashicorp.com/terraform/1.5.3/terraform_1.5.3_linux_amd64.zip

# Unzip the Terraform binary
unzip terraform_1.5.3_linux_amd64.zip

# Move Terraform to /usr/local/bin for system-wide availability
sudo mv terraform /usr/local/bin/

# Verify the Terraform installation
terraform --version

# Clean up the downloaded zip file
rm terraform_1.5.3_linux_amd64.zip

# Output the installation success message
echo "Terraform installation completed successfully!"
