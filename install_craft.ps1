# [Net.ServicePointManager]::SecurityProtocol = "SystemDefault, tls12, tls11"

####################################################
# Start
Write-Host "Start to boostrap Craft."

Write-Host "Create CraftRoot directories"
mkdir C:\CraftRoot\ -Force
mkdir C:\CraftRoot\download -Force


&{
#$url = "https://raw.githubusercontent.com/KDE/craft/$Script:branch/setup/CraftBootstrap.py"
#Write-Host "Downloading:" $url
#(new-object net.webclient).DownloadFile("$url", "$Script:installRoot\download\CraftBootstrap.py")

Copy-Item "CraftBootstrap.py" -Destination "$Script:installRoot\download\CraftBootstrap.py"

Start-Sleep -s 10
[string[]]$command = @("$Script:installRoot\download\CraftBootstrap.py", "--prefix", "C:\CraftRoot\", "--branch", "$Script:branch")
Write-Host "python3" $command
& python3 $command
cd $Script:installRoot
}
