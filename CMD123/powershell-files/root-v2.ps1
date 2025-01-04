# Load JSON data
$jsonData = Get-Content .\data\my-applications-data.json
$data = $jsonData | ConvertFrom-Json

# $data | Format-Table name, purpose, batchFileName, absoluteLocation, id -AutoSize

# $formatString = "{0,-20} {1,-50} {2,-30} {3,-50} {4,-20}"
# $data | Format-Table -AutoSize -Format $formatString name, purpose, batchFileName, absoluteLocation, id

# $data | Format-Table -AutoSize name, purpose, batchFileName, absoluteLocation, id -Wrap purpose, absoluteLocation

# $data | Format-Table name, purpose, batchFileName, absoluteLocation, id  -AutoSize -Wrap purpose, absoluteLocation/

$data | Format-Table name, purpose, batchFileName, absoluteLocation, id -AutoSize

