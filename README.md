# flask-ml-service
A sample Flask application to showcase the Azure Pipeline.

## Environment
Python 3.7

		**Overview of CI/CI Pipeline for Azure WebApp Deployment **
		
The goal of this project is to create infrastructure as code (IaC) in the form of a Terraform template as well as a Packer configuration to deploy a highly available website with a load balancer, as shown in the diagram below. The infrastructure is deployed into Azure in a customizable way based on specifications provided at build time, with an eye toward scaling the application for use in a CI/CD pipeline.

The project contains a Python Flask WebApp which serves out housing prices predictions through API calls. The algorithm is based on pre-trained sklearn ML model for Boston area.

This is a Project 2 submission demonstrating CI/CD techiques and skills acquired in the course.
Pushes to the GitHub repository's main branch trigger:

1)Continuous Integration pipeline on GitHub Actions.
2)Continuous Delivery pipeline on Azure Pipelines.
 
-Table of Contents
1)Main Steps

2)Architectural Diagram

3)Project Plan

i)Instructions

ii)Architectural Diagram

iii)Project Dependencies

iv)Getting Started

4)Running the Python project with Screenshots

5)Future Enhancements

 
Main Steps
The project consist of the following main steps:
Creating a Packer template
Creating a Terraform template
Deploying the infrastructure
 
   Project Plan
Below are the links of Trello board and spreadsheet having the task details
A link to a Trello board for the project
	https://trello.com/b/YImOmwev/udacitycicdproject
A link to a spreadsheet that includes the original and final project plan
	https://docs.google.com/spreadsheets/d/1xiUUmG4Ml3QKtJ14i1DrW9OuS8F8olzu6mtcofrdY1Q/edit#gid=0
 
Instructions
Architectural Diagram
 
 <img width="619" alt="azure-devops-project2-architecture" src="https://user-images.githubusercontent.com/18601050/184720437-2707d201-274f-4e8e-ba67-27e68f572a91.png">


Project Dependencies
Create an Azure Account
Install the Azure command line interface
Install Packer
Install Terraform
 
Getting Started
Open Azure cloud shell
Create gpg keys for ssh access to GitHub repo. This creates files with private and public keys in directory ~/.ssh/
Copy contents of the new public key file: id_rsa.pub
Add new key to your GitHub profile (Settings, GPG keys, add new), paste the key and add some name - could be anything.
Clone the Repo into your azure cloud shell.
Make sure the following environment variables are set and correspond to your azure account details:
Make sure the following environment variables are set and correspond to your azure account details:
ARM_CLIENT_ID ,ARM_CLIENT_SECRET, ARM_SUBSCRIPTION_ID, ARM_TENANT_ID
Run below command to see the account details:
	"az account list"
 
Use below export command to assign the values from corresponding subscription to the above env vars.
export ARM_CLIENT_ID=<value from property 'homeTenantId'>
export ARM_CLIENT_SECRET=<value from>
export ARM_SUBSCRIPTION_ID=<value from property 'id'>
export ARM_TENANT_ID=<value from property 'tenantId'>
 
Running the Python project
While still in Azure cloud shell cd into the project dir.
Install & activate virtual environment, install dependencies.
Create a webapp and deploy code from a local workspace to the app.
This should result in the app running in the cloud and being accessible from the internet. Expected output for successfull deployment:
 
**Passing tests that are displayed after running the make all command from the Makefile**
	
	
	![Make_All](https://user-images.githubusercontent.com/18601050/184724084-45ffd060-873c-417b-a147-df50d1c6af2f.png)

	

	
	
	
	
![GithubActions_Passed](https://user-images.githubusercontent.com/18601050/184724105-3fb199a3-d514-4ba9-aa82-09ad9e47122c.png)

	
	

	

	**Output of a test run**
	
	
	
	
	![Test_Case_Result](https://user-images.githubusercontent.com/18601050/184723394-9b043663-acc9-4d1e-93cc-162f317748ec.png)

	




**Successful deploy of the project in Azure Pipelines.** 

	
	
 
![AzurePipelineBuild1](https://user-images.githubusercontent.com/18601050/184720564-013e30c9-b9d3-4594-be20-052f94e52658.png)
	
	
	

	
![AzurePipelineDeploy](https://user-images.githubusercontent.com/18601050/184720621-86edc3ca-f3aa-4afe-a31e-127ed6d8bea9.png)

 
	


	
	
	![AzurePipelineDeployFinal](https://user-images.githubusercontent.com/18601050/184723480-d21c740c-0e83-44a4-9ca9-7746c280de96.png)

	
	
	
	
	
Running Azure App Service from Azure Pipelines automatic deployment
	
	
	
	
![flask_ml_webapp_URL](https://user-images.githubusercontent.com/18601050/184722885-114573fa-a7fb-4714-a646-32ff981e03df.png)

	
	
	
	

Successful prediction from deployed flask app in Azure Cloud Shell. The output should look similar to this:
	
	
	
	
![Prediction_screenshot](https://user-images.githubusercontent.com/18601050/184723109-6968feaf-42ec-4c42-b620-00966d72abae.png)


	
	
	
Output of streamed log files from deployed application

	
	
	
![App_Log_Stream](https://user-images.githubusercontent.com/18601050/184723143-7623e309-d13b-4697-ad1e-1fc07c971487.png)
	

	


	
	
	Enhancements
	
	
This project can be adapted for use in a microservice architecture where the application is deployed into Azure from a Kubernetes cluster.
Demo

