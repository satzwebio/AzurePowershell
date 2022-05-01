$resourceGroup = "exam-grp"
$network = "exam-network"

#Get-AzVirtualNetwork -Name $network -ResourceGroupName $resourceGroup

$virtualNetwork = Get-AzVirtualNetwork -Name $network -ResourceGroupName $resourceGroup

Write-Host $virtualNetwork.Location
Write-Host $virtualNetwork.AddressSpace.AddressPrefixes