#Storage Account
$resourceGroup = "exam-grp"
$location = "eastus"
$storageAccountName = "satzstoragenew"

New-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName -Location $location -SkuName Standard_GRS -Kind StorageV2