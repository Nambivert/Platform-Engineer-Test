# Platform-Engineer-Test

This repository contains steps and resources for deploying a containerized application (Python - Hello 2022 with Headers) to Azure Kubernetes Service (AKS) using Infrastructure as Code (IaC) and Azure DevOps.

## 1. Create the Flask application and prepare Dockerfile

### Code files:
- [main.py](main.py)
- [Dockerfile](Dockerfile)

To manually build the Docker image:

```bash
docker build -t flask-test:latest .
docker tag flask-test:latest platformtest2024.azurecr.io/flask-app:latest
docker push platformtest2024.azurecr.io/flask-app:latest
```

## 2. Provision Infrastructure (Prerequisites: Resource Group and Storage Account)

In the `infrastructure` folder, you'll find Terraform files for provisioning the required infrastructure components including backend, cluster, VNet, container registry, and AKS role assignments for ACR.

### Deployment commands:

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

## 3. Create CI/CD pipeline in Azure DevOps

### Prepare Manifests:

Find Kubernetes manifests in the `manifests` folder. (Deployment and Service YAML manifests)
Manual apply using kubectl apply -f ./manifests

### Prepare ADO Pipeline YAML

Integrate this GitHub repository with Azure Pipelines and utilize the YAML configuration in [azure-pipelines.yml](azure-pipelines.yml) for Docker image build and push to Azure Container Registry (ACR), and deployment to the AKS cluster.

### Successful ADO pipeline (Image)
![image](https://github.com/Nambivert/Platform-Engineer-Test/assets/79801348/bead20a1-cc59-4f81-b40f-3cc194499fa8)
