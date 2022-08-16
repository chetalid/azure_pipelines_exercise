[![Python application test with Github Actions](https://github.com/chetalid/azure_pipelines_exercise/actions/workflows/main.yml/badge.svg)](https://github.com/chetalid/azure_pipelines_exercise/actions/workflows/main.yml)

# Azure WebApp Deployment 
A sample Flask application to showcase the Azure Pipeline.

## Environment
Python 3.7

# Overview of CI/CI Pipeline for Azure WebApp Deployment **
		
The goal of this project is to create infrastructure as code (IaC) in the form of a Terraform template as well as a Packer configuration to deploy a highly available website with a load balancer, as shown in the diagram below. The infrastructure is deployed into Azure in a customizable way based on specifications provided at build time, with an eye toward scaling the application for use in a CI/CD pipeline.

The project contains a Python Flask WebApp which serves out housing prices predictions through API calls. The algorithm is based on pre-trained sklearn ML model for Boston area.

This is a Project 2 submission demonstrating CI/CD techiques and skills acquired in the course.

- Pushes to the GitHub repository's main branch trigger:

* 1)Continuous Integration pipeline on GitHub Actions.
* 2)Continuous Delivery pipeline on Azure Pipelines.
 
## Table of Contents
- [Demo](#demo)
- [Architectural Diagram](#architectural-diagram)
- [Project Plan](#project-plan)
- [Instructions](#instructions)
  * [Dependencies](#dependencies)
  * [Getting Started](#getting-started)
  * [Running the Python project](#running-the-python-project)
- [Alternative deployment via script using Terraform](#alternative-deployment-via-script-using-terraform)
- [Screenshots](#screenshots)
- [Future Enhancements](#future-enhancements)

## Demo

<iframe width="560" height="315" src="https://www.youtube.com/embed/_XoZenvKlLw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

https://youtu.be/_XoZenvKlLw
 
## Main Steps
1. The project consist of the following main steps:
2. Creating a Packer template
3. Creating a Terraform template
4. Deploying the infrastructure
 

 
## Architectural Diagram

 
 <img width="619" alt="azure-devops-project2-architecture" src="https://user-images.githubusercontent.com/18601050/184720437-2707d201-274f-4e8e-ba67-27e68f572a91.png">



 ## Project Plan
Below are the links of Trello board and spreadsheet having the task details
A link to a Trello board for the project
	https://trello.com/b/YImOmwev/udacitycicdproject
A link to a spreadsheet that includes the original and final project plan
	https://docs.google.com/spreadsheets/d/1xiUUmG4Ml3QKtJ14i1DrW9OuS8F8olzu6mtcofrdY1Q/edit#gid=0

## Instructions

### Dependencies

1. Create an Azure Account
2. Install the Azure command line interface
3. Install Packer
4. Install Terraform
 
### Getting Started

1. Open Azure cloud shell
2. Create gpg keys for ssh access to GitHub repo. This creates files with private and public keys in directory ~/.ssh/
3. Copy contents of the new public key file: id_rsa.pub
4. Add new key to your GitHub profile (Settings, GPG keys, add new), paste the key and add some name - could be anything.
5. Clone the Repo into your azure cloud shell.
6. Make sure the following environment variables are set and correspond to your azure account details:

* ARM_CLIENT_ID 
* ARM_CLIENT_SECRET
* ARM_SUBSCRIPTION_ID
* ARM_TENANT_ID

7. Run below command to see the account details:
	"az account list"
 
8. Use below export command to assign the values from corresponding subscription to the above env vars.

```bash
export ARM_CLIENT_ID=<value from property 'homeTenantId'>
export ARM_CLIENT_SECRET=<value from>
export ARM_SUBSCRIPTION_ID=<value from property 'id'>
export ARM_TENANT_ID=<value from property 'tenantId'>
```

## Running the Python project

While still in Azure cloud shell cd into the project dir.
Install & activate virtual environment, install dependencies.
Create a webapp and deploy code from a local workspace to the app.
This should result in the app running in the cloud and being accessible from the internet. Expected output for successfull deployment:
 
## Passing tests that are displayed after running the make all command from the Makefile
	
	
	
	
![Make_All](https://user-images.githubusercontent.com/18601050/184724208-efd7c307-9d3b-4c0d-81aa-9702b1973c82.png)

	

	
	
	
	
![GithubActions_Passed](https://user-images.githubusercontent.com/18601050/184724105-3fb199a3-d514-4ba9-aa82-09ad9e47122c.png)

	
	

	

## Output of a test run
	
	
	
	

![Test_Case_Result](https://user-images.githubusercontent.com/18601050/184724283-476a2f7b-dac0-48d0-9cc8-93a37d1a3f37.png)

	




## Successful deploy of the project in Azure Pipelines

	
	
 
![AzurePipelineBuild1](https://user-images.githubusercontent.com/18601050/184720564-013e30c9-b9d3-4594-be20-052f94e52658.png)
	
	
	

	
![AzurePipelineDeploy](https://user-images.githubusercontent.com/18601050/184720621-86edc3ca-f3aa-4afe-a31e-127ed6d8bea9.png)

 
	


	
	
	
![AzurePipelineDeployFinal](https://user-images.githubusercontent.com/18601050/184724332-27cb7aca-81b8-4131-96fb-7a1e8e62dc03.png)

	
	
	
	
	

## Running Azure App Service from Azure Pipelines automatic deployment
	
	
	
	
![flask_ml_webapp_URL](https://user-images.githubusercontent.com/18601050/184722885-114573fa-a7fb-4714-a646-32ff981e03df.png)

	
	
	
	

	
	
## Successful prediction from deployed flask app in Azure Cloud Shell. The output should look similar to this:
	
	
	
	
![Prediction_screenshot](https://user-images.githubusercontent.com/18601050/184723109-6968feaf-42ec-4c42-b620-00966d72abae.png)


	
	
	

	
	
	
## Output of streamed log files from deployed application

	
	
	
![App_Log_Stream](https://user-images.githubusercontent.com/18601050/184723143-7623e309-d13b-4697-ad1e-1fc07c971487.png)
	

	


	
	



	

	
## Future Enhancements
	
	
This project can be adapted for use in a microservice architecture where the application is deployed into Azure from a Kubernetes cluster.
Demo

