#To create a Virtual Machine
$resourceGroup = "exam-grp"
$location = "eastus"
$diskDataName = "app-disk1"
$vmName = "appvm"

# $vmSize = "Standard_DS2_v2"
# $vmImage = "Win2019Datacenter"
# $nsgName = "app-nsg"
# $vmPublicIP = "app-public-ip"
# $virtualNetworkName = "exam-network"
# $subnetName = "SubnetA"
# $networkSecurityGroupName = "app-nsg"
# $publicIPAddressName = "app-public-ip"

#Get-AzVMSize -Location "East US"

# New-AzVm -ResourceGroupName $resourceGroup -VirtualNetworkName $virtualNetworkName -Location $location -Name $vmName -SubnetName $subnetName -Size $vmSize -Image $vmImage -SecurityGroupName $networkSecurityGroupName -PublicIpAddressName $publicIPAddressName -Credential (Get-Credential)


#First we need to create a disk configuration
$dataDiskConfig = New-AzDiskConfig -Location $location -CreateOption Empty -DiskSizeGB 16 -SkuName "Standard_LRS"

#We need to create the data disk
$datadisk = New-AzDisk -ResourceGroupName $resourceGroup -DiskName $diskDataName -Disk $dataDiskConfig

# Need to get a reference to the VM to attach the disk to
$vm = Get-AzVM -ResourceGroupName $resourceGroup -Name $vmName

#Then attach the disk
$vm = Add-AzVMDataDisk -VM $vm -Name $diskDataName -CreateOption Attach -ManagedDiskId $dataDisk.Id -Lun 0 

# Then we need to update the VM
Update-AzVM -ResourceGroupName $resourceGroup -VM $vm









