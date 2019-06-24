



# 1. Service URL
$url = "https://jsonplaceholder.typicode.com/posts"

# 2. HTTP_Verb
$verb = "POST"

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

# 5. Invoke REST Method
Invoke-RestMethod -Method $verb -Uri $url -Body (ConvertTo-Json $body) -Headers $header
