#!/bin/bash
# include parameters file
source ./params.sh

az group deployment create --name "Proximity" --resource-group $resourceGroupName --template-file ./ProximityVM/azuredeploy.json --parameters location=$vnet1Location adminUsername=$userName adminPublicKey="$sshKey" targetVnetName=$vnet1Name vm1Name=$vm5Name vm2Name=$vm6Name vmSize=$vmSize vmZone="2" ppgName="proximity1"