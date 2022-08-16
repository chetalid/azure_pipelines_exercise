# Commands to build the python application via Azure Cloud CLI -

# to check python version and path 
which python3.5
python3.5 --version


 # Install the virtualenv command-line tool
pip install virtualenv

# create virtual env
virtualenv ~/.azure-devops

# to enter the virtual environment
source ~/.azure-devops/bin/activate


# install the required packages using below command
pip install -r requirements.txt

# Make command to build using Makefile
make all

CLI commands in Cloud Shell

# to display the list of azure account
az account list

# We are using the "Azuredevops" as the resource group name
az group create --location eastus --name Azuredevops

#List all resource groups in your subscription.
az group list	

# Identify a resource group to make VM in it 
az vm create \
--resource-group azuredevops \
--name myVM \
--image UbuntuLTS \
--generate-ssh-keys \
--admin-username adminuser \
--public-ip-sku Standard

# for connecting to VM using public VM from azure portal

chmod 400 ~/.ssh/id_rsa
ssh -i ~/.ssh/id_rsa adminuser@<public-IP-of-VM>