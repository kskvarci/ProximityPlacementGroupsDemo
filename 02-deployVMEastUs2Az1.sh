#!/bin/bash
# include parameters file
source ./params.sh

az group deployment create --name "VM2" --resource-group $resourceGroupName --template-file ./StandaloneVM/azuredeploy.json --parameters location=$vnet1Location adminUsername=$userName adminPublicKey="$sshKey" targetVnetName=$vnet1Name vmName=$vm2Name vmSize=$vmSize vmZone="1"