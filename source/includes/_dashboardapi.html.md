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

### Endpoints

| Verb | Route | Use | ApiKey |
|------|-------|--------|------|
| POST | /users | Create a new user | |
| POST | /users/login | Log in to a user account | |
| POST | /users/reset-password | Request a passwword reset | |
| POST | /users/confirm-password | Confirm a password reset | |
| GET | /users | Retrieve a list of users | X |
| GET | /users/{id:[UUID]+} | Retrieve a specific user | X |
| GET | /users/{id:[UUID]+}/companies | Retrieve companies associated to a specific user | X |
| GET | /users/{id:[UUID]+}/advertisers | Retrieve advertisers associated to a specific user | X |
| GET | /users/{id:[UUID]+}/agencies | Retrieve agencies associated to a specific user | X |
| GET | /users/{id:[UUID]+}/role | Retrieve the role of a specific user | X |
| GET | /users/current | Retrieve the user associated to the API key | X |
| GET | /users/roles | Retrieve the roles of the user associated to the API key | X |
| GET | /users/details | Retrieve the details of the User API object | |
| POST | /users/switch-company | Change the company that the API key defaults to | X |
| PATCH | /users/{id:[0-9]+} | Update a user | X |
| GET | /companies | Retrieve a list of companies | X |
| GET | /companies/{id:[0-9]+}/users | Retrieve a specific company | X |
| POST | /companies/{id:[0-9]+}/users | Associate users with a company | X |
| PATCH | /companies/{id:[0-9]+}/users | Update associated users | X |
| GET | /orders | Retrieve a list of Orders | X |
| GET | /orders/{id:[0-9]+} | Retrieve a specific order | X |
| GET | /orders/details | Retrieve the details of the Order API object | |
| POST | /orders | Create a new order | X |
| POST | /orders/{id:[0-9]+}/clone | Clone an existing order | X |
| PATCH | /orders/{id:[0-9]+} | Update an existing order | X |
| DELETE | /orders/{id:[0-9]+} | Delete an existing order | X |
| GET | /line-items | Retrieve a list of line items | X |
| GET | /orders/{id:[0-9]+}/line-items | Retrieve line-items belonging to a specific order | X |
| GET | /line-items/{id:[0-9]+} | Retrieve a specific line-item | X |
| GET | /line-items/details | Retrieve the details of the Line Item API object | |
| POST | /line-items | Create a new line-item | X |
| POST | /line-items/{id:[0-9]+}/clone | Clone an existing line item | X |
| PATCH | /line-items/{id:[0-9]+} | Update an exiting line item | X |
| DELETE | /line-items/{id:[0-9]+} | Delete an existing line item | X |
| GET | /orders/{id:[0-9]+}/conversion-trackers | Retrieve a list of conversion trackers available for an order  | X |
| GET | /conversion-trackers | Retrieve a list of conversion trackers | X |
| POST | /conversion-trackers | Create a new conversion tracker | X |
| GET | /conversion-trackers/{id:[0-9]+} | Retrieve a specific conversion tracker | X |
| PATCH | /conversion-trackers/{id:[0-9]+} | Update an existing conversion tracker | X |
| GET | /conversion-trackers/details | Retrieve the details of the Conversion Tracker API object | |
| DELETE | /conversion-trackers/{id:[0-9]+} | Delete an existing conversion tracker | X |
| GET | /creatives | Retrieve a list of creatives | X |
| GET | /creatives/{id:[0-9]+} | Retrieve a specific creative | X |
| GET | /orders/{id:[0-9]+}/line-items/{id:[0-9]+}/creatives | Retrieve creatives associated with a specific line item | X |
| GET | /creatives/details/{id:[0-9]+} | Retrieve the details of a specific creative type | |
| POST | /creatives | Create a new creative | X |
| POST | /creatives/{id:[0-9]+}/clone | Clone an existing creative | X |
| PATCH | /creatives/{id:[0-9]+} | Update an existing creative | X |
| DELETE | /creatives/{id:[0-9]+} | Delete an existing creative | X |
| GET | /images | Retieve a list of previously uploaded images | X |
| GET | /images/{id:[0-9]+} | Retrieve a specific image | X |
| GET | /images/details | Retrieve the details of the Image API object | |
| POST | /images | Upload a new image | X |
| PATCH | /images/{id:[0-9]+} | Update an existing image | X |
| DELETE | /images/{id:[0-9]+} | Delete an existing image | X |
| GET | /advertisers | Retrieve a list of advertisers | X |
| GET | /advertisers/{id:[0-9]+} | Retrieve a specific advertiser | X |
| GET | /advertisers/{id:[0-9]+}/users | Retrieve users associated with a spcific advertiser | X |
| GET | /advertisers/details | Retrieve the details of the Advertiser API object | |
| POST | /advertisers | Create a new advertiser | X |
| PATCH | /advertisers/{id:[0-9]+} | Update an existing advertiser | X |
| DELETE | /advertisers/{id:[0-9]+} | Delete an existing advertiser | X |
| GET | /agencies | Retrieve a list of agencies | X |
| GET | /agencies/{id:[0-9]+} | Retrieve a specific agency | X |
| GET | /agencies/{id:[0-9]+}/users | Retrieve users associated to a specific agency | X |
| GET | /agencies/details | Retrieve the details of the Agency API object | |
| POST | /agencies | Add a new agency | X |
| PATCH | /agencies/{id:[0-9]+} | Update an existing agency | X |
| GET | /ssps | Retrieve a list of SSPs | X |
| GET | /ssps/{id:[0-9]+} | Retrieve a specific SSP | X |
| GET | /ssps/details | Retrieve the details of the SSP API object | |
| GET | /custom-lists | Retrieve custom site/app lists | X |
| GET | /custom-lists/{id:[0-9]+} | Retrieve a specific custom site/app list | X |
| GET | /custom-lists/details | Retrieve the details of the Custom List API object | |
| POST | /custom-lists | Add a new custom site/app list | X |
| PATCH | /custom-lists/{id:[0-9]+} | Update an existing custom site/app list | X |
| DELETE | /custom-lists/{id:[0-9]+} | Delete an existing custom site/app list | X |
| GET | /custom-lists/{id:[0-9]+}/items | Retrieve the items of a specific custom site/app list | |
| POST | /custom-lists/{id:[0-9]+}/items | Add a new items to a custom site/app list | X |
| PATCH | /custom-lists/{id:[0-9]+}/items | Update the items of an existing custom site/app list | X |
| POST | /custom-lists/{id:[0-9]+}/items/upload | Upload items for an existing custom site/app list | X |
| PATCH | /custom-lists/{id:[0-9]+}/items/upload | Upload and overwrite items for an existing custom site/app list | X |
| GET | /custom-lists/{id:[0-9]+}/items/{id:[0-9]+} | Retrieve a specific item of an existing custom site/app list  | |
| PATCH | /custom-lists/{id:[0-9]+}/items/{id:[0-9]+} | Update a specific item of an existing custom site/app list | X |
| GET | /sites-apps | Retrieve Sites & Apps based on search criteria | X |
| GET | /roles | Retrieve role data | X |
| GET | /billing-types | Retrieve billing types data | |
| GET | /billing-categories | Retrieve billing category data | |
| GET | /ad-formats | Retrieve ad format data | |
| GET | /fee-types | Retrieve fee type data | |
| GET | /pacings | Retrieve pacing data | |
| GET | /placements | Retrieve placement data | |
| GET | /content-types | Retrieve content type data | |
| GET | /content-subtype | Retrieve content sub-type data | |
| GET | /countries | Retrieve country data | |
| GET | /countries/{id:[A-Z]{3}}/regions | Retrieve regions for a spcific country | |
| GET | /regions/{id:[A-Z]{2}-[A-Z]{0,3}}/cities | Retrieve cities for a specific region | |
| GET | /regions | Retrieve regions based on search criteria | X |
| GET | /cities | Retrieve cities based on search criteria | X |
| GET | /languages | Retrieve language data | X |
| GET | /timezones | Retrieve timezone data | X |
| GET | /device-types | Retrieve device type data | X |
| GET | /device-makes | Retrieve device make data | |
| GET | /device-makes/{id:[0-9]+}/models | Retrieve device model data for a specific device make | |
| GET | /device/platforms | Retrieve device platform (OS) data | |
| GET | /conversion-tracker-aggregation-types | Retrieve conversion tracker aggregation type data | |
| GET | /conversion-tracker-attribution-types | Retrieve conversion tracker attribution type data | |
| GET | /conversion-tracker-implementation-types | Retrieve conversion tracker implementation type data | |
| GET | /conversion-tracker-tag-types | Retrieve conversion tracker tag type data | |
| GET | /conversion-tracker-types | Retrieve conversion tracker type data | |

### Api Key

The Powerlinks Dashboard API allows, and in some cases requires, requests to include an access token to authorize elevated client privileges. Pass the access token via the `ApiKey` HTTP header.

    curl -H "ApiKey:j878g39yx378pa77djthzzpn" https://example.com/users

Acquire an access token using the API `/users/login`.

    curl -XPOST https://example.com/users/login -H 'Content-Type: application/json' -d '{"email":"YOUR EMAIL","password":"YOUR PASSWORD"}'
    
    HTTP/1.1 200 OK
    Content-Type: application/json;charset=utf-8
    Content-Length: 119
    
    {"status":"success","data":{"apiKey":"gJmil12lO5WgPDrCJlCJ23BPpJA7vep4Qr1zf89l5gY5z\/TGb2PA5muYF6Yrg5IPiuuu6fYw_Mo","expires": 1474098726}}

If elevated client privilege is required but missing, the API returns an authorization challenge in the response.

    HTTP/1.1 401 Unauthorized
    Content-Type: application/json;charset=utf-8
    Content-Length: 42
    
    {"status":"fail","message":"Unauthorized"}

### Resource Details

All top level resources include a `GET /{resource name}/details` endpoint that can be accessed without an API Key. These endpoints return in-depth attribute details about the resource including the attribute type, whether it's required, 
ranges of values accepted and whether the resourse can be filtered on or sorted by the attribute. Responses to these requests have been included below.

## Users

### Details 

`GET /users/details`

> Response 

```
{
	"email": {
		"type": "email",
		"required": "true",
		"sortable": "true",
		"filterable": "true",
		"length": [3, 255]
	},
	"password": {
		"type": "string",
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"length": [6, 32]
	},
	"address1": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"address2": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"city": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"country": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"postalCode": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"phoneNumber": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"role": {
		"type": "int",
		"required": "true",
		"sortable": "false",
		"filterable": "false"
	},
	"advertisers": {
		"type": "array",
		"required": "false",
		"sortable": "false",
		"filterable": "false",
		"items": {
			"type": "int",
			"positive": "true"
		}
	},
	"agencies": {
		"type": "array",
		"required": "false",
		"sortable": "false",
		"filterable": "false",
		"items": {
			"type": "int",
			"positive": "true"
		}
	}
}
```
<DIV></DIV>
### Login

`POST /users/login`

> Parameters

```
{
	"email": {
		"type": "string",
		"required": "true",
		"length": [3, 255]
	},
	"password": {
		"type": "string",
		"required": "true",
		"length": [6, 32]
	},
	"company": {
		"type": "string",
		"required": "false",
		"length": [36, 36]
	}
}
```
<DIV></DIV>
### Reset Password

`POST /users/reset-password`

> Parameters

```
{
	"email": {
		"type": "string",
		"required": "true",
		"length": [3, 255]
	}
}
```
<DIV></DIV>
### Confirm Password Reset

`POST /users/confirm-password`

> Parameters

```
{
	"token": {
		"type": "string",
		"required": "true"
	}
}
```
<DIV></DIV>
### Add a User

`POST /users`

> Example Request

```
{
        "email": "user@powerlinks.com",
        "password": "password",
        "firstName": "First Name",
        "lastName": "Last Name",
        "address1": "address 1",
        "address2": "address 2",
        "city": "city",
        "country": "country",
        "postalCode": "42602",
        "phoneNumber": "123456",
        "role": 4,
        "advertisers": [1],
        "agencies": [1]
}
```

## Advertisers

### Details

`GET /advertisers/details`

> Response

```json
{
 	"name": {
 		"type": "string",
 		"required": "true",
 		"length": [1, 255]
 	},
	"address1": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"address2": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"city": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"country": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"postalCode": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"phoneNumber": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
 	"domain": {
 		"type": "string",
 		"required": "true",
 		"length": [1, 255]
 	},
	"billingType": {
		"type": "int",
		"required": "false",
		"in": [
			[1, 2, 3, 4]
		]
	},
	"feeType": {
		"type": "int",
		"required": "false",
		"in": [
			[1, 2, 3, 4]
		]
	},
	"feeAmount": {
		"type": "float",
		"required": "false",
		"positive": "true"
	},
	"users": {
		"type": "array",
		"required": "false",
		"sortable": "false",
		"filterable": "false",
		"items": {
			"type": "string",
			"length": [36, 36]
		}
	},
	"isArchived": {
		"type": "bool",
		"required": "false"
	}
}
```
<DIV></DIV>

### Add an Advertiser

`POST /advertisers`

> Example Request

```json
{
	"name": "Example Advertiser",
	"address1": "address 1",
	"address2": "address 2",
	"city": "city",
	"country": "country",
	"postalCode": "42602",
	"phoneNumber": "123456",
	"domain": "example.com",
	"billingType": 1,
	"feeType": 1,
	"feeAmount": 0.15,
	"users": ["1276329a-9483-11e6-ff22-56b6b6499611"],
	"isArchived": false
}
```

## Agencies

### Details

`GET /agencies/details`

> Response

```json
{
 	"name": {
 		"type": "string",
 		"required": "true",
 		"length": [1, 255]
 	},
	"address1": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"address2": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"city": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"country": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"postalCode": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"phoneNumber": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
 	"domain": {
 		"type": "string",
 		"required": "true",
 		"length": [1, 255]
 	},
 	"advertisers": {
 		"type": "array",
 		"required": "false",
 		"items": {
 	        	"type": "int",
 	        	"positive": "true"
 		}
 	},
	"users": {
		"type": "array",
		"required": "false",
		"sortable": "false",
		"filterable": "false",
		"items": {
			"type": "string",
			"length": [36, 36]
		}
	},
	"isArchived": {
		"type": "bool",
		"required": "false"
	}
}
```
<DIV></DIV>

### Add an Agency

`POST /agencies`

> Example Request

```json
{
	"name": "Example Agency",
	"address1": "address 1",
	"address2": "address 2",
	"city": "city",
	"country": "country",
	"postalCode": "42602",
	"phoneNumber": "123456",
	"domain": "example.com",
	"advertisers": [1],
	"users": ["1276329a-9483-11e6-ff22-56b6b6499611"],
	"isArchived": false
}
```


## Orders

### Details

`GET /orders/details`

> Response

```json
{
	"name": {
		"type": "string",
		"required": "true",
		"length": [1, 255]
	},
	"internalId": {
		"type": "string",
		"required": "false",
		"length": [1, 255]
	},
	"advertiser": {
		"type": "int",
		"required": "true",
		"positive": "true"
	},
	"startDate": {
		"type": "date",
		"required": "true",
		"format": "Y-m-d"
	},
	"endDate": {
		"type": "date",
		"required": "false",
		"format": "Y-m-d"
	},
	"budget": {
		"type": "float",
		"required": "true",
		"positive": "true"
	},
	"impressionCap": {
		"type": "int",
		"required": "false",
		"positive": "true"
	},
	"dailyBudget": {
		"type": "float",
		"required": "false",
		"positive": "true"
	},
	"dailyImpressionCap": {
		"type": "int",
		"required": "false",
		"positive": "true"
	},
	"billingType": {
		"type": "int",
		"required": "false",
		"in": [
			[1, 2, 3, 4]
		]
	},
	"billingCategory": {
		"type": "int",
		"required": "false",
		"in": [
			[1, 2]
		]
	},
	"feeType": {
		"type": "int",
		"required": "false",
		"in": [
			[1, 2, 3, 4]
		]
	},
	"feeAmount": {
		"type": "float",
		"required": "false",
		"positive": "true"
	},
	"pacing": {
		"type": "int",
		"required": "false",
		"in": [
			[1, 2]
		]
	},
	"conversionTrackers": {
		"type": "array",
		"required": "false",
		"items": {
			"type": "int",
			"positive": "true"
		}
	},
	"isActive": {
		"type": "bool",
		"required": "true"
	},
	"isArchived": {
		"type": "bool",
		"required": "false"
	}
}
```
<DIV></DIV>

### Add an Order

`POST /orders`

> Example Request

```
{
	"name": "Example Campaign",
	"internalId": "f7254bda-d018-4733-8c02-03c9787483cb",
	"advertiser": 1,
	"startDate": "2016-07-29",
	"endDate": "2016-08-29",
	"budget": 10.00,
	"dailyBudget": 1.00,
	"impressionCap": 100,
	"dailyImpressionCap": 100,
	"pacing": 1,
	"billingType": 1,
	"billingCategory": 1,
	"feeType": 1,
	"feeAmount": 0.15,
	"conversionTrackers": [1, 2],
	"isActive": true,
	"isArchived": false
}
```

## Line Items

### Details

`GET /line-items/details`

> Response

```json
{
            "order": {
                    "type": "int",
                    "required": "true",
                    "positive": "true"
            },
            "internalId": {
                    "type": "string",
                    "required": "false",
                    "length": [1, 32]
            },
            "name": {
                    "type": "string",
                    "required": "true",
                    "length": [1, 255]
            },
            "budget": {
                    "type": "float",
                    "required": "true",
                    "positive": "true"
            },
            "dailyBudget": {
                    "type": "float",
                    "required": "false",
                    "positive": "true"
            },
            "impressionCap": {
                    "type": "int",
                    "required": "false",
                    "positive": "true"
            },
            "pacing": {
                    "type": "int",
                    "required": "false",
                    "in": [
                            [1, 2]
                    ]
            },
            "frequencyCap": {
                    "type": "array",
                    "required": "false",
                    "itemFields": {
                            "duration": {
                                    "type": "int",
                                    "required": "true",
                                    "positive": "true"
                            },
                            "imps": {
                                    "type": "int",
                                    "required": "true",
                                    "positive": "true"
                            }
                    }
            },
            "defaultBid": {
                    "type": "float",
                    "required": "true",
                    "positive": "true"
            },
            "maxBid": {
                    "type": "float",
                    "required": "false",
                    "positive": "true"
            },
            "cpcBid": {
                    "type": "float",
                    "required": "false",
                    "positive": "true"
            },
            "optimisation": {
                    "type": "int",
                    "required": "false",
                    "in": [
                            [1, 2, 3, 4, 5, 6, 7, 8, 9]
                    ]
            },
            "startDate": {
                    "type": "date",
                    "required": "true",
                    "format": "Y-m-d"
            },
            "endDate": {
                    "type": "date",
                    "required": "false",
                    "format": "Y-m-d"
            },
            "isActive": {
                    "type": "bool",
                    "required": "true"
            },
            "targeting": {
                    "required": "false",
                    "fields": {
                            "1": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Ad Unit IDs for targeting",
                                                    "items": {
                                                            "type": "int",
                                                            "in": [
                                                                    [1, 2, 3, 4, 5, 6, 7]
                                                            ]
                                                    }
                                            }
                                    }
                            },
                            "2": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "IAB categories from OpenRTB",
                                                    "items": {
                                                            "type": "string",
                                                            "length": [3, 5]
                                                    }
                                            }
                                    }
                            },
                            "3": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Keyword Groups from PowerLinks Personal Relevance",
                                                    "items": []
                                            }
                                    }
                            },
                            "4": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Points of Interest from PowerLinks Personal Relevance",
                                                    "items": []
                                            }
                                    }
                            },
                            "5": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "ISO 3166-1 alpha-3",
                                                    "items": {
                                                            "type": "string",
                                                            "length": [3, 3]
                                                    }
                                            }
                                    }
                            },
                            "6": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "IDs based on Digital Element database which is based on Geonames",
                                                    "items": {
                                                            "type": "int"
                                                    }
                                            }
                                    }
                            },
                            "7": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Region in format <country_code>\/<region_code> where country_code is ISO 3166-1 alpha-3 and regions are based on ISO_3166-2",
                                                    "items": {
                                                            "type": "string",
                                                            "length": [6, 6]
                                                    }
                                            }
                                    }
                            },
                            "8": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Based on Google's metro codes, which are similar to Nielsen DMAs",
                                                    "items": {
                                                            "type": "string"
                                                    }
                                            }
                                    }
                            },
                            "9": {
                                    "required": "false",
                                    "fields": {
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "ZIP",
                                                    "items": {
                                                            "type": "string",
                                                            "length": [5]
                                                    }
                                            }
                                    }
                            },
                            "10": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "IP address list",
                                                    "items": {
                                                            "type": "string",
                                                            "ip": "true"
                                                    }
                                            }
                                    }
                            },
                            "11": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["ER", "IR"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "IP address range list",
                                                    "items": {
                                                            "type": "array"
                                                    }
                                            }
                                    }
                            },
                            "12": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Domain lists",
                                                    "items": {
                                                            "type": "int",
                                                            "positive": "true"
                                                    }
                                            }
                                    }
                            },
                            "13": {
                                    "required": "false",
                                    "fields": {
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Deal ID in the format <inventory_source>\/<deal_id> forexample if the deal_id is foo_bar and it is from inventory_source adx, the deal_id is adx\/foo_bar",
                                                    "items": {
                                                            "type": "string",
                                                            "length": [1, 255]
                                                    }
                                            }
                                    }
                            },
                            "14": {
                                    "required": "false",
                                    "fields": {
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "0 = web, 1 = in-app",
                                                    "items": {
                                                            "type": "int",
                                                            "in": [
                                                                    [0, 1]
                                                            ]
                                                    }
                                            }
                                    }
                            },
                            "15": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "List of SSPs",
                                                    "items": {
                                                            "type": "int",
                                                            "positive": "true"
                                                    }
                                            }
                                    }
                            },
                            "16": {
                                    "required": "false",
                                    "fields": {
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Site names in form <inventory_source>\/<site_id>",
                                                    "items": {
                                                            "type": "string"
                                                    }
                                            }
                                    }
                            },
                            "17": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "AppBundle lists",
                                                    "items": {
                                                            "type": "int",
                                                            "positive": "true"
                                                    }
                                            }
                                    }
                            },
                            "18": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "AppID lists",
                                                    "items": {
                                                            "type": "int",
                                                            "positive": "true"
                                                    }
                                            }
                                    }
                            },
                            "19": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "IAS viewability",
                                                    "items": []
                                            }
                                    }
                            },
                            "20": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Device type id as described in OpenRTB section 6.16",
                                                    "items": {
                                                            "type": "int",
                                                            "in": [
                                                                    [1, 2, 3, 4, 5, 6, 7]
                                                            ]
                                                    }
                                            }
                                    }
                            },
                            "21": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Device make",
                                                    "items": {
                                                            "type": "string",
                                                            "length": [1, 255]
                                                    }
                                            }
                                    }
                            },
                            "22": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Device model as a string, including version number, note OpenRTB keeps the model and the version as separate fields",
                                                    "items": {
                                                            "type": "string",
                                                            "length": [1, 255]
                                                    }
                                            }
                                    }
                            },
                            "23": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Specific OS such as Windows",
                                                    "items": {
                                                            "type": "string",
                                                            "length": [1, 255]
                                                    }
                                            }
                                    }
                            },
                            "24": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Specific OS version such as Windows 7 in the format <OS>\/<Version>",
                                                    "items": {
                                                            "type": "string",
                                                            "length": [1, 255]
                                                    }
                                            }
                                    }
                            },
                            "25": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Browser name",
                                                    "items": {
                                                            "type": "string",
                                                            "length": [1, 255]
                                                    }
                                            }
                                    }
                            },
                            "26": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "List of mobile carriers by name",
                                                    "items": {
                                                            "type": "string",
                                                            "length": [1, 255]
                                                    }
                                            }
                                    }
                            },
                            "27": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Browser Language",
                                                    "items": {
                                                            "type": "string",
                                                            "length": [1, 255]
                                                    }
                                            }
                                    }
                            },
                            "28": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Connection Type",
                                                    "items": []
                                            }
                                    }
                            },
                            "29": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["E", "I"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Segment keys",
                                                    "items": {
                                                            "type": "string",
                                                            "length": [1, 255]
                                                    }
                                            }
                                    }
                            },
                            "30": {
                                    "required": "false",
                                    "fields": {
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "User ID",
                                                    "items": []
                                            }
                                    }
                            },
                            "31": {
                                    "required": "false",
                                    "fields": {
                                            "verb": {
                                                    "type": "string",
                                                    "required": "true",
                                                    "in": [
                                                            ["ER", "IR"]
                                                    ]
                                            },
                                            "values": {
                                                    "type": "array",
                                                    "required": "true",
                                                    "notes": "Count in minutes from Sunday at midnight (0) to Saturday at 11:59 (10079) in range format [<start>,<end>], Calculation is against EST",
                                                    "items": {
                                                            "type": "array"
                                                    }
                                            }
                                    }
                            }
                    }
            },
            "creatives": {
                    "type": "array",
                    "required": "false",
                    "items": {
                            "type": "int",
                            "positive": "true"
                    }
            },
            "isArchived": {
                    "type": "bool",
                    "required": "false"
            }
}
```
<DIV></DIV>

### Add a Line Item

`POST /line-items`

> Example Request

```json
{
	"order": 1,
	"internalId": "e7254bda-d018-4733-8c02-03c9787483cb",
	"name": "Example Line Item",
	"budget": 10.00,
	"dailyBudget": 1.00,
	"impressionCap": 100,
	"pacing": 1,
	"frequencyCaps": [{
		"imps": 2,
		"duration": 3600
	}, {
		"imps": 5,
		"duration": 86400
	}],
	"defaultBid": 0.5,
	"maxBid": 0.5,
	"cpcBid": 0.5,
	"optimisation": 1,
	"startDate": "2016-07-29",
	"targeting": {
		"1": {
			"verb": "E",
			"values": [1, 2, 3]
		},
		"2": {
			"verb": "I",
			"values": ["IAB1", "IAB1-1"],
			"operator": "AND"
		}
	},
	"creatives": [1, 2],
	"isActive": true,
	"isArchived": false
}
```

## Creatives

### Details (Sponsored Content)

`GET /creatives/details/1`

> Response

```json
{
	"advertiser": {
		"type": "int",
		"required": "true",
		"positive": "true"
	},
	"name": {
		"type": "string",
		"required": "true",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"type": {
		"type": "int",
		"required": "true",
		"sortable": "true",
		"filterable": "true",
		"positive": "true"
	},
	"link": {
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"fields": {
			"url": {
				"type": "string",
				"required": "true",
				"sortable": "false",
				"filterable": "false",
				"length": [1, 2000]
			},
			"fallbackUrl": {
				"type": "string",
				"required": "false",
				"sortable": "false",
				"filterable": "false",
				"length": [1, 2000]
			},
			"clickTrackers": {
				"type": "array",
				"required": "false",
				"sortable": "false",
				"filterable": "false",
				"items": {
					"type": "string",
					"length": [1, 2000]
				}
			}
		}
	},
	"impressionTrackers": {
		"type": "array",
		"required": "false",
		"sortable": "false",
		"filterable": "false",
		"itemFields": {
			"value": {
				"type": "string",
				"required": "true",
				"sortable": "false",
				"filterable": "false",
				"length": [1, 2000]
			},
			"type": {
				"type": "int",
				"required": "true",
				"sortable": "false",
				"filterable": "false",
				"in": [
					[1, 2]
				],
				"notes": "1 - image, 2 - JS"
			}
		}
	},
	"isArchived": {
		"type": "bool",
		"required": "false",
		"sortable": "false",
		"filterable": "false"
	},
	"titleAssets": {
		"type": "array",
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"maxLength": 2,
		"fieldSet": [{
			"required": "true",
			"fields": {
				"value": {
					"type": "string",
					"required": "true",
					"sortable": "false",
					"filterable": "false",
					"length": [10, 25]
				},
				"link": {
					"required": "false",
					"sortable": "false",
					"filterable": "false",
					"fields": {
						"url": {
							"type": "string",
							"required": "true",
							"sortable": "false",
							"filterable": "false",
							"length": [1, 2000]
						},
						"fallbackUrl": {
							"type": "string",
							"required": "false",
							"sortable": "false",
							"filterable": "false",
							"length": [1, 2000]
						},
						"clickTrackers": {
							"type": "array",
							"required": "false",
							"sortable": "false",
							"filterable": "false",
							"items": {
								"type": "string",
								"length": [1, 2000]
							}
						}
					}
				}
			}
		}, {
			"required": "true",
			"fields": {
				"value": {
					"type": "string",
					"required": "true",
					"sortable": "false",
					"filterable": "false",
					"length": [10, 70]
				},
				"link": {
					"required": "false",
					"sortable": "false",
					"filterable": "false",
					"fields": {
						"url": {
							"type": "string",
							"required": "true",
							"sortable": "false",
							"filterable": "false",
							"length": [1, 2000]
						},
						"fallbackUrl": {
							"type": "string",
							"required": "false",
							"sortable": "false",
							"filterable": "false",
							"length": [1, 2000]
						},
						"clickTrackers": {
							"type": "array",
							"required": "false",
							"sortable": "false",
							"filterable": "false",
							"items": {
								"type": "string",
								"length": [1, 2000]
							}
						}
					}
				}
			}
		}]
	},
	"dataAssets": {
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"2": {
			"type": "array",
			"required": "true",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 2,
			"fieldSet": [{
				"required": "true",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 60]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}, {
				"required": "true",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 140]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"12": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "false",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 20]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"1": {
			"type": "array",
			"required": "true",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "true",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 30]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"11": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "false",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 30]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		}
	},
	"imgAssets": {
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"1": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "false",
				"fields": {
					"image": {
						"type": "int",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"imageRules": {
							"minWidth": 200,
							"minHeight": 200
						}
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"3": {
			"type": "array",
			"required": "true",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "true",
				"fields": {
					"image": {
						"type": "int",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"imageRules": {
							"minWidth": 600,
							"minHeight": 600
						}
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		}
	}
}
```
<DIV></DIV>

### Details (eCommerce)

`GET /creatives/details/2`

> Response

```json
{
	"advertiser": {
		"type": "int",
		"required": "true",
		"positive": "true"
	},
	"name": {
		"type": "string",
		"required": "true",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"type": {
		"type": "int",
		"required": "true",
		"sortable": "true",
		"filterable": "true",
		"positive": "true"
	},
	"link": {
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"fields": {
			"url": {
				"type": "string",
				"required": "true",
				"sortable": "false",
				"filterable": "false",
				"length": [1, 2000]
			},
			"fallbackUrl": {
				"type": "string",
				"required": "false",
				"sortable": "false",
				"filterable": "false",
				"length": [1, 2000]
			},
			"clickTrackers": {
				"type": "array",
				"required": "false",
				"sortable": "false",
				"filterable": "false",
				"items": {
					"type": "string",
					"length": [1, 2000]
				}
			}
		}
	},
	"impressionTrackers": {
		"type": "array",
		"required": "false",
		"sortable": "false",
		"filterable": "false",
		"itemFields": {
			"value": {
				"type": "string",
				"required": "true",
				"sortable": "false",
				"filterable": "false",
				"length": [1, 2000]
			},
			"type": {
				"type": "int",
				"required": "true",
				"sortable": "false",
				"filterable": "false",
				"in": [
					[1, 2]
				],
				"notes": "1 - image, 2 - JS"
			}
		}
	},
	"isArchived": {
		"type": "bool",
		"required": "false",
		"sortable": "false",
		"filterable": "false"
	},
	"titleAssets": {
		"type": "array",
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"maxLength": 2,
		"fieldSet": [{
			"required": "true",
			"fields": {
				"value": {
					"type": "string",
					"required": "true",
					"sortable": "false",
					"filterable": "false",
					"length": [10, 25]
				},
				"link": {
					"required": "false",
					"sortable": "false",
					"filterable": "false",
					"fields": {
						"url": {
							"type": "string",
							"required": "true",
							"sortable": "false",
							"filterable": "false",
							"length": [1, 2000]
						},
						"fallbackUrl": {
							"type": "string",
							"required": "false",
							"sortable": "false",
							"filterable": "false",
							"length": [1, 2000]
						},
						"clickTrackers": {
							"type": "array",
							"required": "false",
							"sortable": "false",
							"filterable": "false",
							"items": {
								"type": "string",
								"length": [1, 2000]
							}
						}
					}
				}
			}
		}, {
			"required": "true",
			"fields": {
				"value": {
					"type": "string",
					"required": "true",
					"sortable": "false",
					"filterable": "false",
					"length": [10, 70]
				},
				"link": {
					"required": "false",
					"sortable": "false",
					"filterable": "false",
					"fields": {
						"url": {
							"type": "string",
							"required": "true",
							"sortable": "false",
							"filterable": "false",
							"length": [1, 2000]
						},
						"fallbackUrl": {
							"type": "string",
							"required": "false",
							"sortable": "false",
							"filterable": "false",
							"length": [1, 2000]
						},
						"clickTrackers": {
							"type": "array",
							"required": "false",
							"sortable": "false",
							"filterable": "false",
							"items": {
								"type": "string",
								"length": [1, 2000]
							}
						}
					}
				}
			}
		}]
	},
	"dataAssets": {
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"2": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 2,
			"fieldSet": [{
				"required": "true",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 60]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}, {
				"required": "true",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 140]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"6": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "true",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 15]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"12": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "false",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 20]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"1": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "true",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 30]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"11": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "false",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 30]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		}
	},
	"imgAssets": {
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"1": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "false",
				"fields": {
					"image": {
						"type": "int",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"imageRules": {
							"minWidth": 200,
							"minHeight": 200
						}
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"3": {
			"type": "array",
			"required": "true",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "true",
				"fields": {
					"image": {
						"type": "int",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"imageRules": {
							"minWidth": 600,
							"minHeight": 600
						}
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		}
	}
}
```
<DIV></DIV>

### Details (Search)

`GET /creatives/details/3`

> Response

```json
{
	"advertiser": {
		"type": "int",
		"required": "true",
		"positive": "true"
	},
	"name": {
		"type": "string",
		"required": "true",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"type": {
		"type": "int",
		"required": "true",
		"sortable": "true",
		"filterable": "true",
		"positive": "true"
	},
	"link": {
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"fields": {
			"url": {
				"type": "string",
				"required": "true",
				"sortable": "false",
				"filterable": "false",
				"length": [1, 2000]
			},
			"fallbackUrl": {
				"type": "string",
				"required": "false",
				"sortable": "false",
				"filterable": "false",
				"length": [1, 2000]
			},
			"clickTrackers": {
				"type": "array",
				"required": "false",
				"sortable": "false",
				"filterable": "false",
				"items": {
					"type": "string",
					"length": [1, 2000]
				}
			}
		}
	},
	"impressionTrackers": {
		"type": "array",
		"required": "false",
		"sortable": "false",
		"filterable": "false",
		"itemFields": {
			"value": {
				"type": "string",
				"required": "true",
				"sortable": "false",
				"filterable": "false",
				"length": [1, 2000]
			},
			"type": {
				"type": "int",
				"required": "true",
				"sortable": "false",
				"filterable": "false",
				"in": [
					[1, 2]
				],
				"notes": "1 - image, 2 - JS"
			}
		}
	},
	"isArchived": {
		"type": "bool",
		"required": "false",
		"sortable": "false",
		"filterable": "false"
	},
	"titleAssets": {
		"type": "array",
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"maxLength": 2,
		"fieldSet": [{
			"required": "true",
			"fields": {
				"value": {
					"type": "string",
					"required": "true",
					"sortable": "false",
					"filterable": "false",
					"length": [10, 25]
				},
				"link": {
					"required": "false",
					"sortable": "false",
					"filterable": "false",
					"fields": {
						"url": {
							"type": "string",
							"required": "true",
							"sortable": "false",
							"filterable": "false",
							"length": [1, 2000]
						},
						"fallbackUrl": {
							"type": "string",
							"required": "false",
							"sortable": "false",
							"filterable": "false",
							"length": [1, 2000]
						},
						"clickTrackers": {
							"type": "array",
							"required": "false",
							"sortable": "false",
							"filterable": "false",
							"items": {
								"type": "string",
								"length": [1, 2000]
							}
						}
					}
				}
			}
		}, {
			"required": "true",
			"fields": {
				"value": {
					"type": "string",
					"required": "true",
					"sortable": "false",
					"filterable": "false",
					"length": [10, 70]
				},
				"link": {
					"required": "false",
					"sortable": "false",
					"filterable": "false",
					"fields": {
						"url": {
							"type": "string",
							"required": "true",
							"sortable": "false",
							"filterable": "false",
							"length": [1, 2000]
						},
						"fallbackUrl": {
							"type": "string",
							"required": "false",
							"sortable": "false",
							"filterable": "false",
							"length": [1, 2000]
						},
						"clickTrackers": {
							"type": "array",
							"required": "false",
							"sortable": "false",
							"filterable": "false",
							"items": {
								"type": "string",
								"length": [1, 2000]
							}
						}
					}
				}
			}
		}]
	},
	"dataAssets": {
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"2": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 2,
			"fieldSet": [{
				"required": "true",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 60]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}, {
				"required": "true",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 140]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"12": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "false",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 20]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"1": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "true",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 30]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"11": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "false",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 30]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		}
	},
	"imgAssets": {
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"1": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "false",
				"fields": {
					"image": {
						"type": "int",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"imageRules": {
							"minWidth": 200,
							"minHeight": 200
						}
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"3": {
			"type": "array",
			"required": "true",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "true",
				"fields": {
					"image": {
						"type": "int",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"imageRules": {
							"minWidth": 600,
							"minHeight": 600
						}
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 20000]
								}
							}
						}
					}
				}
			}]
		}
	}
}
```
<DIV></DIV>

### Details (App Download)

`GET /creatives/details/4`

> Response

```json
{
	"advertiser": {
		"type": "int",
		"required": "true",
		"positive": "true"
	},
	"name": {
		"type": "string",
		"required": "true",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"type": {
		"type": "int",
		"required": "true",
		"sortable": "true",
		"filterable": "true",
		"positive": "true"
	},
	"link": {
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"fields": {
			"url": {
				"type": "string",
				"required": "true",
				"sortable": "false",
				"filterable": "false",
				"length": [1, 2000]
			},
			"fallbackUrl": {
				"type": "string",
				"required": "false",
				"sortable": "false",
				"filterable": "false",
				"length": [1, 2000]
			},
			"clickTrackers": {
				"type": "array",
				"required": "false",
				"sortable": "false",
				"filterable": "false",
				"items": {
					"type": "string",
					"length": [1, 2000]
				}
			}
		}
	},
	"impressionTrackers": {
		"type": "array",
		"required": "false",
		"sortable": "false",
		"filterable": "false",
		"itemFields": {
			"value": {
				"type": "string",
				"required": "true",
				"sortable": "false",
				"filterable": "false",
				"length": [1, 2000]
			},
			"type": {
				"type": "int",
				"required": "true",
				"sortable": "false",
				"filterable": "false",
				"in": [
					[1, 2]
				],
				"notes": "1 - image, 2 - JS"
			}
		}
	},
	"isArchived": {
		"type": "bool",
		"required": "false",
		"sortable": "false",
		"filterable": "false"
	},
	"titleAssets": {
		"type": "array",
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"maxLength": 2,
		"fieldSet": [{
			"required": "true",
			"fields": {
				"value": {
					"type": "string",
					"required": "true",
					"sortable": "false",
					"filterable": "false",
					"length": [10, 25]
				},
				"link": {
					"required": "false",
					"sortable": "false",
					"filterable": "false",
					"fields": {
						"url": {
							"type": "string",
							"required": "true",
							"sortable": "false",
							"filterable": "false",
							"length": [1, 2000]
						},
						"fallbackUrl": {
							"type": "string",
							"required": "false",
							"sortable": "false",
							"filterable": "false",
							"length": [1, 2000]
						},
						"clickTrackers": {
							"type": "array",
							"required": "false",
							"sortable": "false",
							"filterable": "false",
							"items": {
								"type": "string",
								"length": [1, 2000]
							}
						}
					}
				}
			}
		}, {
			"required": "true",
			"fields": {
				"value": {
					"type": "string",
					"required": "true",
					"sortable": "false",
					"filterable": "false",
					"length": [10, 70]
				},
				"link": {
					"required": "false",
					"sortable": "false",
					"filterable": "false",
					"fields": {
						"url": {
							"type": "string",
							"required": "true",
							"sortable": "false",
							"filterable": "false",
							"length": [1, 2000]
						},
						"fallbackUrl": {
							"type": "string",
							"required": "false",
							"sortable": "false",
							"filterable": "false",
							"length": [1, 2000]
						},
						"clickTrackers": {
							"type": "array",
							"required": "false",
							"sortable": "false",
							"filterable": "false",
							"items": {
								"type": "string",
								"length": [1, 2000]
							}
						}
					}
				}
			}
		}]
	},
	"dataAssets": {
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"2": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 2,
			"fieldSet": [{
				"required": "true",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 60]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}, {
				"required": "true",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 140]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"3": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "false",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 5]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"11": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "false",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 30]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"6": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "true",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 15]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"12": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "false",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 20]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"1": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "true",
				"fields": {
					"value": {
						"type": "string",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"length": [0, 30]
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		}
	},
	"imgAssets": {
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"1": {
			"type": "array",
			"required": "false",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "false",
				"fields": {
					"image": {
						"type": "int",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"imageRules": {
							"minWidth": 200,
							"minHeight": 200
						}
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		},
		"3": {
			"type": "array",
			"required": "true",
			"sortable": "false",
			"filterable": "false",
			"maxLength": 1,
			"fieldSet": [{
				"required": "true",
				"fields": {
					"image": {
						"type": "int",
						"required": "true",
						"sortable": "false",
						"filterable": "false",
						"imageRules": {
							"minWidth": 600,
							"minHeight": 600
						}
					},
					"link": {
						"required": "false",
						"sortable": "false",
						"filterable": "false",
						"fields": {
							"url": {
								"type": "string",
								"required": "true",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"fallbackUrl": {
								"type": "string",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"length": [1, 2000]
							},
							"clickTrackers": {
								"type": "array",
								"required": "false",
								"sortable": "false",
								"filterable": "false",
								"items": {
									"type": "string",
									"length": [1, 2000]
								}
							}
						}
					}
				}
			}]
		}
	}
}
```
<DIV></DIV>

### Add a Creative

`POST /creatives`

> Example Request

```json
{
	"advertiser": 1,
	"name": "Example Creative 1",
	"type": 1,
	"link": {
		"url": "http://www.example.com",
		"clickTrackers": ["http://www.example.com/clk-tracker"]
	},
	"titleAssets": [{
		"value": "Standard Title",
		"link": {
			"url": "http://www.example.com/standard-title-link"
		}
	}, {
		"value": "Short Title",
		"link": {
			"url": "http://www.example.com/short-title-link"
		}
	}],
	"dataAssets": {
		"2": [{
			"value": "Standard Description"
		}, {
			"value": "Short description"
		}],
		"1": [{
			"value": "Brand"
		}]
	},
	"imgAssets": {
		"3": [{
			"image": 1
		},{
			"image": 2
		}]
	},
	"impressionTrackers": [{
		"value": "http://ww.example.com/imp-tracker",
		"type": 1
	}, {
		"value": "<script src=\"http://www.example.com/imp-tracker\"></script>",
		"type": 2
	}],
	"isArchived": false
}
```

## Conversion Trackers

### Details 

`GET /conversion-trackers/details`

> Response 

```json
{
	"advertiser": {
		"type": "int",
		"required": "true",
		"positive": "true"
	},
	"name": {
		"type": "string",
		"required": "true",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"implementationType": {
		"type": "int",
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"in": [
			[1, 2]
		]
	},
	"attributionType": {
		"type": "int",
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"in": [
			[1, 2]
		]
	},
	"window": {
		"type": "int",
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"between": [1, 365]
	},
	"aggregationType": {
		"type": "int",
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"in": [
			[1, 2]
		]
	},
	"type": {
		"type": "int",
		"required": "true",
		"sortable": "false",
		"filterable": "false",
		"in": [
			[1, 2, 3, 4, 5, 6, 7, 8, 9]
		]
	},
	"defaultValue": {
		"type": "string",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"length": [1, 255]
	},
	"marginPercentage": {
		"type": "numeric",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"between": [0, 100],
		"positive": "true"
	},
	"marginValue": {
		"type": "numeric",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"positive": "true"
	},
	"totalOrderRevenue": {
		"type": "numeric",
		"required": "false",
		"sortable": "true",
		"filterable": "true",
		"positive": "true"
	}
}
```
<DIV></DIV>

### Add a Conversion Tracker

`POST /conversion-trackers`

> Example Request

```json
{
        "advertiser": 1,
        "name": "Example Conversion Tracker",
        "implementationType": 1,
        "window": 100,
        "attributionType": 2,
        "aggregationType": 2,
        "type": 3,
        "defaultValue": "some default",
        "marginPercentage": 5,
        "marginValue": 10,
        "totalOrderRevenue": 100
}
```

## Custom Site/App List

#### Types

| Type ID | Type Name |
|---------|-----------|
| 1 | Sites |
| 2 | Apps |

### Details 

`GET /custom-lists/details`

> Response 

```json
{
  "status": "success",
  "data": {
    "name": {
      "type": "string",
      "required": "true",
      "sortable": "true",
      "filterable": "true",
      "length": [
        1,
        255
      ]
    },
    "type": {
      "type": "int",
      "required": "true",
      "sortable": "true",
      "filterable": "true",
      "in": [
        [
          1,
          2
        ]
      ]
    },
    "isActive": {
      "type": "bool",
      "required": "false",
      "sortable": "true",
      "filterable": "true"
    },
    "isArchived": {
      "type": "bool",
      "required": "false",
      "sortable": "false",
      "filterable": "false"
    }
  }
}
```

### Add a List

`POST /custom-lists`

> Example Request

```
{
        "name": "Example Site List",
        "type": 1
}
```

### Add items to a list

`POST /custom-lists/{:id}/items`

> Example Request

```json
{
        "items": ["example1.com", "example2.com", "example3.com"],
        "isActive": true
}
```

## Sites & Apps

#### Accepted Query Parameters

| Parameter | Details | Example |
|---------|-----------|---------|
| sellers | Comma separated list of SSP IDs (UUIDs) | ssps=323de09a-79d7-11e6-bd6a-0ae0ff90b829 |
| categories | Comma separated list of IAB categories | categories=IAB1,IAB2-3 |
| tlds | Comma separated list of TLDd | tlds=com,co.uk |
| score | Numeric value, the minimum IAS Traq score | score=700 |
| type | Entity type. Site or App | type=2 |

### Retrieve

`GET /sites-apps?tlds=co.uk&limit=100&offset=0`

> Example Response

```json
{
  "status": "success",
  "data": [
    {
      "id": "example1.co.uk",
      "type": "S",
      "tld": "co.uk",
      "sellers": [
        "323de09a-79d7-11e6-bd6a-0ae0ff90b829",
        "d983b9f0-8bf2-11e6-8521-8b154a4c005a",
        "4cb810ae-5cab-4ea2-aa3d-d948f2703fa7",
        "5f31a32d-3305-4a0f-9485-e2d4e2c809e8",
        "d817f020-eec4-4436-aaf5-18dae5174356",
        "1b5b97c0-e8bb-11e6-b607-b9b06c8db41b",
        "d05ce011-3b54-45de-a0c6-658a419a2d04",
        "b7a1fcce-0a53-4e85-8a7a-d4f5e971118e",
        "7efd6bfa-67af-11e6-bd6a-0ae0ff90b829",
        "34dab060-2dbd-11e6-a466-d91b16ae4453"
      ],
      "total": 2023234510
    },
    {
      "id": "example2.co.uk",
      "type": "S",
      "tld": "co.uk",
      "sellers": [
        "d983b9f0-8bf2-11e6-8521-8b154a4c005a"
      ],
      "total": 220403244
    }
  ]
}
```

## Response

The JSON response has this form:
```json
	{
	  "status": string(success|fail|error),
      "data": array|object,
      "message": string,
      "meta": array,
      "code": int
	}
```