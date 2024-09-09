# sample_azure_project

Use below command to create storage account to save terraform statefile

# Create Resource Group
az group create --name pocterraform --location WestEurope

# Create Storage Account
az storage account create --name testpocsa --resource-group pocterraform --location WestEurope --sku Standard_LRS

# Create Storage Container
az storage container create --name terraformstatefiles --account-name mystorageaccount


#Initilize terraform
cd dev/
terraform init

#Validate the terrafor script
terraform validate

#Verifiy the changes using terraform plan
terraform plan

#Apply the infra changes below command
terraform apply
