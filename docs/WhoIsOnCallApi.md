# OpsgenieSdk::WhoIsOnCallApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**export_on_call_user**](WhoIsOnCallApi.md#export_on_call_user) | **GET** /v2/schedules/on-calls/{identifier}.ics | Export On-Call User
[**get_next_on_calls**](WhoIsOnCallApi.md#get_next_on_calls) | **GET** /v2/schedules/{identifier}/next-on-calls | Get Next On Calls
[**get_on_calls**](WhoIsOnCallApi.md#get_on_calls) | **GET** /v2/schedules/{identifier}/on-calls | Get On Calls
[**list_on_calls**](WhoIsOnCallApi.md#list_on_calls) | **GET** /v2/schedules/on-calls | List On Calls


# **export_on_call_user**
> String export_on_call_user(identifier)

Export On-Call User

Exports personal on-call timeline of 3 months to a .ics file

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

api_instance = OpsgenieSdk::WhoIsOnCallApi.new

identifier = 'identifier_example' # String | Identifier of the user. Should be either 'id' or 'username' of the user


begin
  #Export On-Call User
  result = api_instance.export_on_call_user(identifier)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling WhoIsOnCallApi->export_on_call_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user. Should be either &#39;id&#39; or &#39;username&#39; of the user | 

### Return type

**String**

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/calendar



# **get_next_on_calls**
> GetNextOnCallResponse get_next_on_calls(identifier, opts)

Get Next On Calls

Gets next on-call participants of a specific schedule

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

api_instance = OpsgenieSdk::WhoIsOnCallApi.new

identifier = 'identifier_example' # String | Identifier of schedule which could be id or name

opts = { 
  schedule_identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
  flat: true, # BOOLEAN | Retrieves user names of all on call participants if enabled
  date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Starting date of the timeline
}

begin
  #Get Next On Calls
  result = api_instance.get_next_on_calls(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling WhoIsOnCallApi->get_next_on_calls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of schedule which could be id or name | 
 **schedule_identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]
 **flat** | **BOOLEAN**| Retrieves user names of all on call participants if enabled | [optional] 
 **date** | **DateTime**| Starting date of the timeline | [optional] 

### Return type

[**GetNextOnCallResponse**](GetNextOnCallResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_on_calls**
> GetOnCallResponse get_on_calls(identifier, opts)

Get On Calls

Gets current on-call participants of a specific schedule

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

api_instance = OpsgenieSdk::WhoIsOnCallApi.new

identifier = 'identifier_example' # String | Identifier of schedule which could be id or name

opts = { 
  schedule_identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
  flat: true, # BOOLEAN | Retrieves user names of all on call participants if enabled
  date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Starting date of the timeline
}

begin
  #Get On Calls
  result = api_instance.get_on_calls(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling WhoIsOnCallApi->get_on_calls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of schedule which could be id or name | 
 **schedule_identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]
 **flat** | **BOOLEAN**| Retrieves user names of all on call participants if enabled | [optional] 
 **date** | **DateTime**| Starting date of the timeline | [optional] 

### Return type

[**GetOnCallResponse**](GetOnCallResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_on_calls**
> ListOnCallsResponse list_on_calls(opts)

List On Calls

Lists current on-call participants of all schedules

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

api_instance = OpsgenieSdk::WhoIsOnCallApi.new

opts = { 
  flat: true, # BOOLEAN | Retrieves user names of all on call participants if enabled
  date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Starting date of the timeline
}

begin
  #List On Calls
  result = api_instance.list_on_calls(opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling WhoIsOnCallApi->list_on_calls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flat** | **BOOLEAN**| Retrieves user names of all on call participants if enabled | [optional] 
 **date** | **DateTime**| Starting date of the timeline | [optional] 

### Return type

[**ListOnCallsResponse**](ListOnCallsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



