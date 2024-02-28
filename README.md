# Platform-Engineer-Test
Deploying the sample containerized Application to AKS using IAC, Azure DevOps

## 1. Provision Infrastructure (Prereq: Resource-group and storage account)
terraform init
terraform fmt
terraform validate
terraform plan
terrraform apply

## 2. How to Build and Push Docker Images to ACR
docker build -t flask-test:latest .
docker tag flask-test:latest platformtest2024.azurecr.io/flask-app:latest
docker push  platformtest2024.azurecr.io/flask-app:latest