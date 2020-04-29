# OpsgenieSdk::AccountApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_info**](AccountApi.md#get_info) | **GET** /v2/account | Get Account Info


# **get_info**
> GetAccountInfoResponse get_info

Get Account Info

Used to search and retrieve account information in Opsgenie

### Example
```ruby
# load the gem
require 'opsgenie_sdk'
# setup authorization
OpsgenieSdk.configure do |config|
  # Configure API key authorization: GenieKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpsgenieSdk::AccountApi.new

begin
  #Get Account Info
  result = api_instance.get_info
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AccountApi->get_info: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetAccountInfoResponse**](GetAccountInfoResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



