#Defining a value for Resource group
$resourceGroup = "exam-grp"
$location = "eastus"

New-AzResourceGroup -Name $resourceGroup -Location $location