﻿#Working with WMI

#Get WMI Instance
$WMIServices = Get-WmiObject -Namespace root\cimv2 -Class Win32_Service

#Modify WMI Instance
$winrm = $WMIServices | Where-Object -FilterScript {$_.Name -eq 'WinRM'}
$winrm.state = 'Stopped'
$winrm.Put()
$winrm.StartService()
$winrm.ChangeStartMode('Manual')

#Get specific WMI CLass
$class = Get-WmiObject -Namespace root\cimv2 -Class win32_service -List

#Working with CIM

#Get CIM Instance
$winrmFromCIM = Get-CimInstance -ClassName Win32_Service -Namespace root\cimv2 -Filter 'Name = "WinRM"'

#Get CIM Class
$ServiceClass = Get-CimClass -ClassName Win32_Service -Namespace root\cimv2

#Modify CIM Instances
Set-CimInstance -InputObject $winrmFromCIM -Property @{
    State='Stopped'
}
Invoke-CimMethod -InputObject $winrmFromCIM -MethodName StartService
Invoke-CimMethod -InputObject $winrmFromCIM -MethodName ChangeStartMode -Arguments @{
    StartMode="Automatic"
}

#Remoting with CIM
$cimsession = New-CimSession -ComputerName lon-cl1
$soft = Get-CimInstance -CimSession $cimsession -ClassName Win32_Product -Namespace root\Cimv2