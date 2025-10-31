#/usr/bin/sh

storageAccount="bskt-storaage1"
location="westeurope"
resourceGroup="bskt-infra133"
containerName="bskt-container-terraform"

# Approach 1: Create a container

az group create --name $storageAccount --location $location$
az storage account create --name $storageAccount --resource-group $resourceGroup --location $location$ 
az storage container create --name $containerName --account-name $storageAccount --auth-mode login
