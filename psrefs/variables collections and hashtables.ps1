#region Variables

#Create New Variable
$var4 = 'value2'
New-Variable -Name var3 -Value 'value1'

#Remove variable
Remove-Variable -Name var3 -ErrorAction SilentlyContinue

#endregion

#region Working with some .Net Types

#Working with dates
$da = get-date
"11.21.2018 13:00:00" -as [datetime]::new
Get-EventLog -LogName Security -After "11.21.2018 1:00:00"

#Working with Stopwatches
$sw = [System.Diagnostics.Stopwatch]::StartNew()
$sw.Elapsed.TotalSeconds
$sw.Stop()

#endregion

#region Working with collections

#Create Static Collections
$arr = @('Ivan','Petyr',"Georgi")
$arr2 = 'Ivan','Petyr',"Georgi"
[string[]]$arr3 = 'somestring'

#Create new collections with members from old + new member
$arr += 'Maria'

#Get Collection Type
$arr2.GetType()

#Create Dynamic Collections
$dynarray = [System.Collections.ArrayList]::new
$dynarray2 = New-Object -TypeName System.Collections.ArrayList

#Add member
$Null = $dynarray.Add('Ivan')

#endregion

#region Working with Hashtables

#Create Hashtable
$ht = @{
    Age=12
    Name='Ivan'
}

#Get Value from specific key
$Ht['Age']

#Add Key with specific value
$ht.Add('LastName','Ivnaov')

#Remove specific key and it`s value
$ht.Remove('age')

#Replace or add key
$ht['City'] = 'Sofia'

#Check if key exists
$ht.ContainsKey('City')

#endregion