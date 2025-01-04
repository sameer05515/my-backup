# Load JSON data
$jsonData = Get-Content .\data\dummy-application-details.json
$data = $jsonData | ConvertFrom-Json

$data | Format-Table name, purpose, batchFileName, absoluteLocation, id -AutoSize

