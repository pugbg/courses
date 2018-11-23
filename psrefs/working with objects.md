# Working with objects

### Filtering objects
```powershell
Get-Process | Where-Object -FilterScript {$_.VirtualMemorySize -gt 10mb}
Get-Process | Where-Object {$_.VirtualMemorySize -gt 10mb}
Get-Process | Where-Object {($_.VirtualMemorySize -gt 10mb) -and ($_.Company -notlike '*Microsoft*')}
```

### Enumerating object
```powershell
1,2,3 | ForEach-Object -Process {

    $_ + 1
    
}

1,2,3 | ForEach-Object {

    $_ + 1
    
}

Get-Process | ForEach-Object -Process {
    $_.Description | Out-File -FilePath $_.Name 
}
```

### Creating custom object
```powershell
Get-Process | select -Property Name,Company

Get-Process | ForEach-Object {
    [pscustomobject]@{
        ProcessName=$_.Name
        ProcessCompany=$_.Company
    }
}

```
