#!/bin/bash
# include parameters file
source ./params.sh

az group create --name $resourceGroupName --location $rgLocation
az group deployment create --name "NetworkLayer" --resource-group $resourceGroupName --template-file ./Network/azuredeploy.json --parameters vNet1Name=$vnet1Name vNet1Location=$vnet1Location vNet2Name=$vnet2Name vNet2Location=$vnet2Location sourceIp="$sourceIp"