#!/bin/bash
# include parameters file
source ./params.sh

az group deployment create --name "VM1" --resource-group $resourceGroupName --template-file ./StandaloneVM/azuredeploy.json --parameters location=$vnet2Location adminUsername=$userName adminPublicKey="$sshKey" targetVnetName=$vnet2Name vmName=$vm1Name vmSize=$vmSize vmZone="1"