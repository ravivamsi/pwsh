<#
    USAGE:
    Foreach (placeholder variable IN collection){

    }
#>

$array=1,2,3

ForEach($i IN $array){
    Write-host $i;
}