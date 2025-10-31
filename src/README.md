Basket Team Day Nov 6th, Terraform


1) List azure subscriptions with az account list
2) Locate Spektrix Sandbox sub and set it as active using az account set --subscription mysubscription
3) Run az account show to confirm that this is the active subscription 

_______


storageAccount="bskt-infra133"
location="westeurope"
resourceGroup="bskt-infra133"
containerName="bskt-container-terraform"

# Approach 1: Create a container
az storage container create --name $containerName--account-name $storageAccount    --auth-mode login

az group create --name $storageAccount --location $location$

az storage account create --name "bskt87654" --resource-group "bskt-infra133" --location $location$ 

again remember to select sandbox sub scription
"937c854e-4afb-4727-82ec-1bc86b6ed1d9"

 az account set --subscription "XXXXXXX-4afb-4727-82ec-1bc86b6ed1d9"