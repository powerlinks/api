Dashboard API
=============

API for the dashboard v3

API overview
------------

- [Current Version](#current-version)
- [HTTP Verbs](#http-verbs)
- [Cross Origin Resource Sharing](#cross-origin-resource-sharing)
- [Endpoints](#endpoints)
- [ApiKey](#apikey)
- [Response](#response)

### HTTP Verbs
    
The Powerlinks Dashboard API strives to use appropriate HTTP verbs to perform actions on our [resources](#resources).
    
| verb   | description                                          |
|--------| -----------------------------------------------------|
| GET 	 | use to retrieve a resources or collection            |
| POST	 | use to create a resource or perform a custom action  |
| PUT    | use to store an entity under a specific resource     |
| PATCH  | use to update an entity or specific resource         |
| DELETE | delete an entity or specific resource                |
  
### Cross Origin Resource Sharing
    
We support cross origin resource sharing ([CORS](http://www.w3.org/TR/cors/)). All endpoints return the following header.
    
    Access-Control-Allow-Origin: *
    Access-Control-Allow-Methods: GET,POST,OPTIONS,PUT,PATCH,DELETE
    Access-Control-Allow-Headers: ApiKey,Content-Type,Keep-Alive,User-Agent,Cache-Control


## Authentication


* API Key
    - Parameter Name: **apiKey**, in: header. 

Unless otherwise stated, authentication is require.

## Resource Hierarchy

### Buyside
 
Agency (Optional) -> Advertiser -> Order -> Line Item -> Creative 

# Endpoints 

## POST /users/login

> Code samples

```shell
# You can also use wget
curl -X post //users/login \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //users/login HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//users/login',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "email": "string",
  "password": "string",
  "company": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//users/login',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//users/login',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//users/login', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users/login");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "email": "string",
  "password": "string",
  "company": "string"
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|No description
» email|body|string|true|length 3-255
» password|body|string|true|length 6-32
» company|body|string|false|length 36-36


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
512|Unknown|Fail|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
apiKey|string|false|No description
expires|integer|false|No description



### Response Schema

Status Code **512**

Name|Type|Required|Description
---|---|---|---|---|
message|string|false|No description
status|string|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## POST /users/reset-password

> Code samples

```shell
# You can also use wget
curl -X post //users/reset-password \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //users/reset-password HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//users/reset-password',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "email": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//users/reset-password',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//users/reset-password',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//users/reset-password', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users/reset-password");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "email": "string"
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|No description
» email|body|string|true|length 3-255


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
512|Unknown|Fail|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **512**

Name|Type|Required|Description
---|---|---|---|---|
message|string|false|No description
status|string|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## POST /users/update-password

> Code samples

```shell
# You can also use wget
curl -X post //users/update-password \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //users/update-password HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//users/update-password',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "token": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//users/update-password',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//users/update-password',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//users/update-password', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users/update-password");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "token": "string"
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|No description
» token|body|string|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
512|Unknown|Fail|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **512**

Name|Type|Required|Description
---|---|---|---|---|
message|string|false|No description
status|string|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## POST /users/switch-company

> Code samples

```shell
# You can also use wget
curl -X post //users/switch-company \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //users/switch-company HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//users/switch-company',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "company": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//users/switch-company',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//users/switch-company',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//users/switch-company', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users/switch-company");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "company": "string"
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|No description
» company|body|string|false|length 36-36


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
512|Unknown|Fail|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **512**

Name|Type|Required|Description
---|---|---|---|---|
message|string|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /users

> Code samples

```shell
# You can also use wget
curl -X get //users \
  -H 'Accept: */*'

```

```http
GET //users HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//users',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//users',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//users',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//users', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## POST /users

> Code samples

```shell
# You can also use wget
curl -X post //users \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //users HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//users',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "email": "string",
  "password": "string",
  "firstName": "string",
  "lastName": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "role": 1,
  "advertisers": [
    1
  ],
  "agencies": [
    1
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//users',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//users',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//users', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "email": "string",
  "password": "string",
  "firstName": "string",
  "lastName": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "role": 1,
  "advertisers": [
    1
  ],
  "agencies": [
    1
  ]
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|No description
» email|body|string|true|length 3-255
» password|body|string|true|length 6-32
» firstName|body|string|true|length 1-255
» lastName|body|string|true|length 1-255
» address1|body|string|false|length 1-255
» address2|body|string|false|length 1-255
» city|body|string|false|length 1-255
» state|body|string|false|length 1-255
» country|body|string|false|length 1-255
» postalCode|body|string|false|length 1-255
» phoneNumber|body|string|false|length 1-255
» role|body|integer|true|No description
» advertisers|body|[integer]|false|No description
» agencies|body|[integer]|false|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /users/{id}

> Code samples

```shell
# You can also use wget
curl -X get //users/{id} \
  -H 'Accept: */*'

```

```http
GET //users/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//users/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//users/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//users/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//users/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|string|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /users/{id}

> Code samples

```shell
# You can also use wget
curl -X patch //users/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //users/{id} HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//users/{id}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "email": "string",
  "password": "string",
  "firstName": "string",
  "lastName": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "role": 1,
  "advertisers": [
    1
  ],
  "agencies": [
    1
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//users/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//users/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//users/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "email": "string",
  "password": "string",
  "firstName": "string",
  "lastName": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "role": 1,
  "advertisers": [
    1
  ],
  "agencies": [
    1
  ]
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|string|true|No description
body|body|[Body](#schema+body)|true|No description
» email|body|string|false|length 3-255
» password|body|string|false|length 6-32
» firstName|body|string|false|length 1-255
» lastName|body|string|false|length 1-255
» address1|body|string|false|length 1-255
» address2|body|string|false|length 1-255
» city|body|string|false|length 1-255
» state|body|string|false|length 1-255
» country|body|string|false|length 1-255
» postalCode|body|string|false|length 1-255
» phoneNumber|body|string|false|length 1-255
» role|body|integer|false|No description
» advertisers|body|[integer]|false|No description
» agencies|body|[integer]|false|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /users/current

> Code samples

```shell
# You can also use wget
curl -X get //users/current \
  -H 'Accept: */*'

```

```http
GET //users/current HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//users/current',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//users/current',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//users/current',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//users/current', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users/current");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /users/current

> Code samples

```shell
# You can also use wget
curl -X patch //users/current \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //users/current HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//users/current',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "email": "string",
  "password": "string",
  "firstName": "string",
  "lastName": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "role": 1,
  "advertisers": [
    1
  ],
  "agencies": [
    1
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//users/current',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//users/current',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//users/current', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users/current");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "email": "string",
  "password": "string",
  "firstName": "string",
  "lastName": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "role": 1,
  "advertisers": [
    1
  ],
  "agencies": [
    1
  ]
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|[Body](#schema+body)|true|No description
» email|body|string|false|length 3-255
» password|body|string|false|length 6-32
» firstName|body|string|false|length 1-255
» lastName|body|string|false|length 1-255
» address1|body|string|false|length 1-255
» address2|body|string|false|length 1-255
» city|body|string|false|length 1-255
» state|body|string|false|length 1-255
» country|body|string|false|length 1-255
» postalCode|body|string|false|length 1-255
» phoneNumber|body|string|false|length 1-255
» role|body|integer|false|No description
» advertisers|body|[integer]|false|No description
» agencies|body|[integer]|false|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /agencies/{agencyId}/users

> Code samples

```shell
# You can also use wget
curl -X get //agencies/{agencyId}/users \
  -H 'Accept: */*'

```

```http
GET //agencies/{agencyId}/users HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//agencies/{agencyId}/users',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//agencies/{agencyId}/users',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//agencies/{agencyId}/users',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//agencies/{agencyId}/users', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//agencies/{agencyId}/users");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
agencyId|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /advertisers/{advertiserId}/users

> Code samples

```shell
# You can also use wget
curl -X get //advertisers/{advertiserId}/users \
  -H 'Accept: */*'

```

```http
GET //advertisers/{advertiserId}/users HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//advertisers/{advertiserId}/users',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//advertisers/{advertiserId}/users',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//advertisers/{advertiserId}/users',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//advertisers/{advertiserId}/users', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//advertisers/{advertiserId}/users");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
advertiserId|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /companies/{companyId}/users

> Code samples

```shell
# You can also use wget
curl -X get //companies/{companyId}/users \
  -H 'Accept: */*'

```

```http
GET //companies/{companyId}/users HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//companies/{companyId}/users',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//companies/{companyId}/users',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//companies/{companyId}/users',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//companies/{companyId}/users', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//companies/{companyId}/users");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
companyId|path|string|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /users/details

> Code samples

```shell
# You can also use wget
curl -X get //users/details \
  -H 'Accept: */*'

```

```http
GET //users/details HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//users/details',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//users/details',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//users/details',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//users/details', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users/details");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /companies

> Code samples

```shell
# You can also use wget
curl -X get //companies \
  -H 'Accept: */*'

```

```http
GET //companies HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//companies',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//companies',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//companies',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//companies', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//companies");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /companies/{id}

> Code samples

```shell
# You can also use wget
curl -X get //companies/{id} \
  -H 'Accept: */*'

```

```http
GET //companies/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//companies/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//companies/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//companies/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//companies/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//companies/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|string|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /users/{id}/companies

> Code samples

```shell
# You can also use wget
curl -X get //users/{id}/companies \
  -H 'Accept: */*'

```

```http
GET //users/{id}/companies HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//users/{id}/companies',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//users/{id}/companies',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//users/{id}/companies',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//users/{id}/companies', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users/{id}/companies");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|string|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /roles

> Code samples

```shell
# You can also use wget
curl -X get //roles \
  -H 'Accept: */*'

```

```http
GET //roles HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//roles',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//roles',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//roles',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//roles', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//roles");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /users/{id}/role

> Code samples

```shell
# You can also use wget
curl -X get //users/{id}/role \
  -H 'Accept: */*'

```

```http
GET //users/{id}/role HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//users/{id}/role',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//users/{id}/role',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//users/{id}/role',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//users/{id}/role', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users/{id}/role");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|string|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /users/roles

> Code samples

```shell
# You can also use wget
curl -X get //users/roles \
  -H 'Accept: */*'

```

```http
GET //users/roles HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//users/roles',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//users/roles',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//users/roles',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//users/roles', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users/roles");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /companies/{companyId}/users/{userId}/roles

> Code samples

```shell
# You can also use wget
curl -X get //companies/{companyId}/users/{userId}/roles \
  -H 'Accept: */*'

```

```http
GET //companies/{companyId}/users/{userId}/roles HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//companies/{companyId}/users/{userId}/roles',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//companies/{companyId}/users/{userId}/roles',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//companies/{companyId}/users/{userId}/roles',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//companies/{companyId}/users/{userId}/roles', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//companies/{companyId}/users/{userId}/roles");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
companyId|path|string|true|No description
userId|path|string|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /users/{userId}/add-role

> Code samples

```shell
# You can also use wget
curl -X patch //users/{userId}/add-role \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //users/{userId}/add-role HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//users/{userId}/add-role',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "company": "string",
  "role": 1
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//users/{userId}/add-role',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//users/{userId}/add-role',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//users/{userId}/add-role', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users/{userId}/add-role");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "company": "string",
  "role": 1
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
userId|path|string|true|No description
body|body|[Body2](#schema+body2)|true|No description
» company|body|string|true|length 36-36
» role|body|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /users/{userId}/remove-role

> Code samples

```shell
# You can also use wget
curl -X patch //users/{userId}/remove-role \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //users/{userId}/remove-role HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//users/{userId}/remove-role',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "company": "string",
  "role": 1
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//users/{userId}/remove-role',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//users/{userId}/remove-role',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//users/{userId}/remove-role', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users/{userId}/remove-role");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "company": "string",
  "role": 1
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
userId|path|string|true|No description
body|body|[Body2](#schema+body2)|true|No description
» company|body|string|true|length 36-36
» role|body|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /orders

> Code samples

```shell
# You can also use wget
curl -X get //orders \
  -H 'Accept: */*'

```

```http
GET //orders HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//orders',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//orders',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//orders',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//orders', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//orders");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## POST /orders

> Code samples

```shell
# You can also use wget
curl -X post //orders \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //orders HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//orders',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "internalId": "string",
  "advertiser": 1,
  "startDate": "2017-09-26",
  "endDate": "2017-09-26",
  "budget": 1,
  "dailyBudget": 1,
  "impressionCap": 1,
  "dailyImpressionCap": 1,
  "pacing": 1,
  "billingType": 1,
  "billingCategory": 1,
  "feeType": 1,
  "feeAmount": 1,
  "conversionTrackers": [
    1
  ],
  "isActive": true,
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//orders',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//orders',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//orders', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//orders");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "internalId": "string",
  "advertiser": 1,
  "startDate": "2017-09-26",
  "endDate": "2017-09-26",
  "budget": 1,
  "dailyBudget": 1,
  "impressionCap": 1,
  "dailyImpressionCap": 1,
  "pacing": 1,
  "billingType": 1,
  "billingCategory": 1,
  "feeType": 1,
  "feeAmount": 1,
  "conversionTrackers": [
    1
  ],
  "isActive": true,
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|No description
» name|body|string|true|length 1-255
» internalId|body|string|false|length 1-255
» advertiser|body|integer|true|No description
» startDate|body|string(date)|true|No description
» endDate|body|string(date)|false|No description
» budget|body|number(float)|true|No description
» dailyBudget|body|number(float)|false|No description
» impressionCap|body|integer|false|No description
» dailyImpressionCap|body|integer|false|No description
» pacing|body|integer|false|No description
» billingType|body|integer|false|No description
» billingCategory|body|integer|false|No description
» feeType|body|integer|false|No description
» feeAmount|body|number(float)|false|No description
» isActive|body|boolean|true|No description
» isArchived|body|boolean|false|No description
» conversionTrackers|body|[integer]|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» pacing|1|
» pacing|2|
» billingType|1|
» billingType|2|
» billingType|3|
» billingType|4|
» billingCategory|1|
» billingCategory|2|
» feeType|1|
» feeType|2|
» feeType|3|
» feeType|4|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /orders/{id}

> Code samples

```shell
# You can also use wget
curl -X get //orders/{id} \
  -H 'Accept: */*'

```

```http
GET //orders/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//orders/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//orders/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//orders/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//orders/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//orders/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /orders/{id}

> Code samples

```shell
# You can also use wget
curl -X patch //orders/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //orders/{id} HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//orders/{id}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "internalId": "string",
  "advertiser": 1,
  "startDate": "2017-09-26",
  "endDate": "2017-09-26",
  "budget": 1,
  "dailyBudget": 1,
  "impressionCap": 1,
  "dailyImpressionCap": 1,
  "pacing": 1,
  "billingType": 1,
  "billingCategory": 1,
  "feeType": 1,
  "feeAmount": 1,
  "conversionTrackers": [
    1
  ],
  "isActive": true,
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//orders/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//orders/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//orders/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//orders/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "internalId": "string",
  "advertiser": 1,
  "startDate": "2017-09-26",
  "endDate": "2017-09-26",
  "budget": 1,
  "dailyBudget": 1,
  "impressionCap": 1,
  "dailyImpressionCap": 1,
  "pacing": 1,
  "billingType": 1,
  "billingCategory": 1,
  "feeType": 1,
  "feeAmount": 1,
  "conversionTrackers": [
    1
  ],
  "isActive": true,
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
body|body|object|true|No description
» name|body|string|false|length 1-255
» internalId|body|string|false|length 1-255
» advertiser|body|integer|false|No description
» startDate|body|string(date)|false|No description
» endDate|body|string(date)|false|No description
» budget|body|number(float)|false|No description
» dailyBudget|body|number(float)|false|No description
» impressionCap|body|integer|false|No description
» dailyImpressionCap|body|integer|false|No description
» pacing|body|integer|false|No description
» billingType|body|integer|false|No description
» billingCategory|body|integer|false|No description
» feeType|body|integer|false|No description
» feeAmount|body|number(float)|false|No description
» isActive|body|boolean|false|No description
» isArchived|body|boolean|false|No description
» conversionTrackers|body|[integer]|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» pacing|1|
» pacing|2|
» billingType|1|
» billingType|2|
» billingType|3|
» billingType|4|
» billingCategory|1|
» billingCategory|2|
» feeType|1|
» feeType|2|
» feeType|3|
» feeType|4|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## DELETE /orders/{id}

> Code samples

```shell
# You can also use wget
curl -X delete //orders/{id} \
  -H 'Accept: */*'

```

```http
DELETE //orders/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//orders/{id}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//orders/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.delete '//orders/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.delete('//orders/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//orders/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /advertisers/{advertiserId}/orders

> Code samples

```shell
# You can also use wget
curl -X get //advertisers/{advertiserId}/orders \
  -H 'Accept: */*'

```

```http
GET //advertisers/{advertiserId}/orders HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//advertisers/{advertiserId}/orders',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//advertisers/{advertiserId}/orders',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//advertisers/{advertiserId}/orders',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//advertisers/{advertiserId}/orders', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//advertisers/{advertiserId}/orders");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
advertiserId|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## POST /orders/{id}/clone

> Code samples

```shell
# You can also use wget
curl -X post //orders/{id}/clone \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //orders/{id}/clone HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//orders/{id}/clone',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "internalId": "string",
  "advertiser": 1,
  "startDate": "2017-09-26",
  "endDate": "2017-09-26",
  "budget": 1,
  "dailyBudget": 1,
  "impressionCap": 1,
  "dailyImpressionCap": 1,
  "pacing": 1,
  "billingType": 1,
  "billingCategory": 1,
  "feeType": 1,
  "feeAmount": 1,
  "conversionTrackers": [
    1
  ],
  "isActive": true,
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//orders/{id}/clone',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//orders/{id}/clone',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//orders/{id}/clone', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//orders/{id}/clone");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "internalId": "string",
  "advertiser": 1,
  "startDate": "2017-09-26",
  "endDate": "2017-09-26",
  "budget": 1,
  "dailyBudget": 1,
  "impressionCap": 1,
  "dailyImpressionCap": 1,
  "pacing": 1,
  "billingType": 1,
  "billingCategory": 1,
  "feeType": 1,
  "feeAmount": 1,
  "conversionTrackers": [
    1
  ],
  "isActive": true,
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
body|body|object|false|No description
» name|body|string|false|length 1-255
» internalId|body|string|false|length 1-255
» advertiser|body|integer|false|No description
» startDate|body|string(date)|false|No description
» endDate|body|string(date)|false|No description
» budget|body|number(float)|false|No description
» dailyBudget|body|number(float)|false|No description
» impressionCap|body|integer|false|No description
» dailyImpressionCap|body|integer|false|No description
» pacing|body|integer|false|No description
» billingType|body|integer|false|No description
» billingCategory|body|integer|false|No description
» feeType|body|integer|false|No description
» feeAmount|body|number(float)|false|No description
» isActive|body|boolean|false|No description
» isArchived|body|boolean|false|No description
» conversionTrackers|body|[integer]|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» pacing|1|
» pacing|2|
» billingType|1|
» billingType|2|
» billingType|3|
» billingType|4|
» billingCategory|1|
» billingCategory|2|
» feeType|1|
» feeType|2|
» feeType|3|
» feeType|4|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /orders/details

> Code samples

```shell
# You can also use wget
curl -X get //orders/details \
  -H 'Accept: */*'

```

```http
GET //orders/details HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//orders/details',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//orders/details',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//orders/details',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//orders/details', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//orders/details");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /line-items

> Code samples

```shell
# You can also use wget
curl -X get //line-items \
  -H 'Accept: */*'

```

```http
GET //line-items HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//line-items',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//line-items',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//line-items',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//line-items', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//line-items");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## POST /line-items

> Code samples

```shell
# You can also use wget
curl -X post //line-items \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //line-items HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//line-items',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "order": 1,
  "internalId": "string",
  "name": "string",
  "budget": 1,
  "dailyBudget": 1,
  "impressionCap": 1,
  "pacing": 1,
  "frequencyCaps": {
    "imps": 1,
    "duration": 1
  },
  "defaultBid": 1,
  "maxBid": 1,
  "cpcBid": 1,
  "optimisation": 1,
  "startDate": "2017-09-26",
  "endDate": "2017-09-26",
  "targeting": {
    "1": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "2": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "3": {
      "verb": "E",
      "values": []
    },
    "4": {
      "verb": "E",
      "values": []
    },
    "5": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "6": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "7": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "8": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "9": {
      "values": [
        "string"
      ]
    },
    "10": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "11": {
      "verb": "ER",
      "values": {
        "start": "string",
        "end": "string"
      }
    },
    "12": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "13": {
      "values": [
        "string"
      ]
    },
    "14": {
      "values": [
        1
      ]
    },
    "15": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "16": {
      "values": [
        "string"
      ]
    },
    "17": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "18": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "19": {
      "verb": "I",
      "values": 1
    },
    "20": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "21": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "22": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "23": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "24": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "25": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "26": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "27": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "28": {
      "verb": "E",
      "values": []
    },
    "29": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "30": {
      "values": []
    },
    "31": {
      "verb": "ER",
      "values": {
        "start": 1,
        "end": 1
      }
    },
    "33": {},
    "34": {},
    "35": {
      "verb": "I",
      "values": [
        "string"
      ]
    },
    "36": {
      "verb": "I",
      "values": 1
    },
    "37": {
      "values": [
        "string"
      ]
    }
  },
  "creatives": [
    1
  ],
  "isActive": true,
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//line-items',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//line-items',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//line-items', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//line-items");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "order": 1,
  "internalId": "string",
  "name": "string",
  "budget": 1,
  "dailyBudget": 1,
  "impressionCap": 1,
  "pacing": 1,
  "frequencyCaps": {
    "imps": 1,
    "duration": 1
  },
  "defaultBid": 1,
  "maxBid": 1,
  "cpcBid": 1,
  "optimisation": 1,
  "startDate": "2017-09-26",
  "endDate": "2017-09-26",
  "targeting": {
    "1": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "2": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "3": {
      "verb": "E",
      "values": []
    },
    "4": {
      "verb": "E",
      "values": []
    },
    "5": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "6": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "7": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "8": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "9": {
      "values": [
        "string"
      ]
    },
    "10": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "11": {
      "verb": "ER",
      "values": {
        "start": "string",
        "end": "string"
      }
    },
    "12": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "13": {
      "values": [
        "string"
      ]
    },
    "14": {
      "values": [
        1
      ]
    },
    "15": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "16": {
      "values": [
        "string"
      ]
    },
    "17": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "18": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "19": {
      "verb": "I",
      "values": 1
    },
    "20": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "21": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "22": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "23": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "24": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "25": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "26": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "27": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "28": {
      "verb": "E",
      "values": []
    },
    "29": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "30": {
      "values": []
    },
    "31": {
      "verb": "ER",
      "values": {
        "start": 1,
        "end": 1
      }
    },
    "33": {},
    "34": {},
    "35": {
      "verb": "I",
      "values": [
        "string"
      ]
    },
    "36": {
      "verb": "I",
      "values": 1
    },
    "37": {
      "values": [
        "string"
      ]
    }
  },
  "creatives": [
    1
  ],
  "isActive": true,
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|No description
» order|body|integer|true|No description
» internalId|body|string|false|length 1-255
» name|body|string|true|length 1-255
» budget|body|number(float)|true|No description
» dailyBudget|body|number(float)|false|No description
» impressionCap|body|integer|false|No description
» pacing|body|integer|false|No description
» frequencyCaps|body|object|false|No description
»» imps|body|integer|true|No description
»» duration|body|integer|true|No description
» defaultBid|body|number(float)|true|No description
» maxBid|body|number(float)|false|No description
» cpcBid|body|number(float)|false|No description
» optimisation|body|integer|false|No description
» startDate|body|string(date)|true|No description
» endDate|body|string(date)|false|No description
» targeting|body|object|false|No description
»» 1|body|object|false|Ad Unit IDs for targeting
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 2|body|object|false|IAB categories from OpenRTB
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 3|body|object|false|No description
»»» verb|body|string|true|No description
»» 4|body|object|false|No description
»»» verb|body|string|true|No description
»» 5|body|object|false|ISO 3166-1 alpha-3
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 6|body|object|false|City using United Nations Code for Trade & Transport Locations
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 7|body|object|false|Region code using ISO-3166-2; 2-letter state code if USA
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 8|body|object|false|Based on Google's metro codes, which are similar to Nielsen DMAs
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 9|body|object|false|ZIP
»»» values|body|[string]|false|No description
»» 10|body|object|false|IP address list
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 11|body|object|false|IP address range list
»»» verb|body|string|true|No description
»»» values|body|object|true|No description
»»»» start|body|string|false|No description
»»»» end|body|string|false|No description
»» 12|body|object|false|Domain lists
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 13|body|object|false|Deal ID in the format <inventory_source>/<deal_id> forexample if the deal_id is foo_bar and it is from inventory_source adx, the deal_id is adx/foo_bar
»»» values|body|[string]|false|No description
»» 14|body|object|false|1 = web, 2 = in-app
»»» values|body|[integer]|false|No description
»» 15|body|object|false|List of SSPs
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 16|body|object|false|Site names in form <inventory_source>/<site_id>
»»» values|body|[string]|false|No description
»» 17|body|object|false|AppBundle lists
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 18|body|object|false|AppID lists
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 19|body|object|false|No description
»»» verb|body|string|true|No description
»»» values|body|integer|true|No description
»» 20|body|object|false|Device type id as described in OpenRTB section 6.16
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 21|body|object|false|Device make
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 22|body|object|false|Device model as a string, including version number, note OpenRTB keeps the model and the version as separate fields
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 23|body|object|false|Specific OS such as Windows
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 24|body|object|false|Specific OS version such as Windows 7 in the format <OS>/<Version>
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 25|body|object|false|Browser name
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 26|body|object|false|List of mobile carriers by name
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 27|body|object|false|Browser Language
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 28|body|object|false|No description
»»» verb|body|string|true|No description
»» 29|body|object|false|Segment keys
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 30|body|object|false|No description
»» 31|body|object|false|Count in minutes from Sunday at midnight (0) to Saturday at 11:59 (10079) in range format [<start>,<end>], Calculation is against EST
»»» verb|body|string|true|No description
»»» values|body|object|true|No description
»»»» start|body|integer|false|No description
»»»» end|body|integer|false|No description
»» 33|body|object|false|No description
»» 34|body|object|false|No description
»» 35|body|object|false|IAS segments
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 36|body|object|false|No description
»»» verb|body|string|true|No description
»»» values|body|integer|true|No description
»» 37|body|object|false|Banner size
»»» values|body|[string]|false|No description
» isActive|body|boolean|true|No description
» isArchived|body|boolean|false|No description
» creatives|body|[integer]|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» pacing|1|
» pacing|2|
» optimisation|1|
» optimisation|2|
» optimisation|3|
» optimisation|4|
» optimisation|5|
» optimisation|6|
» optimisation|7|
» optimisation|8|
» optimisation|9|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|ER|
»»» verb|IR|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|ER|
»»» verb|IR|
»»» verb|I|
»»» verb|I|
»»» values|1|
»»» values|2|
»»» values|3|
»»» values|4|
»»» values|5|
»»» values|6|
»»» values|7|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /line-items/{id}

> Code samples

```shell
# You can also use wget
curl -X get //line-items/{id} \
  -H 'Accept: */*'

```

```http
GET //line-items/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//line-items/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//line-items/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//line-items/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//line-items/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//line-items/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /line-items/{id}

> Code samples

```shell
# You can also use wget
curl -X patch //line-items/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //line-items/{id} HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//line-items/{id}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "order": 1,
  "internalId": "string",
  "name": "string",
  "budget": 1,
  "dailyBudget": 1,
  "impressionCap": 1,
  "pacing": 1,
  "frequencyCaps": {
    "imps": 1,
    "duration": 1
  },
  "defaultBid": 1,
  "maxBid": 1,
  "cpcBid": 1,
  "optimisation": 1,
  "startDate": "2017-09-26",
  "endDate": "2017-09-26",
  "targeting": {
    "1": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "2": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "3": {
      "verb": "E",
      "values": []
    },
    "4": {
      "verb": "E",
      "values": []
    },
    "5": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "6": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "7": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "8": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "9": {
      "values": [
        "string"
      ]
    },
    "10": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "11": {
      "verb": "ER",
      "values": {
        "start": "string",
        "end": "string"
      }
    },
    "12": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "13": {
      "values": [
        "string"
      ]
    },
    "14": {
      "values": [
        1
      ]
    },
    "15": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "16": {
      "values": [
        "string"
      ]
    },
    "17": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "18": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "19": {
      "verb": "I",
      "values": 1
    },
    "20": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "21": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "22": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "23": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "24": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "25": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "26": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "27": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "28": {
      "verb": "E",
      "values": []
    },
    "29": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "30": {
      "values": []
    },
    "31": {
      "verb": "ER",
      "values": {
        "start": 1,
        "end": 1
      }
    },
    "33": {},
    "34": {},
    "35": {
      "verb": "I",
      "values": [
        "string"
      ]
    },
    "36": {
      "verb": "I",
      "values": 1
    },
    "37": {
      "values": [
        "string"
      ]
    }
  },
  "creatives": [
    1
  ],
  "isActive": true,
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//line-items/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//line-items/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//line-items/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//line-items/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "order": 1,
  "internalId": "string",
  "name": "string",
  "budget": 1,
  "dailyBudget": 1,
  "impressionCap": 1,
  "pacing": 1,
  "frequencyCaps": {
    "imps": 1,
    "duration": 1
  },
  "defaultBid": 1,
  "maxBid": 1,
  "cpcBid": 1,
  "optimisation": 1,
  "startDate": "2017-09-26",
  "endDate": "2017-09-26",
  "targeting": {
    "1": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "2": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "3": {
      "verb": "E",
      "values": []
    },
    "4": {
      "verb": "E",
      "values": []
    },
    "5": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "6": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "7": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "8": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "9": {
      "values": [
        "string"
      ]
    },
    "10": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "11": {
      "verb": "ER",
      "values": {
        "start": "string",
        "end": "string"
      }
    },
    "12": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "13": {
      "values": [
        "string"
      ]
    },
    "14": {
      "values": [
        1
      ]
    },
    "15": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "16": {
      "values": [
        "string"
      ]
    },
    "17": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "18": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "19": {
      "verb": "I",
      "values": 1
    },
    "20": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "21": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "22": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "23": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "24": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "25": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "26": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "27": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "28": {
      "verb": "E",
      "values": []
    },
    "29": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "30": {
      "values": []
    },
    "31": {
      "verb": "ER",
      "values": {
        "start": 1,
        "end": 1
      }
    },
    "33": {},
    "34": {},
    "35": {
      "verb": "I",
      "values": [
        "string"
      ]
    },
    "36": {
      "verb": "I",
      "values": 1
    },
    "37": {
      "values": [
        "string"
      ]
    }
  },
  "creatives": [
    1
  ],
  "isActive": true,
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
body|body|object|true|No description
» order|body|integer|false|No description
» internalId|body|string|false|length 1-255
» name|body|string|false|length 1-255
» budget|body|number(float)|false|No description
» dailyBudget|body|number(float)|false|No description
» impressionCap|body|integer|false|No description
» pacing|body|integer|false|No description
» frequencyCaps|body|object|false|No description
»» imps|body|integer|true|No description
»» duration|body|integer|true|No description
» defaultBid|body|number(float)|false|No description
» maxBid|body|number(float)|false|No description
» cpcBid|body|number(float)|false|No description
» optimisation|body|integer|false|No description
» startDate|body|string(date)|false|No description
» endDate|body|string(date)|false|No description
» targeting|body|object|false|No description
»» 1|body|object|false|Ad Unit IDs for targeting
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 2|body|object|false|IAB categories from OpenRTB
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 3|body|object|false|No description
»»» verb|body|string|true|No description
»» 4|body|object|false|No description
»»» verb|body|string|true|No description
»» 5|body|object|false|ISO 3166-1 alpha-3
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 6|body|object|false|City using United Nations Code for Trade & Transport Locations
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 7|body|object|false|Region code using ISO-3166-2; 2-letter state code if USA
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 8|body|object|false|Based on Google's metro codes, which are similar to Nielsen DMAs
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 9|body|object|false|ZIP
»»» values|body|[string]|false|No description
»» 10|body|object|false|IP address list
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 11|body|object|false|IP address range list
»»» verb|body|string|true|No description
»»» values|body|object|true|No description
»»»» start|body|string|false|No description
»»»» end|body|string|false|No description
»» 12|body|object|false|Domain lists
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 13|body|object|false|Deal ID in the format <inventory_source>/<deal_id> forexample if the deal_id is foo_bar and it is from inventory_source adx, the deal_id is adx/foo_bar
»»» values|body|[string]|false|No description
»» 14|body|object|false|1 = web, 2 = in-app
»»» values|body|[integer]|false|No description
»» 15|body|object|false|List of SSPs
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 16|body|object|false|Site names in form <inventory_source>/<site_id>
»»» values|body|[string]|false|No description
»» 17|body|object|false|AppBundle lists
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 18|body|object|false|AppID lists
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 19|body|object|false|No description
»»» verb|body|string|true|No description
»»» values|body|integer|true|No description
»» 20|body|object|false|Device type id as described in OpenRTB section 6.16
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 21|body|object|false|Device make
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 22|body|object|false|Device model as a string, including version number, note OpenRTB keeps the model and the version as separate fields
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 23|body|object|false|Specific OS such as Windows
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 24|body|object|false|Specific OS version such as Windows 7 in the format <OS>/<Version>
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 25|body|object|false|Browser name
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 26|body|object|false|List of mobile carriers by name
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 27|body|object|false|Browser Language
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 28|body|object|false|No description
»»» verb|body|string|true|No description
»» 29|body|object|false|Segment keys
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 30|body|object|false|No description
»» 31|body|object|false|Count in minutes from Sunday at midnight (0) to Saturday at 11:59 (10079) in range format [<start>,<end>], Calculation is against EST
»»» verb|body|string|true|No description
»»» values|body|object|true|No description
»»»» start|body|integer|false|No description
»»»» end|body|integer|false|No description
»» 33|body|object|false|No description
»» 34|body|object|false|No description
»» 35|body|object|false|IAS segments
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 36|body|object|false|No description
»»» verb|body|string|true|No description
»»» values|body|integer|true|No description
»» 37|body|object|false|Banner size
»»» values|body|[string]|false|No description
» isActive|body|boolean|false|No description
» isArchived|body|boolean|false|No description
» creatives|body|[integer]|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» pacing|1|
» pacing|2|
» optimisation|1|
» optimisation|2|
» optimisation|3|
» optimisation|4|
» optimisation|5|
» optimisation|6|
» optimisation|7|
» optimisation|8|
» optimisation|9|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|ER|
»»» verb|IR|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|ER|
»»» verb|IR|
»»» verb|I|
»»» verb|I|
»»» values|1|
»»» values|2|
»»» values|3|
»»» values|4|
»»» values|5|
»»» values|6|
»»» values|7|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## DELETE /line-items/{id}

> Code samples

```shell
# You can also use wget
curl -X delete //line-items/{id} \
  -H 'Accept: */*'

```

```http
DELETE //line-items/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//line-items/{id}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//line-items/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.delete '//line-items/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.delete('//line-items/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//line-items/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /orders/{campaignId}/line-items

> Code samples

```shell
# You can also use wget
curl -X get //orders/{campaignId}/line-items \
  -H 'Accept: */*'

```

```http
GET //orders/{campaignId}/line-items HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//orders/{campaignId}/line-items',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//orders/{campaignId}/line-items',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//orders/{campaignId}/line-items',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//orders/{campaignId}/line-items', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//orders/{campaignId}/line-items");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
campaignId|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## POST /line-items/{id}/clone

> Code samples

```shell
# You can also use wget
curl -X post //line-items/{id}/clone \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //line-items/{id}/clone HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//line-items/{id}/clone',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "order": 1,
  "internalId": "string",
  "name": "string",
  "budget": 1,
  "dailyBudget": 1,
  "impressionCap": 1,
  "pacing": 1,
  "frequencyCaps": {
    "imps": 1,
    "duration": 1
  },
  "defaultBid": 1,
  "maxBid": 1,
  "cpcBid": 1,
  "optimisation": 1,
  "startDate": "2017-09-26",
  "endDate": "2017-09-26",
  "targeting": {
    "1": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "2": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "3": {
      "verb": "E",
      "values": []
    },
    "4": {
      "verb": "E",
      "values": []
    },
    "5": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "6": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "7": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "8": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "9": {
      "values": [
        "string"
      ]
    },
    "10": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "11": {
      "verb": "ER",
      "values": {
        "start": "string",
        "end": "string"
      }
    },
    "12": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "13": {
      "values": [
        "string"
      ]
    },
    "14": {
      "values": [
        1
      ]
    },
    "15": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "16": {
      "values": [
        "string"
      ]
    },
    "17": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "18": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "19": {
      "verb": "I",
      "values": 1
    },
    "20": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "21": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "22": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "23": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "24": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "25": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "26": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "27": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "28": {
      "verb": "E",
      "values": []
    },
    "29": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "30": {
      "values": []
    },
    "31": {
      "verb": "ER",
      "values": {
        "start": 1,
        "end": 1
      }
    },
    "33": {},
    "34": {},
    "35": {
      "verb": "I",
      "values": [
        "string"
      ]
    },
    "36": {
      "verb": "I",
      "values": 1
    },
    "37": {
      "values": [
        "string"
      ]
    }
  },
  "creatives": [
    1
  ],
  "isActive": true,
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//line-items/{id}/clone',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//line-items/{id}/clone',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//line-items/{id}/clone', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//line-items/{id}/clone");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "order": 1,
  "internalId": "string",
  "name": "string",
  "budget": 1,
  "dailyBudget": 1,
  "impressionCap": 1,
  "pacing": 1,
  "frequencyCaps": {
    "imps": 1,
    "duration": 1
  },
  "defaultBid": 1,
  "maxBid": 1,
  "cpcBid": 1,
  "optimisation": 1,
  "startDate": "2017-09-26",
  "endDate": "2017-09-26",
  "targeting": {
    "1": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "2": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "3": {
      "verb": "E",
      "values": []
    },
    "4": {
      "verb": "E",
      "values": []
    },
    "5": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "6": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "7": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "8": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "9": {
      "values": [
        "string"
      ]
    },
    "10": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "11": {
      "verb": "ER",
      "values": {
        "start": "string",
        "end": "string"
      }
    },
    "12": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "13": {
      "values": [
        "string"
      ]
    },
    "14": {
      "values": [
        1
      ]
    },
    "15": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "16": {
      "values": [
        "string"
      ]
    },
    "17": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "18": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "19": {
      "verb": "I",
      "values": 1
    },
    "20": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "21": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "22": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "23": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "24": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "25": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "26": {
      "verb": "E",
      "values": [
        1
      ]
    },
    "27": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "28": {
      "verb": "E",
      "values": []
    },
    "29": {
      "verb": "E",
      "values": [
        "string"
      ]
    },
    "30": {
      "values": []
    },
    "31": {
      "verb": "ER",
      "values": {
        "start": 1,
        "end": 1
      }
    },
    "33": {},
    "34": {},
    "35": {
      "verb": "I",
      "values": [
        "string"
      ]
    },
    "36": {
      "verb": "I",
      "values": 1
    },
    "37": {
      "values": [
        "string"
      ]
    }
  },
  "creatives": [
    1
  ],
  "isActive": true,
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
body|body|object|false|No description
» order|body|integer|false|No description
» internalId|body|string|false|length 1-255
» name|body|string|false|length 1-255
» budget|body|number(float)|false|No description
» dailyBudget|body|number(float)|false|No description
» impressionCap|body|integer|false|No description
» pacing|body|integer|false|No description
» frequencyCaps|body|object|false|No description
»» imps|body|integer|true|No description
»» duration|body|integer|true|No description
» defaultBid|body|number(float)|false|No description
» maxBid|body|number(float)|false|No description
» cpcBid|body|number(float)|false|No description
» optimisation|body|integer|false|No description
» startDate|body|string(date)|false|No description
» endDate|body|string(date)|false|No description
» targeting|body|object|false|No description
»» 1|body|object|false|Ad Unit IDs for targeting
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 2|body|object|false|IAB categories from OpenRTB
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 3|body|object|false|No description
»»» verb|body|string|true|No description
»» 4|body|object|false|No description
»»» verb|body|string|true|No description
»» 5|body|object|false|ISO 3166-1 alpha-3
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 6|body|object|false|City using United Nations Code for Trade & Transport Locations
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 7|body|object|false|Region code using ISO-3166-2; 2-letter state code if USA
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 8|body|object|false|Based on Google's metro codes, which are similar to Nielsen DMAs
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 9|body|object|false|ZIP
»»» values|body|[string]|false|No description
»» 10|body|object|false|IP address list
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 11|body|object|false|IP address range list
»»» verb|body|string|true|No description
»»» values|body|object|true|No description
»»»» start|body|string|false|No description
»»»» end|body|string|false|No description
»» 12|body|object|false|Domain lists
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 13|body|object|false|Deal ID in the format <inventory_source>/<deal_id> forexample if the deal_id is foo_bar and it is from inventory_source adx, the deal_id is adx/foo_bar
»»» values|body|[string]|false|No description
»» 14|body|object|false|1 = web, 2 = in-app
»»» values|body|[integer]|false|No description
»» 15|body|object|false|List of SSPs
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 16|body|object|false|Site names in form <inventory_source>/<site_id>
»»» values|body|[string]|false|No description
»» 17|body|object|false|AppBundle lists
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 18|body|object|false|AppID lists
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 19|body|object|false|No description
»»» verb|body|string|true|No description
»»» values|body|integer|true|No description
»» 20|body|object|false|Device type id as described in OpenRTB section 6.16
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 21|body|object|false|Device make
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 22|body|object|false|Device model as a string, including version number, note OpenRTB keeps the model and the version as separate fields
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 23|body|object|false|Specific OS such as Windows
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 24|body|object|false|Specific OS version such as Windows 7 in the format <OS>/<Version>
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 25|body|object|false|Browser name
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 26|body|object|false|List of mobile carriers by name
»»» verb|body|string|true|No description
»»» values|body|[integer]|false|No description
»» 27|body|object|false|Browser Language
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 28|body|object|false|No description
»»» verb|body|string|true|No description
»» 29|body|object|false|Segment keys
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 30|body|object|false|No description
»» 31|body|object|false|Count in minutes from Sunday at midnight (0) to Saturday at 11:59 (10079) in range format [<start>,<end>], Calculation is against EST
»»» verb|body|string|true|No description
»»» values|body|object|true|No description
»»»» start|body|integer|false|No description
»»»» end|body|integer|false|No description
»» 33|body|object|false|No description
»» 34|body|object|false|No description
»» 35|body|object|false|IAS segments
»»» verb|body|string|true|No description
»»» values|body|[string]|false|No description
»» 36|body|object|false|No description
»»» verb|body|string|true|No description
»»» values|body|integer|true|No description
»» 37|body|object|false|Banner size
»»» values|body|[string]|false|No description
» isActive|body|boolean|false|No description
» isArchived|body|boolean|false|No description
» creatives|body|[integer]|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» pacing|1|
» pacing|2|
» optimisation|1|
» optimisation|2|
» optimisation|3|
» optimisation|4|
» optimisation|5|
» optimisation|6|
» optimisation|7|
» optimisation|8|
» optimisation|9|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|ER|
»»» verb|IR|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|E|
»»» verb|I|
»»» verb|ER|
»»» verb|IR|
»»» verb|I|
»»» verb|I|
»»» values|1|
»»» values|2|
»»» values|3|
»»» values|4|
»»» values|5|
»»» values|6|
»»» values|7|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /line-items/details

> Code samples

```shell
# You can also use wget
curl -X get //line-items/details \
  -H 'Accept: */*'

```

```http
GET //line-items/details HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//line-items/details',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//line-items/details',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//line-items/details',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//line-items/details', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//line-items/details");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /line-items/{id}/targetings/{targetingId}

> Code samples

```shell
# You can also use wget
curl -X get //line-items/{id}/targetings/{targetingId} \
  -H 'Accept: */*'

```

```http
GET //line-items/{id}/targetings/{targetingId} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//line-items/{id}/targetings/{targetingId}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//line-items/{id}/targetings/{targetingId}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//line-items/{id}/targetings/{targetingId}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//line-items/{id}/targetings/{targetingId}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//line-items/{id}/targetings/{targetingId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
targetingId|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /creatives

> Code samples

```shell
# You can also use wget
curl -X get //creatives \
  -H 'Accept: */*'

```

```http
GET //creatives HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//creatives',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//creatives',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//creatives',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//creatives', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//creatives");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## POST /creatives

> Code samples

```shell
# You can also use wget
curl -X post //creatives \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //creatives HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//creatives',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "advertiser": 1,
  "name": "string",
  "type": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  },
  "impressionTrackers": {
    "value": "string",
    "type": 1
  },
  "categories": [
    "string"
  ],
  "isArchived": true,
  "titleAssets": [
    "Assets based on type"
  ],
  "dataAssets": {
    "1": [
      "Assets based on type"
    ],
    "2": [
      "Assets based on type"
    ],
    "11": [
      "Assets based on type"
    ],
    "12": [
      "Assets based on type"
    ]
  },
  "imgAssets": {
    "2": [
      "Assets based on type"
    ],
    "3": [
      "Assets based on type"
    ]
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//creatives',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//creatives',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//creatives', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//creatives");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "advertiser": 1,
  "name": "string",
  "type": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  },
  "impressionTrackers": {
    "value": "string",
    "type": 1
  },
  "categories": [
    "string"
  ],
  "isArchived": true,
  "titleAssets": [
    "Assets based on type"
  ],
  "dataAssets": {
    "1": [
      "Assets based on type"
    ],
    "2": [
      "Assets based on type"
    ],
    "11": [
      "Assets based on type"
    ],
    "12": [
      "Assets based on type"
    ]
  },
  "imgAssets": {
    "2": [
      "Assets based on type"
    ],
    "3": [
      "Assets based on type"
    ]
  }
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|No description
» advertiser|body|integer|true|No description
» name|body|string|true|length 1-255
» type|body|integer|true|No description
» link|body|object|false|No description
»» url|body|string|true|length 1-2000
»» fallbackUrl|body|string|false|length 1-2000
»» clickTrackers|body|[string]|false|No description
» impressionTrackers|body|object|false|No description
»» value|body|string|true|length 1-2000
»» type|body|integer|true|No description
» isArchived|body|boolean|false|No description
» dataAssets|body|object|false|No description
» imgAssets|body|object|true|No description
» categories|body|[string]|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
»» type|1|
»» type|2|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /creatives/{id}

> Code samples

```shell
# You can also use wget
curl -X get //creatives/{id} \
  -H 'Accept: */*'

```

```http
GET //creatives/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//creatives/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//creatives/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//creatives/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//creatives/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//creatives/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /creatives/{id}

> Code samples

```shell
# You can also use wget
curl -X patch //creatives/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //creatives/{id} HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//creatives/{id}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "advertiser": 1,
  "name": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  },
  "impressionTrackers": {
    "value": "string",
    "type": 1
  },
  "categories": [
    "string"
  ],
  "isArchived": true,
  "titleAssets": [
    "Assets based on type"
  ],
  "dataAssets": {
    "1": [
      "Assets based on type"
    ],
    "2": [
      "Assets based on type"
    ],
    "11": [
      "Assets based on type"
    ],
    "12": [
      "Assets based on type"
    ]
  },
  "imgAssets": {
    "2": [
      "Assets based on type"
    ],
    "3": [
      "Assets based on type"
    ]
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//creatives/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//creatives/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//creatives/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//creatives/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "advertiser": 1,
  "name": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  },
  "impressionTrackers": {
    "value": "string",
    "type": 1
  },
  "categories": [
    "string"
  ],
  "isArchived": true,
  "titleAssets": [
    "Assets based on type"
  ],
  "dataAssets": {
    "1": [
      "Assets based on type"
    ],
    "2": [
      "Assets based on type"
    ],
    "11": [
      "Assets based on type"
    ],
    "12": [
      "Assets based on type"
    ]
  },
  "imgAssets": {
    "2": [
      "Assets based on type"
    ],
    "3": [
      "Assets based on type"
    ]
  }
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
body|body|object|true|No description
» advertiser|body|integer|false|No description
» name|body|string|false|length 1-255
» link|body|object|false|No description
»» url|body|string|true|length 1-2000
»» fallbackUrl|body|string|false|length 1-2000
»» clickTrackers|body|[string]|false|No description
» impressionTrackers|body|object|false|No description
»» value|body|string|true|length 1-2000
»» type|body|integer|true|No description
» isArchived|body|boolean|false|No description
» dataAssets|body|object|false|No description
» imgAssets|body|object|false|No description
» categories|body|[string]|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
»» type|1|
»» type|2|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## DELETE /creatives/{id}

> Code samples

```shell
# You can also use wget
curl -X delete //creatives/{id} \
  -H 'Accept: */*'

```

```http
DELETE //creatives/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//creatives/{id}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//creatives/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.delete '//creatives/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.delete('//creatives/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//creatives/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /line-items/{lineItemId}/creatives

> Code samples

```shell
# You can also use wget
curl -X get //line-items/{lineItemId}/creatives \
  -H 'Accept: */*'

```

```http
GET //line-items/{lineItemId}/creatives HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//line-items/{lineItemId}/creatives',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//line-items/{lineItemId}/creatives',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//line-items/{lineItemId}/creatives',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//line-items/{lineItemId}/creatives', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//line-items/{lineItemId}/creatives");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
lineItemId|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /advertisers/{advertiserId}/creatives

> Code samples

```shell
# You can also use wget
curl -X get //advertisers/{advertiserId}/creatives \
  -H 'Accept: */*'

```

```http
GET //advertisers/{advertiserId}/creatives HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//advertisers/{advertiserId}/creatives',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//advertisers/{advertiserId}/creatives',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//advertisers/{advertiserId}/creatives',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//advertisers/{advertiserId}/creatives', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//advertisers/{advertiserId}/creatives");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
advertiserId|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## POST /creatives/{id}/clone

> Code samples

```shell
# You can also use wget
curl -X post //creatives/{id}/clone \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //creatives/{id}/clone HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//creatives/{id}/clone',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "advertiser": 1,
  "name": "string",
  "type": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  },
  "impressionTrackers": {
    "value": "string",
    "type": 1
  },
  "categories": [
    "string"
  ],
  "isArchived": true,
  "titleAssets": [
    "Assets based on type"
  ],
  "dataAssets": {
    "1": [
      "Assets based on type"
    ],
    "2": [
      "Assets based on type"
    ],
    "11": [
      "Assets based on type"
    ],
    "12": [
      "Assets based on type"
    ]
  },
  "imgAssets": {
    "2": [
      "Assets based on type"
    ],
    "3": [
      "Assets based on type"
    ]
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//creatives/{id}/clone',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//creatives/{id}/clone',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//creatives/{id}/clone', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//creatives/{id}/clone");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "advertiser": 1,
  "name": "string",
  "type": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  },
  "impressionTrackers": {
    "value": "string",
    "type": 1
  },
  "categories": [
    "string"
  ],
  "isArchived": true,
  "titleAssets": [
    "Assets based on type"
  ],
  "dataAssets": {
    "1": [
      "Assets based on type"
    ],
    "2": [
      "Assets based on type"
    ],
    "11": [
      "Assets based on type"
    ],
    "12": [
      "Assets based on type"
    ]
  },
  "imgAssets": {
    "2": [
      "Assets based on type"
    ],
    "3": [
      "Assets based on type"
    ]
  }
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
body|body|object|false|No description
» advertiser|body|integer|false|No description
» name|body|string|false|length 1-255
» type|body|integer|false|No description
» link|body|object|false|No description
»» url|body|string|true|length 1-2000
»» fallbackUrl|body|string|false|length 1-2000
»» clickTrackers|body|[string]|false|No description
» impressionTrackers|body|object|false|No description
»» value|body|string|true|length 1-2000
»» type|body|integer|true|No description
» isArchived|body|boolean|false|No description
» dataAssets|body|object|false|No description
» imgAssets|body|object|false|No description
» categories|body|[string]|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
»» type|1|
»» type|2|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /creatives/details/{id}

> Code samples

```shell
# You can also use wget
curl -X get //creatives/details/{id} \
  -H 'Accept: */*'

```

```http
GET //creatives/details/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//creatives/details/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//creatives/details/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//creatives/details/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//creatives/details/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//creatives/details/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /conversion-trackers

> Code samples

```shell
# You can also use wget
curl -X get //conversion-trackers \
  -H 'Accept: */*'

```

```http
GET //conversion-trackers HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//conversion-trackers',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//conversion-trackers',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//conversion-trackers',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//conversion-trackers', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//conversion-trackers");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## POST /conversion-trackers

> Code samples

```shell
# You can also use wget
curl -X post //conversion-trackers \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //conversion-trackers HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//conversion-trackers',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "advertiser": 1,
  "name": "string",
  "implementationType": 1,
  "attributionType": 1,
  "window": 1,
  "aggregationType": 1,
  "type": 1,
  "defaultValue": 1,
  "marginPercentage": 1,
  "marginValue": 1,
  "totalOrderRevenue": 1,
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//conversion-trackers',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//conversion-trackers',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//conversion-trackers', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//conversion-trackers");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "advertiser": 1,
  "name": "string",
  "implementationType": 1,
  "attributionType": 1,
  "window": 1,
  "aggregationType": 1,
  "type": 1,
  "defaultValue": 1,
  "marginPercentage": 1,
  "marginValue": 1,
  "totalOrderRevenue": 1,
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|No description
» advertiser|body|integer|true|No description
» name|body|string|true|length 1-255
» implementationType|body|integer|true|No description
» attributionType|body|integer|true|No description
» window|body|integer|true|No description
» aggregationType|body|integer|true|No description
» type|body|integer|true|No description
» defaultValue|body|number(float)|false|length 1-255
» marginPercentage|body|number(float)|false|No description
» marginValue|body|number(float)|false|No description
» totalOrderRevenue|body|number(float)|false|No description
» isArchived|body|boolean|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» implementationType|1|
» implementationType|2|
» attributionType|1|
» attributionType|2|
» aggregationType|1|
» aggregationType|2|
» type|1|
» type|2|
» type|3|
» type|4|
» type|5|
» type|6|
» type|7|
» type|8|
» type|9|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /conversion-trackers/{id}

> Code samples

```shell
# You can also use wget
curl -X get //conversion-trackers/{id} \
  -H 'Accept: */*'

```

```http
GET //conversion-trackers/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//conversion-trackers/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//conversion-trackers/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//conversion-trackers/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//conversion-trackers/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//conversion-trackers/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /conversion-trackers/{id}

> Code samples

```shell
# You can also use wget
curl -X patch //conversion-trackers/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //conversion-trackers/{id} HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//conversion-trackers/{id}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "advertiser": 1,
  "name": "string",
  "implementationType": 1,
  "attributionType": 1,
  "window": 1,
  "aggregationType": 1,
  "type": 1,
  "defaultValue": 1,
  "marginPercentage": 1,
  "marginValue": 1,
  "totalOrderRevenue": 1,
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//conversion-trackers/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//conversion-trackers/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//conversion-trackers/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//conversion-trackers/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "advertiser": 1,
  "name": "string",
  "implementationType": 1,
  "attributionType": 1,
  "window": 1,
  "aggregationType": 1,
  "type": 1,
  "defaultValue": 1,
  "marginPercentage": 1,
  "marginValue": 1,
  "totalOrderRevenue": 1,
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
body|body|object|true|No description
» advertiser|body|integer|false|No description
» name|body|string|false|length 1-255
» implementationType|body|integer|false|No description
» attributionType|body|integer|false|No description
» window|body|integer|false|No description
» aggregationType|body|integer|false|No description
» type|body|integer|false|No description
» defaultValue|body|number(float)|false|length 1-255
» marginPercentage|body|number(float)|false|No description
» marginValue|body|number(float)|false|No description
» totalOrderRevenue|body|number(float)|false|No description
» isArchived|body|boolean|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» implementationType|1|
» implementationType|2|
» attributionType|1|
» attributionType|2|
» aggregationType|1|
» aggregationType|2|
» type|1|
» type|2|
» type|3|
» type|4|
» type|5|
» type|6|
» type|7|
» type|8|
» type|9|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## DELETE /conversion-trackers/{id}

> Code samples

```shell
# You can also use wget
curl -X delete //conversion-trackers/{id} \
  -H 'Accept: */*'

```

```http
DELETE //conversion-trackers/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//conversion-trackers/{id}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//conversion-trackers/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.delete '//conversion-trackers/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.delete('//conversion-trackers/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//conversion-trackers/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /orders/{campaignId}/conversion-trackers

> Code samples

```shell
# You can also use wget
curl -X get //orders/{campaignId}/conversion-trackers \
  -H 'Accept: */*'

```

```http
GET //orders/{campaignId}/conversion-trackers HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//orders/{campaignId}/conversion-trackers',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//orders/{campaignId}/conversion-trackers',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//orders/{campaignId}/conversion-trackers',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//orders/{campaignId}/conversion-trackers', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//orders/{campaignId}/conversion-trackers");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
campaignId|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /advertisers/{advertiserId}/conversion-trackers

> Code samples

```shell
# You can also use wget
curl -X get //advertisers/{advertiserId}/conversion-trackers \
  -H 'Accept: */*'

```

```http
GET //advertisers/{advertiserId}/conversion-trackers HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//advertisers/{advertiserId}/conversion-trackers',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//advertisers/{advertiserId}/conversion-trackers',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//advertisers/{advertiserId}/conversion-trackers',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//advertisers/{advertiserId}/conversion-trackers', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//advertisers/{advertiserId}/conversion-trackers");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
advertiserId|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /conversion-trackers/details

> Code samples

```shell
# You can also use wget
curl -X get //conversion-trackers/details \
  -H 'Accept: */*'

```

```http
GET //conversion-trackers/details HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//conversion-trackers/details',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//conversion-trackers/details',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//conversion-trackers/details',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//conversion-trackers/details', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//conversion-trackers/details");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## POST /images

> Code samples

```shell
# You can also use wget
curl -X post //images \
  -H 'Content-Type: application/octet-stream' \
  -H 'Accept: */*'

```

```http
POST //images HTTP/1.1
Host: null
Content-Type: application/octet-stream
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/octet-stream',
  'Accept':'*/*'

};

$.ajax({
  url: '//images',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = ''string'';
const headers = {
  'Content-Type':'application/octet-stream',
  'Accept':'*/*'

};

fetch('//images',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/octet-stream',
  'Accept' => '*/*'
}

result = RestClient.post '//images',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/octet-stream',
  'Accept': '*/*'
}

r = requests.post('//images', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//images");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```yaml
string

```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|string(binary)|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /images/{id}

> Code samples

```shell
# You can also use wget
curl -X get //images/{id} \
  -H 'Accept: */*'

```

```http
GET //images/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//images/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//images/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//images/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//images/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//images/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /images/{id}

> Code samples

```shell
# You can also use wget
curl -X patch //images/{id} \
  -H 'Accept: */*'

```

```http
PATCH //images/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//images/{id}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//images/{id}',
{
  method: 'PATCH',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.patch '//images/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.patch('//images/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//images/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## DELETE /images/{id}

> Code samples

```shell
# You can also use wget
curl -X delete //images/{id} \
  -H 'Accept: */*'

```

```http
DELETE //images/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//images/{id}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//images/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.delete '//images/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.delete('//images/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//images/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /images/details

> Code samples

```shell
# You can also use wget
curl -X get //images/details \
  -H 'Accept: */*'

```

```http
GET //images/details HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//images/details',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//images/details',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//images/details',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//images/details', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//images/details");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /agencies

> Code samples

```shell
# You can also use wget
curl -X get //agencies \
  -H 'Accept: */*'

```

```http
GET //agencies HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//agencies',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//agencies',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//agencies',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//agencies', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//agencies");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## POST /agencies

> Code samples

```shell
# You can also use wget
curl -X post //agencies \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //agencies HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//agencies',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "domain": "string",
  "advertisers": [
    1
  ],
  "users": [
    "string"
  ],
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//agencies',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//agencies',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//agencies', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//agencies");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "domain": "string",
  "advertisers": [
    1
  ],
  "users": [
    "string"
  ],
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|No description
» name|body|string|true|length 1-255
» address1|body|string|false|length 1-255
» address2|body|string|false|length 1-255
» city|body|string|false|length 1-255
» state|body|string|false|length 1-255
» country|body|string|false|length 1-255
» postalCode|body|string|false|length 1-255
» phoneNumber|body|string|false|length 1-255
» domain|body|string|false|length 1-255
» isArchived|body|boolean|false|No description
» advertisers|body|[integer]|false|No description
» users|body|[string]|false|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /agencies/{id}

> Code samples

```shell
# You can also use wget
curl -X get //agencies/{id} \
  -H 'Accept: */*'

```

```http
GET //agencies/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//agencies/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//agencies/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//agencies/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//agencies/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//agencies/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /agencies/{id}

> Code samples

```shell
# You can also use wget
curl -X patch //agencies/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //agencies/{id} HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//agencies/{id}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "domain": "string",
  "advertisers": [
    1
  ],
  "users": [
    "string"
  ],
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//agencies/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//agencies/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//agencies/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//agencies/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "domain": "string",
  "advertisers": [
    1
  ],
  "users": [
    "string"
  ],
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
body|body|object|true|No description
» name|body|string|false|length 1-255
» address1|body|string|false|length 1-255
» address2|body|string|false|length 1-255
» city|body|string|false|length 1-255
» state|body|string|false|length 1-255
» country|body|string|false|length 1-255
» postalCode|body|string|false|length 1-255
» phoneNumber|body|string|false|length 1-255
» domain|body|string|false|length 1-255
» isArchived|body|boolean|false|No description
» advertisers|body|[integer]|false|No description
» users|body|[string]|false|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## DELETE /agencies/{id}

> Code samples

```shell
# You can also use wget
curl -X delete //agencies/{id} \
  -H 'Accept: */*'

```

```http
DELETE //agencies/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//agencies/{id}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//agencies/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.delete '//agencies/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.delete('//agencies/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//agencies/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /users/{id}/agencies

> Code samples

```shell
# You can also use wget
curl -X get //users/{id}/agencies \
  -H 'Accept: */*'

```

```http
GET //users/{id}/agencies HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//users/{id}/agencies',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//users/{id}/agencies',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//users/{id}/agencies',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//users/{id}/agencies', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users/{id}/agencies");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|string|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /agencies/details

> Code samples

```shell
# You can also use wget
curl -X get //agencies/details \
  -H 'Accept: */*'

```

```http
GET //agencies/details HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//agencies/details',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//agencies/details',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//agencies/details',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//agencies/details', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//agencies/details");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /advertisers

> Code samples

```shell
# You can also use wget
curl -X get //advertisers \
  -H 'Accept: */*'

```

```http
GET //advertisers HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//advertisers',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//advertisers',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//advertisers',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//advertisers', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//advertisers");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## POST /advertisers

> Code samples

```shell
# You can also use wget
curl -X post //advertisers \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //advertisers HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//advertisers',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "agency": 1,
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "domain": "string",
  "billingType": 1,
  "feeType": 1,
  "feeAmount": 1,
  "users": [
    "string"
  ],
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//advertisers',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//advertisers',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//advertisers', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//advertisers");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "agency": 1,
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "domain": "string",
  "billingType": 1,
  "feeType": 1,
  "feeAmount": 1,
  "users": [
    "string"
  ],
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|No description
» name|body|string|true|length 1-255
» agency|body|integer|false|No description
» address1|body|string|false|length 1-255
» address2|body|string|false|length 1-255
» city|body|string|false|length 1-255
» state|body|string|false|length 1-255
» country|body|string|false|length 1-255
» postalCode|body|string|false|length 1-255
» phoneNumber|body|string|false|length 1-255
» domain|body|string|false|length 1-255
» billingType|body|integer|false|No description
» feeType|body|integer|false|No description
» feeAmount|body|number(float)|false|No description
» isArchived|body|boolean|false|No description
» users|body|[string]|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» billingType|1|
» billingType|2|
» billingType|3|
» billingType|4|
» feeType|1|
» feeType|2|
» feeType|3|
» feeType|4|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /advertisers/{id}

> Code samples

```shell
# You can also use wget
curl -X get //advertisers/{id} \
  -H 'Accept: */*'

```

```http
GET //advertisers/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//advertisers/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//advertisers/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//advertisers/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//advertisers/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//advertisers/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /advertisers/{id}

> Code samples

```shell
# You can also use wget
curl -X patch //advertisers/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //advertisers/{id} HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//advertisers/{id}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "agency": 1,
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "domain": "string",
  "billingType": 1,
  "feeType": 1,
  "feeAmount": 1,
  "users": [
    "string"
  ],
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//advertisers/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//advertisers/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//advertisers/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//advertisers/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "agency": 1,
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "domain": "string",
  "billingType": 1,
  "feeType": 1,
  "feeAmount": 1,
  "users": [
    "string"
  ],
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
body|body|object|true|No description
» name|body|string|false|length 1-255
» agency|body|integer|false|No description
» address1|body|string|false|length 1-255
» address2|body|string|false|length 1-255
» city|body|string|false|length 1-255
» state|body|string|false|length 1-255
» country|body|string|false|length 1-255
» postalCode|body|string|false|length 1-255
» phoneNumber|body|string|false|length 1-255
» domain|body|string|false|length 1-255
» billingType|body|integer|false|No description
» feeType|body|integer|false|No description
» feeAmount|body|number(float)|false|No description
» isArchived|body|boolean|false|No description
» users|body|[string]|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» billingType|1|
» billingType|2|
» billingType|3|
» billingType|4|
» feeType|1|
» feeType|2|
» feeType|3|
» feeType|4|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## DELETE /advertisers/{id}

> Code samples

```shell
# You can also use wget
curl -X delete //advertisers/{id} \
  -H 'Accept: */*'

```

```http
DELETE //advertisers/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//advertisers/{id}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//advertisers/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.delete '//advertisers/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.delete('//advertisers/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//advertisers/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /agencies/{agencyId}/advertisers

> Code samples

```shell
# You can also use wget
curl -X get //agencies/{agencyId}/advertisers \
  -H 'Accept: */*'

```

```http
GET //agencies/{agencyId}/advertisers HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//agencies/{agencyId}/advertisers',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//agencies/{agencyId}/advertisers',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//agencies/{agencyId}/advertisers',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//agencies/{agencyId}/advertisers', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//agencies/{agencyId}/advertisers");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
agencyId|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /users/{id}/advertisers

> Code samples

```shell
# You can also use wget
curl -X get //users/{id}/advertisers \
  -H 'Accept: */*'

```

```http
GET //users/{id}/advertisers HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//users/{id}/advertisers',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//users/{id}/advertisers',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//users/{id}/advertisers',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//users/{id}/advertisers', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//users/{id}/advertisers");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|string|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /advertisers/details

> Code samples

```shell
# You can also use wget
curl -X get //advertisers/details \
  -H 'Accept: */*'

```

```http
GET //advertisers/details HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//advertisers/details',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//advertisers/details',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//advertisers/details',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//advertisers/details', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//advertisers/details");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /publishers

> Code samples

```shell
# You can also use wget
curl -X get //publishers \
  -H 'Accept: */*'

```

```http
GET //publishers HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//publishers',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//publishers',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//publishers',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//publishers', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//publishers");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## POST /publishers

> Code samples

```shell
# You can also use wget
curl -X post //publishers \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //publishers HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//publishers',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "domain": "string",
  "categories": [
    "string"
  ],
  "ssps": {
    "id": 1,
    "publisher_ssp_id": "string"
  },
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//publishers',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//publishers',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//publishers', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//publishers");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "domain": "string",
  "categories": [
    "string"
  ],
  "ssps": {
    "id": 1,
    "publisher_ssp_id": "string"
  },
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|No description
» name|body|string|true|length 1-255
» address1|body|string|false|length 1-255
» address2|body|string|false|length 1-255
» city|body|string|false|length 1-255
» state|body|string|false|length 1-255
» country|body|string|false|length 1-255
» postalCode|body|string|false|length 1-255
» phoneNumber|body|string|false|length 1-255
» domain|body|string|false|length 1-255
» ssps|body|object|false|No description
»» id|body|integer|true|No description
»» publisher_ssp_id|body|string|false|length 1-255
» isArchived|body|boolean|false|No description
» categories|body|[string]|false|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /publishers/{id}

> Code samples

```shell
# You can also use wget
curl -X get //publishers/{id} \
  -H 'Accept: */*'

```

```http
GET //publishers/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//publishers/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//publishers/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//publishers/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//publishers/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//publishers/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /publishers/{id}

> Code samples

```shell
# You can also use wget
curl -X patch //publishers/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //publishers/{id} HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//publishers/{id}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "domain": "string",
  "categories": [
    "string"
  ],
  "ssps": {
    "id": 1,
    "publisher_ssp_id": "string"
  },
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//publishers/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//publishers/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//publishers/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//publishers/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "domain": "string",
  "categories": [
    "string"
  ],
  "ssps": {
    "id": 1,
    "publisher_ssp_id": "string"
  },
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
body|body|object|true|No description
» name|body|string|false|length 1-255
» address1|body|string|false|length 1-255
» address2|body|string|false|length 1-255
» city|body|string|false|length 1-255
» state|body|string|false|length 1-255
» country|body|string|false|length 1-255
» postalCode|body|string|false|length 1-255
» phoneNumber|body|string|false|length 1-255
» domain|body|string|false|length 1-255
» ssps|body|object|false|No description
»» id|body|integer|true|No description
»» publisher_ssp_id|body|string|false|length 1-255
» isArchived|body|boolean|false|No description
» categories|body|[string]|false|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## DELETE /publishers/{id}

> Code samples

```shell
# You can also use wget
curl -X delete //publishers/{id} \
  -H 'Accept: */*'

```

```http
DELETE //publishers/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//publishers/{id}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//publishers/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.delete '//publishers/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.delete('//publishers/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//publishers/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /publishers/details

> Code samples

```shell
# You can also use wget
curl -X get //publishers/details \
  -H 'Accept: */*'

```

```http
GET //publishers/details HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//publishers/details',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//publishers/details',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//publishers/details',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//publishers/details', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//publishers/details");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /publishers/{publisherId}/sites

> Code samples

```shell
# You can also use wget
curl -X get //publishers/{publisherId}/sites \
  -H 'Accept: */*'

```

```http
GET //publishers/{publisherId}/sites HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//publishers/{publisherId}/sites',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//publishers/{publisherId}/sites',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//publishers/{publisherId}/sites',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//publishers/{publisherId}/sites', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//publishers/{publisherId}/sites");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
publisherId|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /publishers/{publisherId}/apps

> Code samples

```shell
# You can also use wget
curl -X get //publishers/{publisherId}/apps \
  -H 'Accept: */*'

```

```http
GET //publishers/{publisherId}/apps HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//publishers/{publisherId}/apps',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//publishers/{publisherId}/apps',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//publishers/{publisherId}/apps',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//publishers/{publisherId}/apps', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//publishers/{publisherId}/apps");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
publisherId|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /publishers/{publisherId}/tags

> Code samples

```shell
# You can also use wget
curl -X get //publishers/{publisherId}/tags \
  -H 'Accept: */*'

```

```http
GET //publishers/{publisherId}/tags HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//publishers/{publisherId}/tags',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//publishers/{publisherId}/tags',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//publishers/{publisherId}/tags',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//publishers/{publisherId}/tags', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//publishers/{publisherId}/tags");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
publisherId|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /ssps

> Code samples

```shell
# You can also use wget
curl -X get //ssps \
  -H 'Accept: */*'

```

```http
GET //ssps HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//ssps',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//ssps',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//ssps',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//ssps', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//ssps");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## POST /ssps

> Code samples

```shell
# You can also use wget
curl -X post //ssps \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //ssps HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//ssps',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "domain": "string",
  "publishers": {
    "id": 1,
    "publisher_ssp_id": "string"
  },
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//ssps',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//ssps',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//ssps', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//ssps");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "domain": "string",
  "publishers": {
    "id": 1,
    "publisher_ssp_id": "string"
  },
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|No description
» name|body|string|true|length 1-255
» address1|body|string|false|length 1-255
» address2|body|string|false|length 1-255
» city|body|string|false|length 1-255
» state|body|string|false|length 1-255
» country|body|string|false|length 1-255
» postalCode|body|string|false|length 1-255
» phoneNumber|body|string|false|length 1-255
» domain|body|string|false|length 1-255
» publishers|body|object|false|No description
»» id|body|integer|true|No description
»» publisher_ssp_id|body|string|false|length 1-255
» isArchived|body|boolean|false|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /ssps/{id}

> Code samples

```shell
# You can also use wget
curl -X get //ssps/{id} \
  -H 'Accept: */*'

```

```http
GET //ssps/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//ssps/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//ssps/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//ssps/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//ssps/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//ssps/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /ssps/{id}

> Code samples

```shell
# You can also use wget
curl -X patch //ssps/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //ssps/{id} HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//ssps/{id}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "domain": "string",
  "publishers": {
    "id": 1,
    "publisher_ssp_id": "string"
  },
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//ssps/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//ssps/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//ssps/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//ssps/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "address1": "string",
  "address2": "string",
  "city": "string",
  "state": "string",
  "country": "string",
  "postalCode": "string",
  "phoneNumber": "string",
  "domain": "string",
  "publishers": {
    "id": 1,
    "publisher_ssp_id": "string"
  },
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
body|body|object|true|No description
» name|body|string|false|length 1-255
» address1|body|string|false|length 1-255
» address2|body|string|false|length 1-255
» city|body|string|false|length 1-255
» state|body|string|false|length 1-255
» country|body|string|false|length 1-255
» postalCode|body|string|false|length 1-255
» phoneNumber|body|string|false|length 1-255
» domain|body|string|false|length 1-255
» publishers|body|object|false|No description
»» id|body|integer|true|No description
»» publisher_ssp_id|body|string|false|length 1-255
» isArchived|body|boolean|false|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## DELETE /ssps/{id}

> Code samples

```shell
# You can also use wget
curl -X delete //ssps/{id} \
  -H 'Accept: */*'

```

```http
DELETE //ssps/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//ssps/{id}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//ssps/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.delete '//ssps/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.delete('//ssps/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//ssps/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /ssps/details

> Code samples

```shell
# You can also use wget
curl -X get //ssps/details \
  -H 'Accept: */*'

```

```http
GET //ssps/details HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//ssps/details',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//ssps/details',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//ssps/details',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//ssps/details', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//ssps/details");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## POST /sites

> Code samples

```shell
# You can also use wget
curl -X post //sites \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //sites HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//sites',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "publisher": 1,
  "name": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//sites',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//sites',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//sites', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//sites");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "publisher": 1,
  "name": "string"
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|[Body3](#schema+body3)|true|No description
» publisher|body|integer|true|No description
» name|body|string|true|length 1-255


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /sites/{id}

> Code samples

```shell
# You can also use wget
curl -X patch //sites/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //sites/{id} HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//sites/{id}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "publisher": 1,
  "name": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//sites/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//sites/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//sites/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//sites/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "publisher": 1,
  "name": "string"
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
body|body|[Body4](#schema+body4)|true|No description
» publisher|body|integer|false|No description
» name|body|string|false|length 1-255


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /sites/{id}

> Code samples

```shell
# You can also use wget
curl -X get //sites/{id} \
  -H 'Accept: */*'

```

```http
GET //sites/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//sites/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//sites/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//sites/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//sites/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//sites/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /sites/details

> Code samples

```shell
# You can also use wget
curl -X get //sites/details \
  -H 'Accept: */*'

```

```http
GET //sites/details HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//sites/details',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//sites/details',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//sites/details',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//sites/details', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//sites/details");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## POST /apps

> Code samples

```shell
# You can also use wget
curl -X post //apps \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //apps HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//apps',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "publisher": 1,
  "name": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//apps',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//apps',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//apps', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//apps");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "publisher": 1,
  "name": "string"
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|[Body3](#schema+body3)|true|No description
» publisher|body|integer|true|No description
» name|body|string|true|length 1-255


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /apps/{id}

> Code samples

```shell
# You can also use wget
curl -X patch //apps/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //apps/{id} HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//apps/{id}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "publisher": 1,
  "name": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//apps/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//apps/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//apps/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//apps/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "publisher": 1,
  "name": "string"
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
body|body|[Body4](#schema+body4)|true|No description
» publisher|body|integer|false|No description
» name|body|string|false|length 1-255


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /apps/{id}

> Code samples

```shell
# You can also use wget
curl -X get //apps/{id} \
  -H 'Accept: */*'

```

```http
GET //apps/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//apps/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//apps/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//apps/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//apps/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//apps/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /apps/details

> Code samples

```shell
# You can also use wget
curl -X get //apps/details \
  -H 'Accept: */*'

```

```http
GET //apps/details HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//apps/details',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//apps/details',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//apps/details',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//apps/details', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//apps/details");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /tags

> Code samples

```shell
# You can also use wget
curl -X get //tags \
  -H 'Accept: */*'

```

```http
GET //tags HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//tags',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//tags',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//tags',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//tags', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//tags");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## POST /tags

> Code samples

```shell
# You can also use wget
curl -X post //tags \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //tags HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//tags',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "publisher": 1,
  "name": "string",
  "adFormat": 1,
  "placement": 1,
  "contentType": 1,
  "contentSubtype": 1,
  "isNative": 1,
  "isDisplay": 1,
  "isSecure": 1,
  "bidFloor": 1,
  "isCpc": 1,
  "isCpm": 1,
  "passback": "string",
  "enableThirdParty": 1,
  "dealId": "string",
  "dealAuctionType": 1,
  "blockedCategories": [
    "string"
  ],
  "blockedAdvertisers": [
    1
  ],
  "fillNetworks": [
    1
  ],
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//tags',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//tags',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//tags', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//tags");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "publisher": 1,
  "name": "string",
  "adFormat": 1,
  "placement": 1,
  "contentType": 1,
  "contentSubtype": 1,
  "isNative": 1,
  "isDisplay": 1,
  "isSecure": 1,
  "bidFloor": 1,
  "isCpc": 1,
  "isCpm": 1,
  "passback": "string",
  "enableThirdParty": 1,
  "dealId": "string",
  "dealAuctionType": 1,
  "blockedCategories": [
    "string"
  ],
  "blockedAdvertisers": [
    1
  ],
  "fillNetworks": [
    1
  ],
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|No description
» publisher|body|integer|true|No description
» name|body|string|true|length 1-255
» adFormat|body|integer|true|No description
» placement|body|integer|true|No description
» contentType|body|integer|true|No description
» contentSubtype|body|integer|true|No description
» isNative|body|integer|true|No description
» isDisplay|body|integer|true|No description
» isSecure|body|integer|true|No description
» bidFloor|body|number(float)|false|No description
» isCpc|body|integer|true|No description
» isCpm|body|integer|true|No description
» passback|body|string|false|length 1-500
» enableThirdParty|body|integer|true|No description
» dealId|body|string|false|length 1-255
» dealAuctionType|body|integer|true|No description
» isArchived|body|boolean|false|No description
» blockedCategories|body|[string]|false|No description
» blockedAdvertisers|body|[integer]|false|No description
» fillNetworks|body|[integer]|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» adFormat|1|
» adFormat|2|
» adFormat|3|
» adFormat|4|
» adFormat|5|
» placement|1|
» placement|2|
» placement|3|
» placement|4|
» contentType|1|
» contentType|2|
» contentType|3|
» contentSubtype|10|
» contentSubtype|11|
» contentSubtype|12|
» contentSubtype|13|
» contentSubtype|14|
» contentSubtype|15|
» contentSubtype|20|
» contentSubtype|21|
» contentSubtype|22|
» contentSubtype|30|
» contentSubtype|31|
» contentSubtype|32|
» isNative|0|
» isNative|1|
» isDisplay|0|
» isDisplay|1|
» isSecure|0|
» isSecure|1|
» isCpc|0|
» isCpc|1|
» isCpm|0|
» isCpm|1|
» enableThirdParty|0|
» enableThirdParty|1|
» dealAuctionType|1|
» dealAuctionType|2|
» dealAuctionType|3|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /tags/{id}

> Code samples

```shell
# You can also use wget
curl -X get //tags/{id} \
  -H 'Accept: */*'

```

```http
GET //tags/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//tags/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//tags/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//tags/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//tags/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//tags/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /tags/{id}

> Code samples

```shell
# You can also use wget
curl -X patch //tags/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //tags/{id} HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//tags/{id}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "publisher": 1,
  "name": "string",
  "adFormat": 1,
  "placement": 1,
  "contentType": 1,
  "contentSubtype": 1,
  "isNative": 1,
  "isDisplay": 1,
  "isSecure": 1,
  "bidFloor": 1,
  "isCpc": 1,
  "isCpm": 1,
  "passback": "string",
  "enableThirdParty": 1,
  "dealId": "string",
  "dealAuctionType": 1,
  "blockedCategories": [
    "string"
  ],
  "blockedAdvertisers": [
    1
  ],
  "fillNetworks": [
    1
  ],
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//tags/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//tags/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//tags/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//tags/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "publisher": 1,
  "name": "string",
  "adFormat": 1,
  "placement": 1,
  "contentType": 1,
  "contentSubtype": 1,
  "isNative": 1,
  "isDisplay": 1,
  "isSecure": 1,
  "bidFloor": 1,
  "isCpc": 1,
  "isCpm": 1,
  "passback": "string",
  "enableThirdParty": 1,
  "dealId": "string",
  "dealAuctionType": 1,
  "blockedCategories": [
    "string"
  ],
  "blockedAdvertisers": [
    1
  ],
  "fillNetworks": [
    1
  ],
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
body|body|object|true|No description
» publisher|body|integer|false|No description
» name|body|string|false|length 1-255
» adFormat|body|integer|false|No description
» placement|body|integer|false|No description
» contentType|body|integer|false|No description
» contentSubtype|body|integer|false|No description
» isNative|body|integer|false|No description
» isDisplay|body|integer|false|No description
» isSecure|body|integer|false|No description
» bidFloor|body|number(float)|false|No description
» isCpc|body|integer|false|No description
» isCpm|body|integer|false|No description
» passback|body|string|false|length 1-500
» enableThirdParty|body|integer|false|No description
» dealId|body|string|false|length 1-255
» dealAuctionType|body|integer|false|No description
» isArchived|body|boolean|false|No description
» blockedCategories|body|[string]|false|No description
» blockedAdvertisers|body|[integer]|false|No description
» fillNetworks|body|[integer]|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» adFormat|1|
» adFormat|2|
» adFormat|3|
» adFormat|4|
» adFormat|5|
» placement|1|
» placement|2|
» placement|3|
» placement|4|
» contentType|1|
» contentType|2|
» contentType|3|
» contentSubtype|10|
» contentSubtype|11|
» contentSubtype|12|
» contentSubtype|13|
» contentSubtype|14|
» contentSubtype|15|
» contentSubtype|20|
» contentSubtype|21|
» contentSubtype|22|
» contentSubtype|30|
» contentSubtype|31|
» contentSubtype|32|
» isNative|0|
» isNative|1|
» isDisplay|0|
» isDisplay|1|
» isSecure|0|
» isSecure|1|
» isCpc|0|
» isCpc|1|
» isCpm|0|
» isCpm|1|
» enableThirdParty|0|
» enableThirdParty|1|
» dealAuctionType|1|
» dealAuctionType|2|
» dealAuctionType|3|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## DELETE /tags/{id}

> Code samples

```shell
# You can also use wget
curl -X delete //tags/{id} \
  -H 'Accept: */*'

```

```http
DELETE //tags/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//tags/{id}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//tags/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.delete '//tags/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.delete('//tags/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//tags/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /tags/details

> Code samples

```shell
# You can also use wget
curl -X get //tags/details \
  -H 'Accept: */*'

```

```http
GET //tags/details HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//tags/details',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//tags/details',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//tags/details',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//tags/details', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//tags/details");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /custom-lists

> Code samples

```shell
# You can also use wget
curl -X get //custom-lists \
  -H 'Accept: */*'

```

```http
GET //custom-lists HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//custom-lists',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//custom-lists',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//custom-lists',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//custom-lists', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//custom-lists");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## POST /custom-lists

> Code samples

```shell
# You can also use wget
curl -X post //custom-lists \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //custom-lists HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//custom-lists',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "type": 1,
  "isActive": true,
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//custom-lists',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//custom-lists',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//custom-lists', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//custom-lists");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "type": 1,
  "isActive": true,
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|[Body5](#schema+body5)|true|No description
» name|body|string|true|length 1-255
» type|body|integer|true|No description
» isActive|body|boolean|false|No description
» isArchived|body|boolean|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» type|1|
» type|2|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /custom-lists/{id}

> Code samples

```shell
# You can also use wget
curl -X get //custom-lists/{id} \
  -H 'Accept: */*'

```

```http
GET //custom-lists/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//custom-lists/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//custom-lists/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//custom-lists/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//custom-lists/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//custom-lists/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /custom-lists/{id}

> Code samples

```shell
# You can also use wget
curl -X patch //custom-lists/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //custom-lists/{id} HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//custom-lists/{id}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "type": 1,
  "isActive": true,
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//custom-lists/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//custom-lists/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//custom-lists/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//custom-lists/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "type": 1,
  "isActive": true,
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
body|body|object|true|No description
» name|body|string|false|length 1-255
» type|body|integer|false|No description
» isActive|body|boolean|false|No description
» isArchived|body|boolean|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» type|1|
» type|2|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## DELETE /custom-lists/{id}

> Code samples

```shell
# You can also use wget
curl -X delete //custom-lists/{id} \
  -H 'Accept: */*'

```

```http
DELETE //custom-lists/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//custom-lists/{id}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//custom-lists/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.delete '//custom-lists/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.delete('//custom-lists/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//custom-lists/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /custom-lists/details

> Code samples

```shell
# You can also use wget
curl -X get //custom-lists/details \
  -H 'Accept: */*'

```

```http
GET //custom-lists/details HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//custom-lists/details',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//custom-lists/details',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//custom-lists/details',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//custom-lists/details', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//custom-lists/details");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /custom-lists/{customListId}/items

> Code samples

```shell
# You can also use wget
curl -X get //custom-lists/{customListId}/items \
  -H 'Accept: */*'

```

```http
GET //custom-lists/{customListId}/items HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//custom-lists/{customListId}/items',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//custom-lists/{customListId}/items',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//custom-lists/{customListId}/items',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//custom-lists/{customListId}/items', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//custom-lists/{customListId}/items");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
customListId|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## POST /custom-lists/{customListId}/items

> Code samples

```shell
# You can also use wget
curl -X post //custom-lists/{customListId}/items \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //custom-lists/{customListId}/items HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//custom-lists/{customListId}/items',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "type": 1,
  "isActive": true,
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//custom-lists/{customListId}/items',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//custom-lists/{customListId}/items',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//custom-lists/{customListId}/items', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//custom-lists/{customListId}/items");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "type": 1,
  "isActive": true,
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
customListId|path|integer|true|No description
body|body|[Body5](#schema+body5)|true|No description
» name|body|string|true|length 1-255
» type|body|integer|true|No description
» isActive|body|boolean|false|No description
» isArchived|body|boolean|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» type|1|
» type|2|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## POST /custom-lists/{customListId}/items/upload

> Code samples

```shell
# You can also use wget
curl -X post //custom-lists/{customListId}/items/upload \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //custom-lists/{customListId}/items/upload HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//custom-lists/{customListId}/items/upload',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "type": 1,
  "isActive": true,
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//custom-lists/{customListId}/items/upload',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//custom-lists/{customListId}/items/upload',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//custom-lists/{customListId}/items/upload', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//custom-lists/{customListId}/items/upload");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "type": 1,
  "isActive": true,
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
customListId|path|integer|true|No description
body|body|[Body5](#schema+body5)|true|No description
» name|body|string|true|length 1-255
» type|body|integer|true|No description
» isActive|body|boolean|false|No description
» isArchived|body|boolean|false|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» type|1|
» type|2|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /scheduled-reports

> Code samples

```shell
# You can also use wget
curl -X get //scheduled-reports \
  -H 'Accept: */*'

```

```http
GET //scheduled-reports HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//scheduled-reports',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//scheduled-reports',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//scheduled-reports',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//scheduled-reports', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//scheduled-reports");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## POST /scheduled-reports

> Code samples

```shell
# You can also use wget
curl -X post //scheduled-reports \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //scheduled-reports HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//scheduled-reports',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "range": "string",
  "startDate": "2017-09-26",
  "endDate": "2017-09-26",
  "from": "2017-09-26",
  "to": "2017-09-26",
  "utc_offset": 1,
  "interval": "string",
  "emails": [
    "string"
  ],
  "metrics": [
    "string"
  ],
  "dimensions": [
    "string"
  ],
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//scheduled-reports',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//scheduled-reports',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//scheduled-reports', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//scheduled-reports");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "range": "string",
  "startDate": "2017-09-26",
  "endDate": "2017-09-26",
  "from": "2017-09-26",
  "to": "2017-09-26",
  "utc_offset": 1,
  "interval": "string",
  "emails": [
    "string"
  ],
  "metrics": [
    "string"
  ],
  "dimensions": [
    "string"
  ],
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|No description
» name|body|string|true|length 1-255
» range|body|string|true|length 1-255
» startDate|body|string(date)|false|No description
» endDate|body|string(date)|false|No description
» from|body|string(date)|false|No description
» to|body|string(date)|false|No description
» utc_offset|body|integer|false|No description
» interval|body|string|true|length 1-255
» isArchived|body|boolean|false|No description
» emails|body|[string]|false|No description
» metrics|body|[string]|false|No description
» dimensions|body|[string]|false|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /scheduled-reports/{id}

> Code samples

```shell
# You can also use wget
curl -X get //scheduled-reports/{id} \
  -H 'Accept: */*'

```

```http
GET //scheduled-reports/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//scheduled-reports/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//scheduled-reports/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//scheduled-reports/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//scheduled-reports/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//scheduled-reports/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /scheduled-reports/{id}

> Code samples

```shell
# You can also use wget
curl -X patch //scheduled-reports/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //scheduled-reports/{id} HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//scheduled-reports/{id}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "range": "string",
  "startDate": "2017-09-26",
  "endDate": "2017-09-26",
  "from": "2017-09-26",
  "to": "2017-09-26",
  "utc_offset": 1,
  "interval": "string",
  "emails": [
    "string"
  ],
  "metrics": [
    "string"
  ],
  "dimensions": [
    "string"
  ],
  "isArchived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//scheduled-reports/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//scheduled-reports/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//scheduled-reports/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//scheduled-reports/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "range": "string",
  "startDate": "2017-09-26",
  "endDate": "2017-09-26",
  "from": "2017-09-26",
  "to": "2017-09-26",
  "utc_offset": 1,
  "interval": "string",
  "emails": [
    "string"
  ],
  "metrics": [
    "string"
  ],
  "dimensions": [
    "string"
  ],
  "isArchived": true
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
body|body|object|true|No description
» name|body|string|false|length 1-255
» range|body|string|false|length 1-255
» startDate|body|string(date)|false|No description
» endDate|body|string(date)|false|No description
» from|body|string(date)|false|No description
» to|body|string(date)|false|No description
» utc_offset|body|integer|false|No description
» interval|body|string|false|length 1-255
» isArchived|body|boolean|false|No description
» emails|body|[string]|false|No description
» metrics|body|[string]|false|No description
» dimensions|body|[string]|false|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## DELETE /scheduled-reports/{id}

> Code samples

```shell
# You can also use wget
curl -X delete //scheduled-reports/{id} \
  -H 'Accept: */*'

```

```http
DELETE //scheduled-reports/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//scheduled-reports/{id}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//scheduled-reports/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.delete '//scheduled-reports/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.delete('//scheduled-reports/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//scheduled-reports/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /billing-types

> Code samples

```shell
# You can also use wget
curl -X get //billing-types \
  -H 'Accept: */*'

```

```http
GET //billing-types HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//billing-types',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//billing-types',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//billing-types',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//billing-types', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//billing-types");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /billing-categories

> Code samples

```shell
# You can also use wget
curl -X get //billing-categories \
  -H 'Accept: */*'

```

```http
GET //billing-categories HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//billing-categories',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//billing-categories',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//billing-categories',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//billing-categories', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//billing-categories");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /ad-formats

> Code samples

```shell
# You can also use wget
curl -X get //ad-formats \
  -H 'Accept: */*'

```

```http
GET //ad-formats HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//ad-formats',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//ad-formats',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//ad-formats',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//ad-formats', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//ad-formats");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /fee-types

> Code samples

```shell
# You can also use wget
curl -X get //fee-types \
  -H 'Accept: */*'

```

```http
GET //fee-types HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//fee-types',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//fee-types',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//fee-types',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//fee-types', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//fee-types");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /pacings

> Code samples

```shell
# You can also use wget
curl -X get //pacings \
  -H 'Accept: */*'

```

```http
GET //pacings HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//pacings',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//pacings',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//pacings',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//pacings', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//pacings");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /optimisations

> Code samples

```shell
# You can also use wget
curl -X get //optimisations \
  -H 'Accept: */*'

```

```http
GET //optimisations HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//optimisations',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//optimisations',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//optimisations',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//optimisations', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//optimisations");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /placements

> Code samples

```shell
# You can also use wget
curl -X get //placements \
  -H 'Accept: */*'

```

```http
GET //placements HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//placements',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//placements',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//placements',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//placements', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//placements");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /content-types

> Code samples

```shell
# You can also use wget
curl -X get //content-types \
  -H 'Accept: */*'

```

```http
GET //content-types HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//content-types',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//content-types',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//content-types',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//content-types', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//content-types");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /content-subtypes

> Code samples

```shell
# You can also use wget
curl -X get //content-subtypes \
  -H 'Accept: */*'

```

```http
GET //content-subtypes HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//content-subtypes',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//content-subtypes',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//content-subtypes',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//content-subtypes', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//content-subtypes");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /categories

> Code samples

```shell
# You can also use wget
curl -X get //categories \
  -H 'Accept: */*'

```

```http
GET //categories HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//categories',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//categories',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//categories',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//categories', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//categories");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /ias-segments

> Code samples

```shell
# You can also use wget
curl -X get //ias-segments \
  -H 'Accept: */*'

```

```http
GET //ias-segments HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//ias-segments',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//ias-segments',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//ias-segments',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//ias-segments', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//ias-segments");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /ias-traq-options

> Code samples

```shell
# You can also use wget
curl -X get //ias-traq-options \
  -H 'Accept: */*'

```

```http
GET //ias-traq-options HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//ias-traq-options',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//ias-traq-options',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//ias-traq-options',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//ias-traq-options', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//ias-traq-options");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /ias-vtop-options

> Code samples

```shell
# You can also use wget
curl -X get //ias-vtop-options \
  -H 'Accept: */*'

```

```http
GET //ias-vtop-options HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//ias-vtop-options',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//ias-vtop-options',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//ias-vtop-options',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//ias-vtop-options', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//ias-vtop-options");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /countries

> Code samples

```shell
# You can also use wget
curl -X get //countries \
  -H 'Accept: */*'

```

```http
GET //countries HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//countries',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//countries',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//countries',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//countries', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//countries");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /countries/detected

> Code samples

```shell
# You can also use wget
curl -X get //countries/detected \
  -H 'Accept: */*'

```

```http
GET //countries/detected HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//countries/detected',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//countries/detected',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//countries/detected',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//countries/detected', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//countries/detected");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /countries/{id}/regions

> Code samples

```shell
# You can also use wget
curl -X get //countries/{id}/regions \
  -H 'Accept: */*'

```

```http
GET //countries/{id}/regions HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//countries/{id}/regions',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//countries/{id}/regions',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//countries/{id}/regions',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//countries/{id}/regions', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//countries/{id}/regions");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|string|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /regions/{countrySubdivisionId}/cities

> Code samples

```shell
# You can also use wget
curl -X get //regions/{countrySubdivisionId}/cities \
  -H 'Accept: */*'

```

```http
GET //regions/{countrySubdivisionId}/cities HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//regions/{countrySubdivisionId}/cities',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//regions/{countrySubdivisionId}/cities',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//regions/{countrySubdivisionId}/cities',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//regions/{countrySubdivisionId}/cities', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//regions/{countrySubdivisionId}/cities");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
countrySubdivisionId|path|string|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /regions

> Code samples

```shell
# You can also use wget
curl -X get //regions \
  -H 'Accept: */*'

```

```http
GET //regions HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//regions',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//regions',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//regions',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//regions', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//regions");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /cities

> Code samples

```shell
# You can also use wget
curl -X get //cities \
  -H 'Accept: */*'

```

```http
GET //cities HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//cities',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//cities',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//cities',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//cities', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//cities");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /languages

> Code samples

```shell
# You can also use wget
curl -X get //languages \
  -H 'Accept: */*'

```

```http
GET //languages HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//languages',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//languages',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//languages',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//languages', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//languages");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /timezones

> Code samples

```shell
# You can also use wget
curl -X get //timezones \
  -H 'Accept: */*'

```

```http
GET //timezones HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//timezones',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//timezones',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//timezones',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//timezones', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//timezones");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /device-types

> Code samples

```shell
# You can also use wget
curl -X get //device-types \
  -H 'Accept: */*'

```

```http
GET //device-types HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//device-types',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//device-types',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//device-types',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//device-types', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//device-types");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /device-makes

> Code samples

```shell
# You can also use wget
curl -X get //device-makes \
  -H 'Accept: */*'

```

```http
GET //device-makes HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//device-makes',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//device-makes',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//device-makes',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//device-makes', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//device-makes");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /device-makes/{makeId}/models

> Code samples

```shell
# You can also use wget
curl -X get //device-makes/{makeId}/models \
  -H 'Accept: */*'

```

```http
GET //device-makes/{makeId}/models HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//device-makes/{makeId}/models',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//device-makes/{makeId}/models',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//device-makes/{makeId}/models',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//device-makes/{makeId}/models', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//device-makes/{makeId}/models");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
makeId|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /device-models

> Code samples

```shell
# You can also use wget
curl -X get //device-models \
  -H 'Accept: */*'

```

```http
GET //device-models HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//device-models',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//device-models',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//device-models',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//device-models', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//device-models");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /devices/platforms

> Code samples

```shell
# You can also use wget
curl -X get //devices/platforms \
  -H 'Accept: */*'

```

```http
GET //devices/platforms HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//devices/platforms',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//devices/platforms',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//devices/platforms',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//devices/platforms', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//devices/platforms");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /browsers

> Code samples

```shell
# You can also use wget
curl -X get //browsers \
  -H 'Accept: */*'

```

```http
GET //browsers HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//browsers',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//browsers',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//browsers',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//browsers', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//browsers");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /conversion-tracker-aggregation-types

> Code samples

```shell
# You can also use wget
curl -X get //conversion-tracker-aggregation-types \
  -H 'Accept: */*'

```

```http
GET //conversion-tracker-aggregation-types HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//conversion-tracker-aggregation-types',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//conversion-tracker-aggregation-types',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//conversion-tracker-aggregation-types',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//conversion-tracker-aggregation-types', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//conversion-tracker-aggregation-types");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /conversion-tracker-attribution-types

> Code samples

```shell
# You can also use wget
curl -X get //conversion-tracker-attribution-types \
  -H 'Accept: */*'

```

```http
GET //conversion-tracker-attribution-types HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//conversion-tracker-attribution-types',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//conversion-tracker-attribution-types',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//conversion-tracker-attribution-types',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//conversion-tracker-attribution-types', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//conversion-tracker-attribution-types");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /conversion-tracker-implementation-types

> Code samples

```shell
# You can also use wget
curl -X get //conversion-tracker-implementation-types \
  -H 'Accept: */*'

```

```http
GET //conversion-tracker-implementation-types HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//conversion-tracker-implementation-types',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//conversion-tracker-implementation-types',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//conversion-tracker-implementation-types',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//conversion-tracker-implementation-types', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//conversion-tracker-implementation-types");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /conversion-tracker-tag-types

> Code samples

```shell
# You can also use wget
curl -X get //conversion-tracker-tag-types \
  -H 'Accept: */*'

```

```http
GET //conversion-tracker-tag-types HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//conversion-tracker-tag-types',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//conversion-tracker-tag-types',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//conversion-tracker-tag-types',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//conversion-tracker-tag-types', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//conversion-tracker-tag-types");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /conversion-tracker-types

> Code samples

```shell
# You can also use wget
curl -X get //conversion-tracker-types \
  -H 'Accept: */*'

```

```http
GET //conversion-tracker-types HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//conversion-tracker-types',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//conversion-tracker-types',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//conversion-tracker-types',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//conversion-tracker-types', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//conversion-tracker-types");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /custom-list-types

> Code samples

```shell
# You can also use wget
curl -X get //custom-list-types \
  -H 'Accept: */*'

```

```http
GET //custom-list-types HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//custom-list-types',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//custom-list-types',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//custom-list-types',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//custom-list-types', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//custom-list-types");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /banner-dimensions

> Code samples

```shell
# You can also use wget
curl -X get //banner-dimensions \
  -H 'Accept: */*'

```

```http
GET //banner-dimensions HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//banner-dimensions',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//banner-dimensions',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//banner-dimensions',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//banner-dimensions', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//banner-dimensions");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="success">
This operation does not require authentication
</aside>

## GET /sites-apps

> Code samples

```shell
# You can also use wget
curl -X get //sites-apps \
  -H 'Accept: */*'

```

```http
GET //sites-apps HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//sites-apps',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//sites-apps',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//sites-apps',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//sites-apps', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//sites-apps");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /context/categories

> Code samples

```shell
# You can also use wget
curl -X get //context/categories \
  -H 'Accept: */*'

```

```http
GET //context/categories HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//context/categories',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//context/categories',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//context/categories',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//context/categories', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//context/categories");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /context/categories/{id}/phrases

> Code samples

```shell
# You can also use wget
curl -X get //context/categories/{id}/phrases \
  -H 'Accept: */*'

```

```http
GET //context/categories/{id}/phrases HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//context/categories/{id}/phrases',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//context/categories/{id}/phrases',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//context/categories/{id}/phrases',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//context/categories/{id}/phrases', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//context/categories/{id}/phrases");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|string|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /report

> Code samples

```shell
# You can also use wget
curl -X get //report?range=string&interval=string&metrics=string&dimensions=string \
  -H 'Accept: */*'

```

```http
GET //report?range=string&interval=string&metrics=string&dimensions=string HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//report',
  method: 'get',
  data: '?range=string&interval=string&metrics=string&dimensions=string',
  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//report?range=string&interval=string&metrics=string&dimensions=string',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//report',
  params: {
  'range' => 'string',
'interval' => 'string',
'metrics' => 'string',
'dimensions' => 'string'
}, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//report', params={
  'range': 'string',  'interval': 'string',  'metrics': 'string',  'dimensions': 'string'
}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//report?range=string&interval=string&metrics=string&dimensions=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
range|query|string|true|No description
from|query|string|false|YYYY-MM-DD required if range is custom
to|query|string|false|YYYY-MM-DD required if range is custom
interval|query|string|true|No description
metrics|query|string|true|No description
dimensions|query|string|true|No description
filters|query|string|false|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /report/options/range

> Code samples

```shell
# You can also use wget
curl -X get //report/options/range \
  -H 'Accept: */*'

```

```http
GET //report/options/range HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//report/options/range',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//report/options/range',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//report/options/range',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//report/options/range', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//report/options/range");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /report/options/interval

> Code samples

```shell
# You can also use wget
curl -X get //report/options/interval \
  -H 'Accept: */*'

```

```http
GET //report/options/interval HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//report/options/interval',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//report/options/interval',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//report/options/interval',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//report/options/interval', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//report/options/interval");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /report/options/metrics

> Code samples

```shell
# You can also use wget
curl -X get //report/options/metrics \
  -H 'Accept: */*'

```

```http
GET //report/options/metrics HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//report/options/metrics',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//report/options/metrics',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//report/options/metrics',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//report/options/metrics', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//report/options/metrics");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /report/options/dimensions

> Code samples

```shell
# You can also use wget
curl -X get //report/options/dimensions \
  -H 'Accept: */*'

```

```http
GET //report/options/dimensions HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//report/options/dimensions',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//report/options/dimensions',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//report/options/dimensions',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//report/options/dimensions', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//report/options/dimensions");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /report/options/filters

> Code samples

```shell
# You can also use wget
curl -X get //report/options/filters \
  -H 'Accept: */*'

```

```http
GET //report/options/filters HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//report/options/filters',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//report/options/filters',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//report/options/filters',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//report/options/filters', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//report/options/filters");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /audience/data-providers

> Code samples

```shell
# You can also use wget
curl -X get //audience/data-providers \
  -H 'Accept: */*'

```

```http
GET //audience/data-providers HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//audience/data-providers',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//audience/data-providers',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//audience/data-providers',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//audience/data-providers', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//audience/data-providers");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /audience/data-providers/{id}

> Code samples

```shell
# You can also use wget
curl -X get //audience/data-providers/{id} \
  -H 'Accept: */*'

```

```http
GET //audience/data-providers/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//audience/data-providers/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//audience/data-providers/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//audience/data-providers/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//audience/data-providers/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//audience/data-providers/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /audience/data-providers/{id}/categories

> Code samples

```shell
# You can also use wget
curl -X get //audience/data-providers/{id}/categories \
  -H 'Accept: */*'

```

```http
GET //audience/data-providers/{id}/categories HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//audience/data-providers/{id}/categories',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//audience/data-providers/{id}/categories',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//audience/data-providers/{id}/categories',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//audience/data-providers/{id}/categories', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//audience/data-providers/{id}/categories");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /audience/data-providers/{id}/categories/{parentId}

> Code samples

```shell
# You can also use wget
curl -X get //audience/data-providers/{id}/categories/{parentId} \
  -H 'Accept: */*'

```

```http
GET //audience/data-providers/{id}/categories/{parentId} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//audience/data-providers/{id}/categories/{parentId}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//audience/data-providers/{id}/categories/{parentId}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//audience/data-providers/{id}/categories/{parentId}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//audience/data-providers/{id}/categories/{parentId}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//audience/data-providers/{id}/categories/{parentId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
parentId|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /audience/data-providers/categories

> Code samples

```shell
# You can also use wget
curl -X get //audience/data-providers/categories \
  -H 'Accept: */*'

```

```http
GET //audience/data-providers/categories HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//audience/data-providers/categories',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//audience/data-providers/categories',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//audience/data-providers/categories',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//audience/data-providers/categories', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//audience/data-providers/categories");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /audience/data-providers/categories/{parentId}

> Code samples

```shell
# You can also use wget
curl -X get //audience/data-providers/categories/{parentId} \
  -H 'Accept: */*'

```

```http
GET //audience/data-providers/categories/{parentId} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//audience/data-providers/categories/{parentId}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//audience/data-providers/categories/{parentId}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//audience/data-providers/categories/{parentId}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//audience/data-providers/categories/{parentId}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//audience/data-providers/categories/{parentId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
parentId|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /audience

> Code samples

```shell
# You can also use wget
curl -X get //audience \
  -H 'Accept: */*'

```

```http
GET //audience HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//audience',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//audience',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//audience',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//audience', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//audience");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## POST /audience

> Code samples

```shell
# You can also use wget
curl -X post //audience \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST //audience HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//audience',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "recency": 1,
  "segmentOperator": "AND",
  "audienceSegments": {
    "frequency": 1,
    "categoryOperator": "AND",
    "audienceSegmentCategories": {
      "category": 0
    }
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//audience',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '//audience',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('//audience', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//audience");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "recency": 1,
  "segmentOperator": "AND",
  "audienceSegments": {
    "frequency": 1,
    "categoryOperator": "AND",
    "audienceSegmentCategories": {
      "category": 0
    }
  }
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|No description
» name|body|string|false|length 1-500
» recency|body|number(float)|false|length 1-3
» segmentOperator|body|string|true|No description
» audienceSegments|body|object|true|No description
»» frequency|body|number(float)|false|length 1-3
»» categoryOperator|body|string|true|No description
»» audienceSegmentCategories|body|object|true|No description
»»» category|body|integer|true|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» segmentOperator|AND|
» segmentOperator|OR|
»» categoryOperator|AND|
»» categoryOperator|OR|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» id|integer|false|No description
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /audience/{id}

> Code samples

```shell
# You can also use wget
curl -X get //audience/{id} \
  -H 'Accept: */*'

```

```http
GET //audience/{id} HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//audience/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//audience/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//audience/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//audience/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//audience/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## PATCH /audience/{id}

> Code samples

```shell
# You can also use wget
curl -X patch //audience/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
PATCH //audience/{id} HTTP/1.1
Host: null
Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '//audience/{id}',
  method: 'patch',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "recency": 1,
  "segmentOperator": "AND",
  "audienceSegments": {
    "frequency": 1,
    "categoryOperator": "AND",
    "audienceSegmentCategories": {
      "category": 0
    }
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('//audience/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.patch '//audience/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.patch('//audience/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//audience/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Body parameter

```json
{
  "name": "string",
  "recency": 1,
  "segmentOperator": "AND",
  "audienceSegments": {
    "frequency": 1,
    "categoryOperator": "AND",
    "audienceSegmentCategories": {
      "category": 0
    }
  }
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|No description
body|body|object|true|No description
» name|body|string|false|length 1-500
» recency|body|number(float)|false|length 1-3
» segmentOperator|body|string|false|No description
» audienceSegments|body|object|false|No description
»» frequency|body|number(float)|false|length 1-3
»» categoryOperator|body|string|true|No description
»» audienceSegmentCategories|body|object|true|No description
»»» category|body|integer|true|No description


#### Enumerated Values

|Parameter|Value|
|---|---|
» segmentOperator|AND|
» segmentOperator|OR|
»» categoryOperator|AND|
»» categoryOperator|OR|

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline
400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Error|Inline
404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|error|None

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
status|string|false|No description



### Response Schema

Status Code **400**

Name|Type|Required|Description
---|---|---|---|---|
data|object|false|No description
» errors|[string]|false|No description
status|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## GET /audience/details

> Code samples

```shell
# You can also use wget
curl -X get //audience/details \
  -H 'Accept: */*'

```

```http
GET //audience/details HTTP/1.1
Host: null

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '//audience/details',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('//audience/details',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '//audience/details',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('//audience/details', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("//audience/details");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
meta|object|false|No description
» totalItems|string|false|No description
status|string|false|No description
data|[object]|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

# Schemas

## creative-type-1

<a name="schemacreative-type-1"></a>

```json
{
  "advertiser": 1,
  "name": "string",
  "type": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  },
  "impressionTrackers": {
    "value": "string",
    "type": 1
  },
  "categories": [
    "string"
  ],
  "isArchived": true,
  "titleAssets": [
    "Assets based on type"
  ],
  "dataAssets": {
    "1": [
      "Assets based on type"
    ],
    "2": [
      "Assets based on type"
    ],
    "11": [
      "Assets based on type"
    ],
    "12": [
      "Assets based on type"
    ]
  },
  "imgAssets": {
    "2": [
      "Assets based on type"
    ],
    "3": [
      "Assets based on type"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
advertiser|integer|true|No description
name|string|true|length 1-255
type|integer|true|No description
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description
impressionTrackers|object|false|No description
» value|string|true|length 1-2000
» type|integer|true|No description
isArchived|boolean|false|No description
dataAssets|object|false|No description
imgAssets|object|true|No description
categories|[string]|false|No description


#### Enumerated Values

|Property|Value|
|---|---|
» type|1|
» type|2|


## creative-type-1.dataAssets.1.1

<a name="schemacreative-type-1.dataassets.1.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-30
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-1.dataAssets.11.1

<a name="schemacreative-type-1.dataassets.11.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-30
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-1.dataAssets.12.1

<a name="schemacreative-type-1.dataassets.12.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-20
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-1.dataAssets.2.1

<a name="schemacreative-type-1.dataassets.2.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-60
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-1.dataAssets.2.2

<a name="schemacreative-type-1.dataassets.2.2"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-140
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-1.imgAssets.2.1

<a name="schemacreative-type-1.imgassets.2.1"></a>

```json
{
  "image": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
image|integer|true|minWidth 100 minHeight 100 ratio 1:1
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-1.imgAssets.3.1

<a name="schemacreative-type-1.imgassets.3.1"></a>

```json
{
  "image": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
image|integer|true|minWidth 600 minHeight 600 ratio 1:1
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-1.imgAssets.3.2

<a name="schemacreative-type-1.imgassets.3.2"></a>

```json
{
  "image": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
image|integer|true|minWidth 1020 minHeight 700
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-1.titleAsset.1

<a name="schemacreative-type-1.titleasset.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 10-25
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-1.titleAsset.2

<a name="schemacreative-type-1.titleasset.2"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 10-70
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-2

<a name="schemacreative-type-2"></a>

```json
{
  "advertiser": 1,
  "name": "string",
  "type": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  },
  "impressionTrackers": {
    "value": "string",
    "type": 1
  },
  "categories": [
    "string"
  ],
  "isArchived": true,
  "titleAssets": [
    "Assets based on type"
  ],
  "dataAssets": {
    "1": [
      "Assets based on type"
    ],
    "2": [
      "Assets based on type"
    ],
    "6": [
      "Assets based on type"
    ],
    "11": [
      "Assets based on type"
    ],
    "12": [
      "Assets based on type"
    ]
  },
  "imgAssets": {
    "2": [
      "Assets based on type"
    ],
    "3": [
      "Assets based on type"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
advertiser|integer|true|No description
name|string|true|length 1-255
type|integer|true|No description
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description
impressionTrackers|object|false|No description
» value|string|true|length 1-2000
» type|integer|true|No description
isArchived|boolean|false|No description
dataAssets|object|false|No description
imgAssets|object|true|No description
categories|[string]|false|No description


#### Enumerated Values

|Property|Value|
|---|---|
» type|1|
» type|2|


## creative-type-2.dataAssets.1.1

<a name="schemacreative-type-2.dataassets.1.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-30
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-2.dataAssets.11.1

<a name="schemacreative-type-2.dataassets.11.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-30
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-2.dataAssets.12.1

<a name="schemacreative-type-2.dataassets.12.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-20
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-2.dataAssets.2.1

<a name="schemacreative-type-2.dataassets.2.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-60
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-2.dataAssets.2.2

<a name="schemacreative-type-2.dataassets.2.2"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-140
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-2.dataAssets.6.1

<a name="schemacreative-type-2.dataassets.6.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-15
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-2.imgAssets.2.1

<a name="schemacreative-type-2.imgassets.2.1"></a>

```json
{
  "image": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
image|integer|true|minWidth 100 minHeight 100 ratio 1:1
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-2.imgAssets.3.1

<a name="schemacreative-type-2.imgassets.3.1"></a>

```json
{
  "image": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
image|integer|true|minWidth 600 minHeight 600 ratio 1:1
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-2.imgAssets.3.2

<a name="schemacreative-type-2.imgassets.3.2"></a>

```json
{
  "image": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
image|integer|true|minWidth 1020 minHeight 700
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-2.titleAsset.1

<a name="schemacreative-type-2.titleasset.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 10-25
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-2.titleAsset.2

<a name="schemacreative-type-2.titleasset.2"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 10-70
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-3

<a name="schemacreative-type-3"></a>

```json
{
  "advertiser": 1,
  "name": "string",
  "type": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  },
  "impressionTrackers": {
    "value": "string",
    "type": 1
  },
  "categories": [
    "string"
  ],
  "isArchived": true,
  "titleAssets": [
    "Assets based on type"
  ],
  "dataAssets": {
    "1": [
      "Assets based on type"
    ],
    "2": [
      "Assets based on type"
    ],
    "11": [
      "Assets based on type"
    ],
    "12": [
      "Assets based on type"
    ]
  },
  "imgAssets": {
    "2": [
      "Assets based on type"
    ],
    "3": [
      "Assets based on type"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
advertiser|integer|true|No description
name|string|true|length 1-255
type|integer|true|No description
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description
impressionTrackers|object|false|No description
» value|string|true|length 1-2000
» type|integer|true|No description
isArchived|boolean|false|No description
dataAssets|object|false|No description
imgAssets|object|true|No description
categories|[string]|false|No description


#### Enumerated Values

|Property|Value|
|---|---|
» type|1|
» type|2|


## creative-type-3.dataAssets.1.1

<a name="schemacreative-type-3.dataassets.1.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-30
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-3.dataAssets.11.1

<a name="schemacreative-type-3.dataassets.11.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-30
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-3.dataAssets.12.1

<a name="schemacreative-type-3.dataassets.12.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-20
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-3.dataAssets.2.1

<a name="schemacreative-type-3.dataassets.2.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-60
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-3.dataAssets.2.2

<a name="schemacreative-type-3.dataassets.2.2"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-140
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-3.imgAssets.2.1

<a name="schemacreative-type-3.imgassets.2.1"></a>

```json
{
  "image": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
image|integer|true|minWidth 100 minHeight 100 ratio 1:1
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-3.imgAssets.3.1

<a name="schemacreative-type-3.imgassets.3.1"></a>

```json
{
  "image": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
image|integer|true|minWidth 600 minHeight 600 ratio 1:1
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-3.imgAssets.3.2

<a name="schemacreative-type-3.imgassets.3.2"></a>

```json
{
  "image": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
image|integer|true|minWidth 1020 minHeight 700
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-3.titleAsset.1

<a name="schemacreative-type-3.titleasset.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 10-25
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-3.titleAsset.2

<a name="schemacreative-type-3.titleasset.2"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 10-70
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-4

<a name="schemacreative-type-4"></a>

```json
{
  "advertiser": 1,
  "name": "string",
  "type": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  },
  "impressionTrackers": {
    "value": "string",
    "type": 1
  },
  "categories": [
    "string"
  ],
  "isArchived": true,
  "titleAssets": [
    "Assets based on type"
  ],
  "dataAssets": {
    "1": [
      "Assets based on type"
    ],
    "2": [
      "Assets based on type"
    ],
    "3": [
      "Assets based on type"
    ],
    "6": [
      "Assets based on type"
    ],
    "11": [
      "Assets based on type"
    ],
    "12": [
      "Assets based on type"
    ]
  },
  "imgAssets": {
    "2": [
      "Assets based on type"
    ],
    "3": [
      "Assets based on type"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
advertiser|integer|true|No description
name|string|true|length 1-255
type|integer|true|No description
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description
impressionTrackers|object|false|No description
» value|string|true|length 1-2000
» type|integer|true|No description
isArchived|boolean|false|No description
dataAssets|object|false|No description
imgAssets|object|true|No description
categories|[string]|false|No description


#### Enumerated Values

|Property|Value|
|---|---|
» type|1|
» type|2|


## creative-type-4.dataAssets.1.1

<a name="schemacreative-type-4.dataassets.1.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-30
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-4.dataAssets.11.1

<a name="schemacreative-type-4.dataassets.11.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-30
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-4.dataAssets.12.1

<a name="schemacreative-type-4.dataassets.12.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-20
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-4.dataAssets.2.1

<a name="schemacreative-type-4.dataassets.2.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-60
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-4.dataAssets.2.2

<a name="schemacreative-type-4.dataassets.2.2"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-140
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-4.dataAssets.3.1

<a name="schemacreative-type-4.dataassets.3.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-5
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-4.dataAssets.6.1

<a name="schemacreative-type-4.dataassets.6.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 0-15
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-4.imgAssets.2.1

<a name="schemacreative-type-4.imgassets.2.1"></a>

```json
{
  "image": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
image|integer|true|minWidth 100 minHeight 100 ratio 1:1
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-4.imgAssets.3.1

<a name="schemacreative-type-4.imgassets.3.1"></a>

```json
{
  "image": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
image|integer|true|minWidth 600 minHeight 600 ratio 1:1
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-4.imgAssets.3.2

<a name="schemacreative-type-4.imgassets.3.2"></a>

```json
{
  "image": 1,
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
image|integer|true|minWidth 1020 minHeight 700
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-4.titleAsset.1

<a name="schemacreative-type-4.titleasset.1"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 10-25
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description



## creative-type-4.titleAsset.2

<a name="schemacreative-type-4.titleasset.2"></a>

```json
{
  "value": "string",
  "link": {
    "url": "string",
    "fallbackUrl": "string",
    "clickTrackers": [
      "string"
    ]
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
value|string|true|length 10-70
link|object|false|No description
» url|string|true|length 1-2000
» fallbackUrl|string|false|length 1-2000
» clickTrackers|[string]|false|No description





