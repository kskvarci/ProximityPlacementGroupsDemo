#!/bin/bash
# include parameters file
source ./params.sh

az group deployment create --name "VM4" --resource-group $resourceGroupName --template-file ./StandaloneVM/azuredeploy.json --parameters location=$vnet1Location adminUsername=$userName adminPublicKey="$sshKey" targetVnetName=$vnet1Name vmName=$vm4Name vmSize=$vmSize vmZone="3"