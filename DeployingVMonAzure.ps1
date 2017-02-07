
# Adding our azure account to PowerShell
Add-AzureAccount

# Getting data from our azure subscription
Get-AzureSubscription

# Choosing one subscription
Select-AzureSubscription –SubscriptionName "BizSpark"

# Getting all locations available
Get-AzureLocation | Select DisplayName

# Creating a new azure storage account
New-AzureStorageAccount -StorageAccountName "myaccountpshell" -Label "myaccountpshell" -Location "South Central US"

# Set link between azure subscription and storage account
Set-AzureSubscription -SubscriptionName "BizSpark" -CurrentStorageAccountName "myaccountpshell"

# Getting all virtual machine images
Get-AzureVMImage | Select ImageName

# Deploying virtual machine on Azure
New-AzureQuickVM -Windows -ServiceName "myservicevmpshell" -Name "myvmwithpshell" -ImageName "a699494373c04fc0bc8f2bb1389d6106__Windows-Server-2012-R2-20160617-en.us-127GB.vhd" -Location "South Central US" -InstanceSize "Large"  -AdminUsername "vmoreno" -Password "Mazure1."

# Getting all virtual machines existing
Get-AzureVM

# Downloading remote desktop file to connect to virtual machine
Get-AzureRemoteDesktopFile -ServiceName "myservicevmpshell" -Name "myvmwithpshell" -LocalPath D:\rdp\myvmwithpshell.rdp

# Executing remote desktop file 
mstsc.exe D:\rdp\myvmwithpshell.rdp

# Stopping virtual machine
Stop-AzureVM -ServiceName "myservicevmpshell" -Name "myvmwithpshell"

# Getting azure disks
Get-AzureDisk | Select DiskName

# Deleting specific virtual machine
Remove-AzureVM -ServiceName "myservicevmpshell" -Name "myvmwithpshell"

# Deleting specific azure disk
Remove-AzureDisk -DiskName myservicevmpshell-myvmwithpshell-0-201702060518270967 -DeleteVHD

# Deleting specific azure service
Remove-AzureService -ServiceName "myservicevmpshell"

# Getting all azure services existing
Get-AzureService

# Deleting azure storage account
Remove-AzureStorageAccount -StorageAccountName "myaccountpshell"

# Getting azure storage account
Get-AzureStorageAccount