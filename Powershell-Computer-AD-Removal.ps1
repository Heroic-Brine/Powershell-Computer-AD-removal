wirte-hos
$credential = Get-Credential 
write-host $credential
Start-Sleep 5
Remove-Computer -localcredential $credential -force
Start-Sleep 5