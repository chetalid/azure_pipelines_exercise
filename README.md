# flask-ml-service
A sample Flask application to showcase the Azure Pipeline.

## Environment
Python 3.7

Overview
The goal of this project is to create infrastructure as code (IaC) in the form of a Terraform template as well as a Packer configuration to deploy a highly available website with a load balancer, as shown in the diagram below. The infrastructure is deployed into Azure in a customizable way based on specifications provided at build time, with an eye toward scaling the application for use in a CI/CD pipeline.
The project contains a Python Flask WebApp which serves out housing prices predictions through API calls. The algorithm is based on pre-trained sklearn ML model for Boston area.
This is a Project 2 submission demonstrating CI/CD techiques and skills acquired in the course.
Pushes to the GitHub repository's main branch trigger:
Continuous Integration pipeline on GitHub Actions.
Continuous Delivery pipeline on Azure Pipelines.
 
Table of Contents
Main Steps
Architectural Diagram
Project Plan
Instructions
Architectural Diagram
Project Dependencies
Getting Started
Running the Python project
Screenshots
Future Enhancements
 
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
az account list
 
Use export command to assign the values from corresponding subscription to the above env vars.
export ARM_CLIENT_ID=<value from property 'homeTenantId'>
export ARM_CLIENT_SECRET=<value from>
export ARM_SUBSCRIPTION_ID=<value from property 'id'>
export ARM_TENANT_ID=<value from property 'tenantId'>
 
Running the Python project
While still in Azure cloud shell cd into the project dir
Install & activate virtual environment, install dependencies:
Create a webapp and deploy code from a local workspace to the app.
This should result in the app running in the cloud and being accessible from the internet. Expected output for successfull deployment:
 
Passing tests that are displayed after running the make all command from the Makefile

Output of a test run

Successful deploy of the project in Azure Pipelines. 

 

 

Running Azure App Service from Azure Pipelines automatic deployment

Successful prediction from deployed flask app in Azure Cloud Shell. The output should look similar to this:
	
Output of streamed log files from deployed application

Enhancements
<TODO: A short description of how to improve the project in the future>
Demo
<TODO: Add link Screencast on YouTube>
