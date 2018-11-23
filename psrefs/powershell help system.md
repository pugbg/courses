# Working with PowerShell Modules
### Get all imported modules
```powershell
get-module
```

### Get all avaliable modules on the machines (from paths in $env:psmodulepath)
```powershell
Get-module -ListAvailable
```

### Import specific module
```powershell
Import-Module -Name DNSServer
Import-Module -FullyQualifiedName 'c:\users\Admin\desktop\module1'

```

# Finding available PowerShell commands

### Find commands based on name
```powershell
Get-Command -Name get*dnserver*
Get-Command -Verb get -Noun *dnserver*
```

### Find command from specific module
```powershell
Get-Command -Module DNSServer
Get-Command -Name *cache* -Module DNSServer
```

# Retriving command help

### Get help for specific command
```powershell
get-help -Name Get-Service
Get-Help -Name Set-Service -Full
Get-Help -Name Set-Service -Examples
Get-Help -Name Set-Service -Parameter StartupType
Get-Help -Name Set-Service -Parameter *
```
