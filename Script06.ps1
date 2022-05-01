$resourceGroup = "exam-grp"
$location = "East US"
$network = "exam-network-new"
$AddressPrefix = "10.2.0.0/16"
$subnetName = "SubnetA"
$subnetAddressPrefix = "10.2.0.0/24"

$subnet = New-AzVirtualNetworkSubnetConfig -Name $subnetName -AddressPrefix $subnetAddressPrefix

New-AzVirtualNetwork -Name $network -ResourceGroupName $resourceGroup -Location $location -AddressPrefix $AddressPrefix -Subnet $subnet





