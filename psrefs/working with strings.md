# Working with strings

### creating string
```powershell
'current date is: 21.11.2018'
```

### creating that contains subexpression
```powershell
"current date is: $date"
"current date is: $(get-date)"
```

### concatinating strings
```powershell
"current date is:" + $date
"current date is:" + (get-date)
"current date is: {0}" -f (get-date)
```

### Split the string to array based on specific character
```powershell
'Ivan,Goergi,Petyr' -split ','
```

### Join array elements to single string with separator
```powershell
'Ivan','Georgi','Petyr' -join ','
```

### Replace specific set of characters in string
```powershell
'Georgi lives in Sofia' -replace 'Sofia','Plovdiv'
```
