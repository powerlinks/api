# Non-Standard Native API

The PowerLinks Non-Standard Native Api describes how your application can interact directly with the PowerLinks system to
conduct a real-time query of Native content.

The PowerLinks Non-Standard Native API can be accessed either from a server, or from a browser. The response can be formatted
as either XML or JSON, with XML being the default. In the case of accessing from a browser, both CORS and JSONP
are supported. If a callback parameter is present, JSONP is assumed and the response will be wrapped in the callback
parameter, formatted as JSON.

For more information, please consider the following resources:

XML: http://www.w3.org/XML/

JSON: http://wwww.json.org/

JSONP: http://json-p.org/

CORS: https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS

All currencies are in USD and all dates and times are relative to UTC.

## Request

### Overview

All requests made to the PowerLinks System should be done through a single entry point which supports a number
of options to allow for the response to be made more contextual. The table below describes these.

Parameter|Type|Required|Description
---------|----|--------|-----------
a | string | Yes | Your PowerLinks account ID
c | string | Yes | The Category IDs of the site on which the ad will display, separated by comma. Please find a list of Top Level Categories below. For a more granular list, please ask your PowerLinks account manager.
ip | string | Yes | IP (v.4) address of the end user, or the string ‘false’. NOTE: If this is a server-side implementation, please include the IPv4 address. If this is a client-side implementation, please provide a string value of ‘false’ for this parameter. This will tell us that we should be detecting the IP from the request headers.
ua | string | Yes | User agent of the end user
r | string | Yes | URL-encoded HTTP referring URL
au | string | Yes | Native Ad Unit ID. Please find a list of Open RTB Native Ad Unit IDs below.

uid | string | No | User ID
pc | string | No | Placement count. The number of identical placements. This translates to a maximum number of possible ads in the response. Default is 1.
fl | float | No | Floor price, e.g. ’0.01’. Currency is USD.
s | enum (0,1) | No | 1 indicates this impression is for a secure page, 0 indicates insecure.
t | enum (0,1) | No | This indicates that the impression supports a Title. 1 means a Title is required in the response, 0 means a Title is optional.
d | enum (0,1) | No | This indicates that the impression supports a Description. 1 means a Description is required in the response, 0 means a Description is optional.
sp | enum (0,1) | No | This indicates that the impression supports a Sponsor or Brand Name. 1 means a Sponsor or Brand Name is required in the response, 0 means a Sponsor or Brand Name is optional.
du | enum (0,1) | No | This indicates that the impression supports a Display URL. 1 means a Display URL is required in the response, 0 means a Display URL is optional.
cta | enum (0,1) | No | This indicates that the impression supports a CTA Text. 1 means a CTA Text is required in the response, 0 means a CTA Text is optional.
tl | integer | No | If a Title is requested, this denotes a maximum character length of the Title text.
dl | integer | No | If a Description is requested, this denotes a maximum character length of the Description text.
spl | integer | No | If a Sponsor or Brand Name is requested, this denotes a maximum character length of the Sponsor or Brand Name text.
dul | integer | No | If a Display URL is requested, this denotes a maximum character length of the Display URL text.
ctal | integer | No | If a CTA Text is requested, this denotes a maximum character length of the CTA Text text.
m | enum (0,1) | No | This indicates that the impression supports a Main Image. 1 means a Main Image is required in the response, 0 means a Main Image is optional.
l | enum (0,1) | No | This indicates that the impression supports a Logo Image. 1 means a Logo Image is required in the response, 0 means a Logo Image is optional.
mw | integer | No | If a Main Image is requested, this denotes the exact desired width of the Main Image.
mh | integer | No | If a Main Image is requested, this denotes the exact desired height of the Main Image.
mmw | integer | No | If a Main Image is requested, this denotes the minimum desired width of the Main Image.
mmh | integer | No | If a Main Image is requested, this denotes the minimum desired height of the Main Image.
lw | integer | No | If a Logo Image is requested, this denotes the exact desired width of the Logo Image.
lh | integer | No | If a Logo Image is requested, this denotes the exact desired height of the Logo Image.
lmw | integer | No | If a Logo Image is requested, this denotes the minimum desired width of the Logo Image.
lmh | integer | No | If a Logo Image is requested, this denotes the minimum desired height of the Logo Image.
subid | string | No | An ID specified by you for extended identification in reporting.
df | string | No | The desired response format, XML, JSON, or JSONP. Default is XML.
callback | string | No | This is strictly for JSONP support. If this parameter is included, the response will be wrapped in the callback, and the format will be JSON, overriding the ‘df’ parameter if present.

### Making the request

All requests should be made using the following method

***Range Options***

`GET http://serve.powerlinks.com/nativertb`

***Parameters***

See above table

***Example Request***

GET

`http://serve.powerlinks.com/nativertb?a=1&c=IAB1,IAB2&ip=192.168.0.1&ua=Mozilla%2F5.0%20(Windows%20NT%206.3%3B%20WOW64)%20AppleWebKit%2F537.36%20(KHTML%2C%20like%20Gecko)%20Chrome%2F39.0.2171.95%20Safari%2F537.36&r=http%3A%2F%2Fwww.examplepage.com%2Fsomepage&au=2&uid=uuid1234567890&pc=1&fl=.2&s=1&t=1&tl=100&d=0&dl=150&m=1&mw=300&mh=300&subid=1234567890&df=json`

## Response

### Structure

If there are no bids, an HTTP Status Code of 204 (No-Content) will be returned with no body.

Successfuly bid responses are returned in the format specified in the request (or XML if not specified). The data returned in the
response are described in the following tables:

Parameter | Type | Description
----------|------|------------
ad | object | The object containing the advert data in successful responses

### Ad Object

Parameter | Type | Description
----------|------|------------
bid | float | The bid value
title | string | The ad's title
description | string | The ad's description
sponsored | string | The ad's sponsor name
displayurl | string | The ad's display URL
ctatext | string | The ad's CTA text
main | string | The ad's main image
logo | string | The ad's logo image
link | string | The ad's click through URL
imptrackers | object | An array of impression tracking pixels that must be fired on impression of the ad
clicktrackers | object | An array of click tracking pixels that should be fired on click of the ad

> ***Example Responses: XML***

```xml
    <?xml version="1.0" encoding="utf-8"?>
    <response>
        <ad>
            <bid>1.00</bid>
            <title>Ad Title</title>
            <description>Ad Description</description>
            <sponsored>Ad Sponsor</sponsor>
            <displayurl>adurl.com</displayurl>
            <ctatext>Read More!</ctatext>
            <main>
                <![CDATA[https://images.powerlinks.com/main.jpg]]>
            </main>
            <logo>
                <![CDATA[https://images.powerlinks.com/logo.jpg]]>
            </logo>
            <link><![CDATA[https://click.powerlinks.com]]></link>
            <imptrackers>
                <item id="0">
                    <![CDATA[https://imptracker1.powerlinks.com]]>
                </item>
                <item id="1">
                    <![CDATA[https://imptracker2.powerlinks.com]]>
                </item>
            </imptrackers>
            <clicktrackers>
                <item id="0">
                    <![CDATA[https://clicktracker1.powerlinks.com]]>
                </item>
                <item id="1">
                    <![CDATA[https://clicktracker2.powerlinks.com]]>
                </item>
            </clicktrackers>
        </ad>
    </response>
```

> ***Example Responses: JSON***

```json
{
    "ad": {
        "bid": "1.00",
        "title": "Ad Title",
        "description": "Ad Description",
        "sponsor": "Ad Sponsor",
        "displayurl": "adurl.com",
        "ctatext": "Read More!",
        "main": "https://images.powerlinks.com/main.jpg",
        "logo": "https://images.powerlinks.com/logo.jpg",
        "link": "https://click.powerlinks.com",
        "imptrackers": [
            "https://imptracker1.powerlinks.com",
            "https://imptracker2.powerlinks.com"
        ],
        "clicktrackers": [
            "https://clicktracker1.powerlinks.com",
            "https://clicktracker2.powerlinks.com"
        ]
    }
}
```

> ***Example Responses: JSONP***

```jsonp
jQuery123({
    "ad": {
        "bid": "1.00",
        "title": "Ad Title",
        "description": "Ad Description",
        "sponsor": "Ad Sponsor",
        "displayurl": "adurl.com",
        "ctatext": "Read More!",
        "main": "https://images.powerlinks.com/main.jpg",
        "logo": "https://images.powerlinks.com/logo.jpg",
        "link": "https://click.powerlinks.com",
        "imptrackers": [
            "https://imptracker1.powerlinks.com",
            "https://imptracker2.powerlinks.com"
        ],
        "clicktrackers": [
            "https://clicktracker1.powerlinks.com",
            "https://clicktracker2.powerlinks.com"
        ]
    }
})
```