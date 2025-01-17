# Load the JSON data into a variable
$jsonData = '[
  {
    "name": "MyApp1",
    "purpose": "To do something useful",
    "batchFileName": "myapp1.bat",
    "absoluteLocation": "C:\\Users\\Public\\Documents\\MyApp1",
    "id": "1_aBcDeFgHiJ"
  },
  {
    "name": "MyApp2",
    "purpose": "Another useful application",
    "batchFileName": "myapp2.bat",
    "absoluteLocation": "D:\\Applications\\MyApp2",
    "id": "2_aBcDeFgHiJ"
  },
  {
    "name": "MyApp3",
    "purpose": "Yet another useful app",
    "batchFileName": "myapp3.bat",
    "absoluteLocation": "E:\\MyApp3",
    "id": "3_aBcDeFgHiJ"
  },
  {
    "name": "MyApp4",
    "purpose": "A helpful application",
    "batchFileName": "myapp4.bat",
    "absoluteLocation": "F:\\Applications\\MyApp4",
    "id": "4_aBcDeFgHiJ"
  },
  {
    "name": "MyApp5",
    "purpose": "A useful tool",
    "batchFileName": "myapp5.bat",
    "absoluteLocation": "G:\\MyApp5",
    "id": "5_aBcDeFgHiJ"
  },
  {
    "name": "MyApp6",
    "purpose": "A handy application",
    "batchFileName": "myapp6.bat",
    "absoluteLocation": "H:\\Applications\\MyApp6",
    "id": "6_aBcDeFgHiJ"
  },
  {
    "name": "MyApp7",
    "purpose": "A useful utility",
    "batchFileName": "myapp7.bat",
    "absoluteLocation": "I:\\MyApp7",
    "id": "7_aBcDeFgHiJ"
  },
  {
    "name": "MyApp8",
    "purpose": "A helpful tool",
    "batchFileName": "myapp8.bat",
    "absoluteLocation": "J:\\Applications\\MyApp8",
    "id": "8_aBcDeFgHiJ"
  },
  {
    "name": "MyApp9",
    "purpose": "A useful application",
    "batchFileName": "myapp9.bat",
    "absoluteLocation": "K:\\MyApp9",
    "id": "9_aBcDeFgHiJ"
  },
  {
    "name": "MyApp10",
    "purpose": "Another useful tool",
    "batchFileName": "myapp10.bat",
    "absoluteLocation": "L:\\Applications\\MyApp10",
    "id": "10_aBcDeFgHiJ"
  }
]'

# Convert the JSON data to a PowerShell object
$data = $jsonData | ConvertFrom-Json

# Create a formatted table
$data | Format-Table name, purpose, batchFileName, absoluteLocation, id -AutoSize