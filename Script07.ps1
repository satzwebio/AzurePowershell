$resourceGroup = "exam-grp"
$network = "exam-network"
$subnetName = "SubnetA"
$networkInterfaceName = "app-interface"
$location = "East US"


$virtualNetwork = Get-AzVirtualNetwork -Name $network -ResourceGroupName $resourceGroup

$subnet = Get-AzVirtualNetworkSubnetConfig -VirtualNetwork $virtualNetwork -Name $subnetName

New-AzNetworkInterface -Name $networkInterfaceName -ResourceGroupName $resourceGroup -Location $location -SubnetId $subnet.Id -IpConfigurationName "appconfig"