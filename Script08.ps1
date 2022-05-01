# To create a Public IP
$resourceGroup = "exam-grp"
$location = "East US"
$publicIPAddressName = "app-public-ip"

New-AzPublicIpAddress -Name $publicIPAddressName -ResourceGroupName $resourceGroup -Location $location -AllocationMethod Dynamic
