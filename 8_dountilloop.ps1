
<#

    Do-Until loops have similar syntax to Do-While, but stop processing once the condition statement is met

#>


$i = 0
Do
{
    Write-Output $i
    $i++
}Until($i -ge 3)