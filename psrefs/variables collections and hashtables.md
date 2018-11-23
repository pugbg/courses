# Variables

### Create New Variable
```powershell
$var4 = 'value2'
New-Variable -Name var3 -Value 'value1'
```

### Remove variable
```powershell
Remove-Variable -Name var3 -ErrorAction SilentlyContinue
```

# Working with some .Net Types

###Working with dates
```powershell
$da = get-date
"11.21.2018 13:00:00" -as [datetime]::new
Get-EventLog -LogName Security -After "11.21.2018 1:00:00"
```

### Working with Stopwatches
```powershell
$sw = [System.Diagnostics.Stopwatch]::StartNew()
$sw.Elapsed.TotalSeconds
$sw.Stop()
```

# Working with collections

### Create Static Collections
```powershell
$arr = @('Ivan','Petyr',"Georgi")
$arr2 = 'Ivan','Petyr',"Georgi"
[string[]]$arr3 = 'somestring'
```

### Create new collections with members from old + new member
```powershell
$arr += 'Maria'
```

### Get Collection Type
```powershell
$arr2.GetType()
```

### Create Dynamic Collections
```powershell
$dynarray = [System.Collections.ArrayList]::new
$dynarray2 = New-Object -TypeName System.Collections.ArrayList
```

### Add member
```powershell
$Null = $dynarray.Add('Ivan')
```

# Working with Hashtables

### Create Hashtable
```powershell
$ht = @{
    Age=12
    Name='Ivan'
}
```

### Get Value from specific key
```powershell
$Ht['Age']
```

### Add Key with specific value
```powershell
$ht.Add('LastName','Ivnaov')
```

### Remove specific key and it`s value
```powershell
$ht.Remove('age')
```

### Replace or add key
```powershell
$ht['City'] = 'Sofia'
```

### Check if key exists
```powershell
$ht.ContainsKey('City')
```
