$resourceGroup = "exam-grp"
$location = "East US"
$network = "exam-network"
$AddressPrefix = "10.1.0.0/16"

New-AzVirtualNetwork -Name $network -ResourceGroupName $resourceGroup -Location $location -AddressPrefix $AddressPrefix