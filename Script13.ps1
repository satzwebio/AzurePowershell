#To create a Virtual Machine in availability Set
$resourceGroup = "exam-grp"
$location = "eastus"
$vmName = "appvm"
$vmSize = "Standard_DS2_v2"
$vmImage = "Win2019Datacenter"
$nsgName = "app-nsg"
$vmPublicIP = "app-public-ip"
$virtualNetworkName = "exam-network"
$subnetName = "SubnetA"
$networkSecurityGroupName = "app-nsg"
$publicIPAddressName = "app-public-ip"
$availabilitySetName - "app-set"

#Get-AzVMSize -Location "East US"

New-AzVm -ResourceGroupName $resourceGroup -VirtualNetworkName $virtualNetworkName -Location $location -Name $vmName -SubnetName $subnetName -Size $vmSize -Image $vmImage -SecurityGroupName $networkSecurityGroupName -PublicIpAddressName $publicIPAddressName -Credential (Get-Credential) -AvailabilitySetName $availabilitySetName