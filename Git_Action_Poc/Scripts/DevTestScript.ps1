$DEV_WEBSITE_NAME="dev_web_Git"
$dir = "I:\inetpub\wwwroot\$DEV_WEBSITE_NAME"
if(!(Test-Path -Path $dir )){
    New-Item -ItemType directory -Path $dir
    Write-Host "New folder created"
}
else
{
  Write-Host "Folder already exists"
}
