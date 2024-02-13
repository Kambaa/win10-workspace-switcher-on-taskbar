Param
(
  [Parameter(Mandatory = $true,  HelpMessage = 'Monitor Number, Starts from 0')]
  [sbyte]$MonitorNumber
)

$moduleName = "VirtualDesktop"

# Check if the module is installed
if (-not (Get-Module -ListAvailable -Name $moduleName)) {
    # If the module is not installed, install it for the current user
    try {
        Install-Module -Name $moduleName -Scope CurrentUser -Force
        Write-Host "The module '$moduleName' has been installed successfully."
    } catch {
        Write-Host "Failed to install the module '$moduleName'."
        Write-Host $_.Exception.Message
    }
} else {
    Write-Host "The module '$moduleName' is already installed.Importing..."
    Import-Module -Name VirtualDesktop
}

#Write-Host $MonitorNumber
$count =  Get-DesktopCount

if($MonitorNumber -gt $count){
Write-Host "Monitor Number Cannot Be Bigger Than Total Monitor Count($($count))! Exiting..."
exit;
}

Get-Desktop $MonitorNumber | Switch-Desktop
