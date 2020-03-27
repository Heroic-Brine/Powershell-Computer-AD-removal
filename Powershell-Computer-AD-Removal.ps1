param(
     [Parameter(Mandatory = $true)]
     #the thorw is unessery due to the mandatory written above i just wanteted to try thorws
     [string] $username = $(throw "-username is required") 
)
#write-host $username
#Start-Sleep 5
#password is collected here directly as secure strig
Remove-Computer -credential $username -force
Start-Sleep 2
Write-Host "you will need to restart for this to take effect do you want to do this now?"
write-host  "( y / N ) " -ForegroundColor Yellow -NoNewline
$YesNo = Read-Host
switch ($YesNo)
{
     Y{
          'restarting computer Goodbye!'
          Restart-Computer -delay 2
     }
     N{
          'Ok Goodbye!'
     }
     
     Default {
          'ok Goodbye!'
     }
}
Start-Sleep 3
exit