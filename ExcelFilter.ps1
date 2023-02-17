# Import the CSV file
$data = Import-Csv -Path "Input File Path"

# Filter the data by a date column
$filterDate = Get-Date "05/01/2022 3:47:20 AM"
$filtereddata = $data | Where-Object { [DateTime]::Parse($_.LastModifiedDate) -ge $filterDate }
$filtereddata | Export-Csv -Path "FilePath to Save Data" -Delimiter ',' -NoTypeInformation