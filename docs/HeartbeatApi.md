# OpsgenieSdk::HeartbeatApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_heartbeat**](HeartbeatApi.md#create_heartbeat) | **POST** /v2/heartbeats | Create Heartbeat
[**delete_heartbeat**](HeartbeatApi.md#delete_heartbeat) | **DELETE** /v2/heartbeats/{name} | Delete Heartbeat
[**disable_heartbeat**](HeartbeatApi.md#disable_heartbeat) | **POST** /v2/heartbeats/{name}/disable | Disable Heartbeat
[**enable_heartbeat**](HeartbeatApi.md#enable_heartbeat) | **POST** /v2/heartbeats/{name}/enable | Enable Heartbeat
[**get_heartbeat**](HeartbeatApi.md#get_heartbeat) | **GET** /v2/heartbeats/{name} | Get Heartbeat
[**list_heart_beats**](HeartbeatApi.md#list_heart_beats) | **GET** /v2/heartbeats | List Heartbeats
[**ping**](HeartbeatApi.md#ping) | **GET** /v2/heartbeats/{name}/ping | Ping Heartbeat
[**update_heartbeat**](HeartbeatApi.md#update_heartbeat) | **PATCH** /v2/heartbeats/{name} | Update Heartbeat (Partial)


# **create_heartbeat**
> CreateHeartbeatResponse create_heartbeat(body)

Create Heartbeat

Create a new heartbeat

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

api_instance = OpsgenieSdk::HeartbeatApi.new

body = OpsgenieSdk::CreateHeartbeatPayload.new # CreateHeartbeatPayload | Request payload of created heartbeat


begin
  #Create Heartbeat
  result = api_instance.create_heartbeat(body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling HeartbeatApi->create_heartbeat: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateHeartbeatPayload**](CreateHeartbeatPayload.md)| Request payload of created heartbeat | 

### Return type

[**CreateHeartbeatResponse**](CreateHeartbeatResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_heartbeat**
> SuccessResponse delete_heartbeat(name)

Delete Heartbeat

Delete heartbeat with given name

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

api_instance = OpsgenieSdk::HeartbeatApi.new

name = 'name_example' # String | Name of the heartbeat


begin
  #Delete Heartbeat
  result = api_instance.delete_heartbeat(name)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling HeartbeatApi->delete_heartbeat: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the heartbeat | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disable_heartbeat**
> DisableHeartbeatResponse disable_heartbeat(name)

Disable Heartbeat

Disable heartbeat request with given name

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

api_instance = OpsgenieSdk::HeartbeatApi.new

name = 'name_example' # String | Name of the heartbeat


begin
  #Disable Heartbeat
  result = api_instance.disable_heartbeat(name)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling HeartbeatApi->disable_heartbeat: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the heartbeat | 

### Return type

[**DisableHeartbeatResponse**](DisableHeartbeatResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **enable_heartbeat**
> EnableHeartbeatResponse enable_heartbeat(name)

Enable Heartbeat

Enable heartbeat request with given name

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

api_instance = OpsgenieSdk::HeartbeatApi.new

name = 'name_example' # String | Name of the heartbeat


begin
  #Enable Heartbeat
  result = api_instance.enable_heartbeat(name)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling HeartbeatApi->enable_heartbeat: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the heartbeat | 

### Return type

[**EnableHeartbeatResponse**](EnableHeartbeatResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_heartbeat**
> GetHeartbeatResponse get_heartbeat(name)

Get Heartbeat

Returns heartbeat with given name

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

api_instance = OpsgenieSdk::HeartbeatApi.new

name = 'name_example' # String | Name of the heartbeat


begin
  #Get Heartbeat
  result = api_instance.get_heartbeat(name)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling HeartbeatApi->get_heartbeat: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the heartbeat | 

### Return type

[**GetHeartbeatResponse**](GetHeartbeatResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_heart_beats**
> ListHeartbeatResponse list_heart_beats

List Heartbeats

Returns list of Heartbeats

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

api_instance = OpsgenieSdk::HeartbeatApi.new

begin
  #List Heartbeats
  result = api_instance.list_heart_beats
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling HeartbeatApi->list_heart_beats: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListHeartbeatResponse**](ListHeartbeatResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ping**
> SuccessResponse ping(name)

Ping Heartbeat

Ping Heartbeat for given heartbeat name

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

api_instance = OpsgenieSdk::HeartbeatApi.new

name = 'name_example' # String | Name of the heartbeat


begin
  #Ping Heartbeat
  result = api_instance.ping(name)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling HeartbeatApi->ping: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the heartbeat | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_heartbeat**
> UpdateHeartbeatResponse update_heartbeat(name, opts)

Update Heartbeat (Partial)

Update Heartbeatwith given name

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

api_instance = OpsgenieSdk::HeartbeatApi.new

name = 'name_example' # String | Name of the heartbeat

opts = { 
  body: OpsgenieSdk::UpdateHeartbeatPayload.new # UpdateHeartbeatPayload | Request payload of update heartbeat action
}

begin
  #Update Heartbeat (Partial)
  result = api_instance.update_heartbeat(name, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling HeartbeatApi->update_heartbeat: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the heartbeat | 
 **body** | [**UpdateHeartbeatPayload**](UpdateHeartbeatPayload.md)| Request payload of update heartbeat action | [optional] 

### Return type

[**UpdateHeartbeatResponse**](UpdateHeartbeatResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



