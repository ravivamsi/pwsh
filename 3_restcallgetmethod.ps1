<#
    To retrieve the actual raw response for the request sent use Invoke-WebRequest instead of InvokeRestMethod 

#>

# 1. Service URL
$url = "https://jsonplaceholder.typicode.com/posts/1"

# 2. HTTP_Verb
$verb = "GET"


<#

# 3. Headers
$header = @{ 
   "Content-Type" = "application/json"
}

# 4. Request-Body
$body = @{
      "title" = "foo",
      "body" = "bar",
      "userId" = 1
    }
#>


# 5. Invoke REST Method
Write-Host "Using Invoke-RestMethod"

$response = Invoke-RestMethod -Method $verb -Uri $url 
Write-Host $response.title


# 6. Invoke-WebRequest 
Write-Host "Using Invoke-WebRequest"

$rawresponse = Invoke-WebRequest -Method $verb -Uri $url 
$jsonObject = ConvertFrom-JSON $([String]::new($rawresponse.Content))

Write-Host "Content from Raw Response"
Write-Host "$([String]::new($rawresponse.Content))"
