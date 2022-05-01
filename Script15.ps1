#App service plan and Web app
$resourceGroup = "exam-grp"
$location = "eastus"
$appServicePlanName = "app-plan1"
$appName = "webapp78879"


#Create App service Plan
New-AzAppServicePlan -Location $location -ResourceGroupName $resourceGroup -Name $appServicePlanName -Tier Free

#Create App
New-AzWebApp -Name $appName -ResourceGroupName $resourceGroup -Location $location -AppServicePlan $appServicePlanName