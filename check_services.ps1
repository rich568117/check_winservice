$serviceoutput = Get-Service -Displayname "$args[0]"
if ( $serviceoutput.Status -eq "Running" )
{
  Write-Output "OK - The Service is Running."
  exit 0
}
else
{
Write-Output "CRITICAL - The Service is not Running Correctly"
exit 2
}
