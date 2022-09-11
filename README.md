# Comba-driver 
Install win10 drivers from folder with Powershell and pnputil

## Why use pnputil and powershell ?
When we want to install or update driver on our system, but our windows version does not support the latest .msi driver-package, this is very common in companies using [(LTSC)](https://docs.microsoft.com/de-de/windows/whats-new/ltsc/) versions, then we resort to force install with pnputil trhough powershell.

## Devices and windows versions
The Script has been tested on microsoft surface devices with windows ltsb and ltsc versions.

Windows 10 Enterprise LTSC:
1. SurfacePro 4
2. SurfacePro
3. SurfacePro 6
4. SurfacePro 7

ltsb:
1. SurfacePro 4
2. SurfacePro
## Setup

### Important Files
 .ps1 :
 The Powershell-Script looks inside the extracted folder and chooses all the ".inf" files and then installs them with [(pnputil)](https://docs.microsoft.com/de-de/windows-server/administration/windows-commands/pnputil)
 
 .bat:
 Changes PowerShell execution policies for Windows computers with the help of "Execution-policy"

### Extract msi.package 

1. Access a command prompt and execute :
```
msiexec /a drive:\filepath\to\MSI\file /qb TARGETDIR=drive:\filepath\to\target\folder
```

### Setup Powershell-Script
change your driver path on .ps1 
```
$driverPath= @("drive:\your_extracted_folder\")
```
### Setup .bat File
change the location of you .ps1
```
-File drive:\Your\Folder\SPt.ps1  
``` 
### Execute the .bat File 
You can execute like a normal user or admin
## Donation
Give a ⭐ if this project helped you!
