$Name = @()
$Phone = @()

Import-Csv SomeText.csv |`
    ForEach-Object {
        $Name += $_.Name
        $Phone += $_."Phone Number"
    }

$inputNumber = Read-Host -Prompt "Phone Number"

if ($Phone -contains $inputNumber)
    {
    Write-Host "Customer Exists!"
    $Where = [array]::IndexOf($Phone, $inputNumber)
    Write-Host "Customer Name: " $Name[$Where]
    }
