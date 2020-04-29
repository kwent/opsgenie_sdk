# OpsgenieSdk::ScheduleApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_schedule**](ScheduleApi.md#create_schedule) | **POST** /v2/schedules | Create Schedule
[**delete_schedule**](ScheduleApi.md#delete_schedule) | **DELETE** /v2/schedules/{identifier} | Delete Schedule
[**export_schedule**](ScheduleApi.md#export_schedule) | **GET** /v2/schedules/{identifier}.ics | Export Schedule
[**get_schedule**](ScheduleApi.md#get_schedule) | **GET** /v2/schedules/{identifier} | Get Schedule
[**get_schedule_timeline**](ScheduleApi.md#get_schedule_timeline) | **GET** /v2/schedules/{identifier}/timeline | Get Schedule Timeline
[**list_schedules**](ScheduleApi.md#list_schedules) | **GET** /v2/schedules | List Schedules
[**update_schedule**](ScheduleApi.md#update_schedule) | **PATCH** /v2/schedules/{identifier} | Update Schedule (Partial)


# **create_schedule**
> CreateScheduleResponse create_schedule(body)

Create Schedule

Creates a new schedule

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

api_instance = OpsgenieSdk::ScheduleApi.new

body = OpsgenieSdk::CreateSchedulePayload.new # CreateSchedulePayload | Request payload of created schedule


begin
  #Create Schedule
  result = api_instance.create_schedule(body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ScheduleApi->create_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateSchedulePayload**](CreateSchedulePayload.md)| Request payload of created schedule | 

### Return type

[**CreateScheduleResponse**](CreateScheduleResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_schedule**
> SuccessResponse delete_schedule(identifier, opts)

Delete Schedule

Delete schedule with given identifier

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

api_instance = OpsgenieSdk::ScheduleApi.new

identifier = 'identifier_example' # String | Identifier of schedule which could be id or name

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #Delete Schedule
  result = api_instance.delete_schedule(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ScheduleApi->delete_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of schedule which could be id or name | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **export_schedule**
> String export_schedule(identifier, opts)

Export Schedule

Returns an .ics file as byte array

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

api_instance = OpsgenieSdk::ScheduleApi.new

identifier = 'identifier_example' # String | Identifier of schedule which could be id or name

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #Export Schedule
  result = api_instance.export_schedule(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ScheduleApi->export_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of schedule which could be id or name | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

**String**

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/calendar



# **get_schedule**
> GetScheduleResponse get_schedule(identifier, opts)

Get Schedule

Returns schedule with given id or name

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

api_instance = OpsgenieSdk::ScheduleApi.new

identifier = 'identifier_example' # String | Identifier of schedule which could be id or name

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #Get Schedule
  result = api_instance.get_schedule(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ScheduleApi->get_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of schedule which could be id or name | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**GetScheduleResponse**](GetScheduleResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_schedule_timeline**
> GetScheduleTimelineResponse get_schedule_timeline(identifier, opts)

Get Schedule Timeline

Returns schedule timeline with given id or name

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

api_instance = OpsgenieSdk::ScheduleApi.new

identifier = 'identifier_example' # String | Identifier of schedule which could be id or name

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
  expand: ['expand_example'], # Array<String> | Returns more detailed response with expanding it. Possible values are 'base', 'forwarding', and 'override' which is also returned with expandable field of response
  interval: 1, # Integer | Length of time as integer in intervalUnits to retrieve the timeline. Default value is 1
  interval_unit: 'interval_unit_example', # String | Unit of the time to retrieve the timeline. Available values are 'days', 'weeks' and 'months'. Default value is 'weeks'
  date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Time to return future date on-call participants. Default date is the moment of the time that request is received
}

begin
  #Get Schedule Timeline
  result = api_instance.get_schedule_timeline(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ScheduleApi->get_schedule_timeline: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of schedule which could be id or name | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]
 **expand** | [**Array&lt;String&gt;**](String.md)| Returns more detailed response with expanding it. Possible values are &#39;base&#39;, &#39;forwarding&#39;, and &#39;override&#39; which is also returned with expandable field of response | [optional] 
 **interval** | **Integer**| Length of time as integer in intervalUnits to retrieve the timeline. Default value is 1 | [optional] [default to 1]
 **interval_unit** | **String**| Unit of the time to retrieve the timeline. Available values are &#39;days&#39;, &#39;weeks&#39; and &#39;months&#39;. Default value is &#39;weeks&#39; | [optional] 
 **date** | **DateTime**| Time to return future date on-call participants. Default date is the moment of the time that request is received | [optional] 

### Return type

[**GetScheduleTimelineResponse**](GetScheduleTimelineResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_schedules**
> ListSchedulesResponse list_schedules(opts)

List Schedules

Returns list of schedule

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

api_instance = OpsgenieSdk::ScheduleApi.new

opts = { 
  expand: ['expand_example'] # Array<String> | Returns more detailed response with expanding it. Possible value is 'rotation' which is also returned with expandable field of response
}

begin
  #List Schedules
  result = api_instance.list_schedules(opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ScheduleApi->list_schedules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | [**Array&lt;String&gt;**](String.md)| Returns more detailed response with expanding it. Possible value is &#39;rotation&#39; which is also returned with expandable field of response | [optional] 

### Return type

[**ListSchedulesResponse**](ListSchedulesResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_schedule**
> UpdateScheduleResponse update_schedule(identifier, opts)

Update Schedule (Partial)

Update schedule with given id or name

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

api_instance = OpsgenieSdk::ScheduleApi.new

identifier = 'identifier_example' # String | Identifier of schedule which could be id or name

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
  body: OpsgenieSdk::UpdateSchedulePayload.new # UpdateSchedulePayload | Request payload of update schedule action
}

begin
  #Update Schedule (Partial)
  result = api_instance.update_schedule(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ScheduleApi->update_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of schedule which could be id or name | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]
 **body** | [**UpdateSchedulePayload**](UpdateSchedulePayload.md)| Request payload of update schedule action | [optional] 

### Return type

[**UpdateScheduleResponse**](UpdateScheduleResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



