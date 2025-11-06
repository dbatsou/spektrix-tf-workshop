#/usr/bin/sh
name="dimi"
storageAccount="bsktstoraage1${name}"
location="northeurope"
resourceGroup="bskt-infra133-${name}-rg"
containerName="bskt-container-terraform"

# Approach 1: Create a container

az group create --name $resourceGroup --location $location
az storage account create --name $storageAccount --resource-group $resourceGroup --location $location
az storage container create --name $containerName --account-name $storageAccount --auth-mode login
