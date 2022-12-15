Import-Module WindowsUpdate

#Search for Windows Updates and Install them
Get-WindowsUpdate 
Install-WindowsUpdate -AcceptAll

# Get Date Variable
$timestamp = Get-Date -Format "HH.mm.ss.dd.MM.yyyy"

# Create a .txt file In C:\Windows\Logs\Updates
Write-Output (Get-WindowsUpdateLog) (Get-WindowsUpdate)| Out-File C:\UpdateChecker\logs\UpdateLog_$timestamp.txt