#To create a network security group
$resourceGroup = "exam-grp"
$location = "East US"
$networkSecurityGroupName = "app-nsg"

$nsgrule1 = New-AzNetworkSecurityRuleConfig -Name Allow-RDP -Access Allow -Protocol Tcp -Direction Inbound -Priority 120 -SourceAddressPrefix Internet -SourcePortRange * -DestinationAddressPrefix 10.1.0.0/24 -DestinationPortRange 3389

$nsgrule2 = New-AzNetworkSecurityRuleConfig -Name Allow-HTTP -Access Allow -Protocol Tcp -Direction Inbound -Priority 130 -SourceAddressPrefix Internet -SourcePortRange * -DestinationAddressPrefix 10.1.0.0/24 -DestinationPortRange 80

New-AzNetworkSecurityGroup -Name $networkSecurityGroupName -ResourceGroupName $resourceGroup -Location $location -SecurityRules $nsgrule1,$nsgrule2