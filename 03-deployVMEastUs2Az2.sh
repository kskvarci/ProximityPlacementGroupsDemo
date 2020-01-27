#!/bin/bash
# include parameters file
source ./params.sh

az group deployment create --name "VM3" --resource-group $resourceGroupName --template-file ./StandaloneVM/azuredeploy.json --parameters location=$vnet1Location adminUsername=$userName adminPublicKey="$sshKey" targetVnetName=$vnet1Name vmName=$vm3Name vmSize=$vmSize vmZone="2"