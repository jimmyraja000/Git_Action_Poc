Set-ExecutionPolicy RemoteSigned
import-module webadministration
$DEV_APP_POOL_NAME= "dev_app_Git"
$DEV_WEBSITE_NAME="dev_web_Git"

if(Test-Path IIS:\Sites\$DEV_WEBSITE_NAME)
{
"WebSite is already there"
return $true;
}
else
{
"Website is not present"
"Creating new WebSite"
New-Website -Name "$DEV_WEBSITE_NAME" -PhysicalPath "I:\inetpub\wwwroot\$DEV_WEBSITE_NAME" -ApplicationPool "$DEV_APP_POOL_NAME" -Force
return $false;
}
