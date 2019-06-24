param( [String[]] $ArrayArguments, [String] $Argument)

Write-Host "Argument Passed"
Write-Host $Argument



Write-Host "Array of Arguments Passed"
ForEach ($ArrayArgument IN $ArrayArguments){
    Write-Host $ArrayArgument
}


