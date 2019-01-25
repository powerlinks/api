# Reporting API

## Query string

The route for the reporting is `GET /report/buyer` OR `GET /report/seller`

Choose `buyer` or `seller` depending on the type of report you're wanting

### List of parameters

Parameter name | Format	| Options Available | Required
-------------- | ------ | ----------------- | --------
range |	string | GET /report/options/range | Yes
from | date | YYYY-MM-DD | No
to | date | YYYY-MM-DD | No
interval | string | GET /report/options/interval | Yes
metrics	| array | GET /report/options/metrics	| Yes
dimensions | array | GET /report/options/dimensions | Yes
filters | array | GET /report/options/filters | No
options | array	| GET /report/options/options | No
limit | int	| (default: 10)	| No
offset | int | (default: 0) | No

### Range

`GET report/options/range`

> Range - Example Response

```json
{
    "status": "success",
    "data": {
        "today": "Today",
        "yesterday": "Yesterday",
        "last_7_days": "Last 7 Days",
        "last_48_hours": "Last 48 Hours",
        "month_to_date": "Month to Date",
        "last_month": "Last Month",
        "custom": "Custom"
    }
}
```

### From

Format YYYY-MM-DD. Only required for range: "custom"

To

Format YYYY-MM-DD. Only required for range: "custom"

### Interval

`GET /report/options/interval`

> Interval - Example Response

```json
{
    "status": "success",
    "data": {
        "cumulative": "Cumulative",
        "day": "Day",
        "month": "Month"
    }
}
```

### Buyer Metrics

`GET /report/options/metrics/buyer`

> Metrics - Example Response

```json
{
    "status": "success",
    "data": {
        "impressions": "Impressions",
        "clicks": "Clicks",
        "ctr": "CTR",
        "gross": "Gross",
        "totalspend": "Total Spend",
        "mediaspend": "Media Spend",
        "buyerplatformfee": "Buyer Platform Fee",
        "sellerrevenue": "Seller Revenue",
        "sellerplatformfee": "Seller Platform Fee",
        "net": "Net",
        "ecpc": "eCPC",
        "ecpm": "eCPM"
    }
}
```

### Seller Metrics

`GET /report/options/metrics/seller`

> Metrics - Example Response

```json
{
    "status": "success",
    "data": {
        "impressions": "Impressions",
        "clicks": "Clicks",
        "ctr": "CTR",
        "gross": "Gross",
        "totalspend": "Total Spend",
        "mediaspend": "Media Spend",
        "buyerplatformfee": "Buyer Platform Fee",
        "sellerrevenue": "Seller Revenue",
        "sellerplatformfee": "Seller Platform Fee",
        "net": "Net",
        "ecpc": "eCPC",
        "ecpm": "eCPM"
    }
}
```

### Metric Groups

`GET /report/options/metrics/groups`

> Groups - Example Response

```json
{
    "status": "success",
    "data": {
        "core": "Core",
        "revenue": "Revenue",
        "video": "Video"
    }
}
```

### Buyer Metric Groups

`GET /report/options/metrics/buyer/group-metrics`

> Metrics - Example Response

```json
{
    "status": "success",
    "data": {
        "impressions": "core",
        "clicks": "core",
        "postviewconversions": "core",
        "postclickconversions": "core",
        "conversions": "core",
        "ctr": "core",
        "videostart": "video",
        "videofirstquartile": "video",
        "videomidpoint": "video",
        "videothirdquartile": "video",
        "videocomplete": "video",
        "ecpvstart": "video",
        "ecpvfirstquartile": "video",
        "ecpvmidpoint": "video",
        "ecpvthirdquartile": "video",
        "ecpvcomplete": "video",
        "gross": "revenue",
        "totalspend": "revenue",
        "mediaspend": "revenue",
        "buyerplatformfee": "revenue",
        "datafee": "revenue",
        "buyerecpm": "revenue",
        "buyerecpc": "revenue"
    }
}
```

### Seller Metric Groups

`GET /report/options/metrics/seller/group-metrics`

> Metrics - Example Response

```json
{
    "status": "success",
    "data": {
        "impressions": "core",
        "clicks": "core",
        "postviewconversions": "core",
        "postclickconversions": "core",
        "conversions": "core",
        "ctr": "core",
        "videostart": "video",
        "videofirstquartile": "video",
        "videomidpoint": "video",
        "videothirdquartile": "video",
        "videocomplete": "video",
        "ecpvstart": "video",
        "ecpvfirstquartile": "video",
        "ecpvmidpoint": "video",
        "ecpvthirdquartile": "video",
        "ecpvcomplete": "video",
        "net": "revenue",
        "sellerrevenue": "revenue",
        "sellerplatformfee": "revenue",
        "sellerecpm": "revenue",
        "sellerecpc": "revenue"
    }
}
```

### Dimensions

`GET /report/options/dimensions`

> Dimensions - Example Response

```json
{
    "status": "success",
    "data": {
        "seller_account_id": "Seller",
        "buyer_account_id": "Buyer",
        "country": "Country",
        "source": "Source",
        "cid": "Campaign",
        "device_type": "Device Type"
    }
}
```

### Filters

`GET /report/options/filters`

> Filter - Example Response

```json
{
    "status": "success",
    "data": {
        "seller_account_id": "Seller",
        "buyer_account_id": "Buyer",
        "country": "Country",
        "source": "Source",
        "cid": "Campaign",
        "device_type": "Device"
    }
}
```

To list the option for each filter you can use the following API:

`GET /report/options/filters/{filter}/values`

This API return paginated content. In order to use the pagination you can use two optional parameters: "limit" and "offset".

i.e. country

```json
{
    "status": "success",
    "data": {
        "items": {
            "GBR": "United Kingdom",
            "USA": "United States",
            "DEU": "Germany",
            "FRA": "France",
            "AFG": "Afghanistan",
            "ALB": "Albania",
            "DZA": "Algeria",
            "ASM": "American Samoa",
            "AND": "Andorra",
            "AGO": "Angola"
        },
        "limit": 10,
        "offset": 0,
        "totalItems": 227,
        "pages": 23
    }
}
```

### Options

`GET /report/options/options`

> Options - Example Response

```json
{
    "status": "success",
    "data": [
        "showall",
        "total"
    ]
}
```

### Accounts

This parameter is valid just if you are an admin. Accounts allows an array of values in this format:

### Query string structure

Parameter name | Syntax
-------------- | ------
range | range=today
from | [ range=custom& ] from=2015-06-12 [ &to=2015-06-30 ]
to| [ range=custom&from=2015-06-12& ] to=2015-06-30
interval | interval=cumulative
metrics |	metrics=impressions,clicks [ ,{metrics},... ]
dimensions | dimensions=inventory_id,campaign_id [ ,{dimensions},... ]
filters | filters=country:GBR,USA,ITA;device_id:1,2,3 [ ;{keyword}:{value},{value};... ]
accounts| accounts=e661785d-4a04-450b-a050-23426a58d3e5,95f8e7ec-9aa7-11e5-8994-feff819cdc9f [ ,{uuid},... ]


> Request

```shell
curl \
    -H "ApiKey: xM6frL3y7ImCoZiDHKXRVMMkPB2v7PWvRJaPX7RY7n77IMpDwchlLUHSeYpkmqwNPFAbQLX6Cs33ug51rjJ7wrvScBkZUz9FbbbHETqaxW4=" \
    "http://reporting.api.powerlinks.com/report?range=yesterday&interval=cumulative&metrics=impressions,clicks&dimensions=inventory_id"
```

> Response

```json
{
    "status": "success",
    "data": {
        "headers": {
            "impressions": "Impressions",
            "clicks": "Clicks",
            "inventory_id": "Inventory"
        },
        "recordset": [
            {
                "impressions": 132336,
                "clicks": 386,
                "inventory_id": ""
            }
        ],
        "limit": 10,
        "offset": 0,
        "totalItems": 1,
        "pages": 1
    }
}
```

## API Keys

### Introduction

An API Key is used to temporarily authenticate an external application.

A POST is made to https://api.powerlinks.com/users/login with username and password in the body. This will return a temporary API Key.

> Request

```shell
curl -X POST -d "username=USERNAME&password=PASSWORD" https://api.powerlinks.com/users/login
```

> Response

```json
{
  "status":"success",
  "data":{
    "apiKey":"gJmil12lO5WRSKHsZ1j46QUvNUM4kBjIOKpH7S9TLA6s0rsv1NZ4Aj7DDXhe5wKG5N6lzRgRYeaYuy4MbrYf4LUZgxa44K0QUyYAXB0PNHMK59vx2tyEIWnXztyomWaL3DV-nwydm3A5vaqp_ghJjxRrfG2TbwJ00U0fRgyHva0",
    "expires":1548427228
  }
}
```

### Using API Keys

The API Key will be added as a custom header "ApiKey" inside the HTTP request for each subsequent request to reporting API routes.

### Persistent API Keys

In the case that a persistent API Key is required, a POST request is sent to 

**https://api.powerlinks.com/api-keys**

The API Key header is the temporary API Key from the previous step, while the POST body's 'name' is a descriptive name for the persistent key.

```shell
curl -X POST \
  https://api.powerlinks.com/api-keys \
  -H 'Content-Type: application/json' \
  -H 'apikey: gJmil12lO5WRSKHsZ1j46QUvNUM4kBjIOKpH7S9TLA6s0rsv1NZ4Aj7DDXhe5wKG5N6lzRgRYeaYuy4MbrYf4LUZgxa44K0QUyYAXB0PNHMK59vx2tyEIWnXztyomWaL3DV-nwydm3A5vaqp_ghJjxRrfG2TbwJ00U0fRgyHva0' \
  -d '{
    "name": "persistent-key-name"
  }'
```

This will return a json response, where the ID is the numeric ID of the persistent key.

```json
{
    "status": "success",
    "data": {
        "id": 1
    }
}
```

Finally, the persistent API Key can be retrieved by issuing a GET request to 

**https://api.powerlinks.com/api-keys/&lt;API KEY NUMERIC ID&gt;**

```shell
curl -X GET \
  https://api.powerlinks.com/api-keys/1 \
  -H 'Content-Type: application/json' \
  -H 'apikey: gJmil12lO5WRSKHsZ1j46QUvNUM4kBjIOKpH7S9TLA6s0rsv1NZ4Aj7DDXhe5wKG5N6lzRgRYeaYuy4MbrYf4LUZgxa44K0QUyYAXB0PNHMK59vx2tyEIWnXztyomWaL3DV-nwydm3A5vaqp_ghJjxRrfG2TbwJ00U0fRgyHva0'
```

Which will return a json response that includes the persistent key.

```json
{
    "status": "success",
    "data": {
        "id": 1,
        "key": "gJmil12lO5Vu7xM2mikK1TcYk4nGnpRfw0LVQK_dJfZ3VIXUcO4Chyis3XkTo3MW5N6lzRgRYeaYuy4MbrYf4IpQSdCiZv17UyYAXB0PNHMK59vx2tyEIWnXztyomWaL3DV-nwydm3A5vaqp_ghJjxRrfG2TbwJ00U0fRgyHva0",
        "name": "persistent-key-name",
        "createdAt": "2018-01-01",
        "updatedAt": "2018-01-01",
        "deletedAt": ""
    }
}
```
