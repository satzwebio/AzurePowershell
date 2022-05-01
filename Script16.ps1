#App service plan and Web app
$resourceGroup = "exam-grp"
$appName = "webapp78879"
$githubURL = "https://github.com/satzwebio/satzrepo"

#Upload a default.html file in github repo-- *public


$PropertiesObject = @{

repoURL = $githubURL;
branch = "main";
isManualIntegration = "true";

}


Set-AzResource -Properties $PropertiesObject -ResourceGroupName $resourceGroup -ResourceType Microsoft.Web/sites/sourcecontrols -ResourceName $appName/web -ApiVersion 2015-08-01 -Force