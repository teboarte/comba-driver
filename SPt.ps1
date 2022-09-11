$excluded = @("iacamera64.inf","SurfaceDisplay.inf")
$driverPath= @("drive:\filepath\to\target\folder")
$services = Get-ChildItem -Path $driverPath -Recurse -Filter "*.inf" -Exclude $excluded
$count=$services.Count
 For($i = 1; $i -le $count; $i++)
{
 
Write-Progress -Activity "Install Drivers" `
-PercentComplete (($i*100)/$count) `
-Status "$(([math]::Round((($i)/$count * 100),0))) %"
 
Start-Sleep -Milliseconds 100
}
Clear-Host
$services| ForEach-Object { PNPUtil.exe /add-driver $_.FullName /install }
