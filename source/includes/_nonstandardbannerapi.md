# Non-Standard Banner API

The PowerLinks Non-Standard Banner Api describes how your application can interact directly with the PowerLinks system to
conduct a real-time query of Banner content.

The PowerLinks Non-Standard Banner API can be accessed either from a server, or from a browser. The response can be formatted
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
w | string | Yes | Exact width of the banner
h | string | Yes | Exact height of the banner
uid | string | No | User ID
fl | float | No | Floor price, e.g. ’0.01’. Currency is USD.
s | enum (0,1) | No | 1 indicates this impression is for a secure page, 0 indicates insecure.
subid | string | No | An ID specified by you for extended identification in reporting.
df | string | No | The desired response format, XML, JSON, or JSONP. Default is XML.
callback | string | No | This is strictly for JSONP support. If this parameter is included, the response will be wrapped in the callback, and the format will be JSON, overriding the ‘df’ parameter if present.

### Making the request

All requests should be made using the following method

***Range Options***

`GET http://serve.powerlinks.com/rtb/banner`

***Parameters***

See above table

***Example Request***

GET

`http://serve.powerlinks.com/rtb/banner?a=1&c=IAB1,IAB2&ip=192.168.0.1&ua=Mozilla%2F5.0%20(Windows%20NT%206.3%3B%20WOW64)%20AppleWebKit%2F537.36%20(KHTML%2C%20like%20Gecko)%20Chrome%2F39.0.2171.95%20Safari%2F537.36&r=http%3A%2F%2Fwww.examplepage.com%2Fsomepage&uid=uuid1234567890&fl=.2&s=1&w=300&h=250&subid=1234567890&df=json`

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
adm | string | The ad's markup as XHTML
width | string | The ad's width
height | string | The ad's height

> ***Example Responses: XML***

```xml
    <?xml version="1.0" encoding="utf-8"?>
    <response>
        <ad>
            <bid>1.00</bid>
            <width>300</width>
            <height>250</height>
            <adm>
                <![CDATA[<div>Ad Content</div>
            ]]>
            </adm>
        </ad>
    </response>
```

> ***Example Responses: JSON***

```json
{
    "ad": {
        "bid": 1.00,
        "width": 300,
        "height": 250,
        "adm": "<div>Ad Content</div>"
    }
}
```

> ***Example Responses: JSONP***

```jsonp
jQuery123({
    "ad": {
        "bid": 1.00,
        "width": 300,
        "height": 250,
        "adm": "<div>Ad Content</div>"
    }
})
```