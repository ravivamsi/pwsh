
<#

    Do-While used to perform an action while the condition evaluates to $true

#>

$i = 0
Do
{
    Write-Output $i
    $i++
}While($i -lt 3)