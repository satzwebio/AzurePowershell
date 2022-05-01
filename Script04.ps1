$resourceGroup = "exam-grp"
$network = "exam-network"
$location = "East US"
$AddressPrefix = "10.1.0.0/16"


Remove-AzVirtualNetwork -Name $network -ResourceGroupName $resourceGroup
$virtualNetwork = New-AzVirtualNetwork -Name $network -ResourceGroupName $resourceGroup -Location $location -AddressPrefix $AddressPrefix

Write-Output $virtualNetwork.Location
Write-Output $virtualNetwork.AddressSpace.AddressPrefixes
Write-Output $virtualNetwork.Id