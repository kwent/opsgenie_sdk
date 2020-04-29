# OpsgenieSdk::MaintenanceApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_maintenance**](MaintenanceApi.md#cancel_maintenance) | **POST** /v1/maintenance/{id}/cancel | Cancel Maintenance
[**create_maintenance**](MaintenanceApi.md#create_maintenance) | **POST** /v1/maintenance | Create Maintenance
[**delete_maintenance**](MaintenanceApi.md#delete_maintenance) | **DELETE** /v1/maintenance/{id} | Delete Maintenance
[**get_maintenance**](MaintenanceApi.md#get_maintenance) | **GET** /v1/maintenance/{id} | Get Maintenance
[**list_maintenance**](MaintenanceApi.md#list_maintenance) | **GET** /v1/maintenance | List Maintenance
[**update_maintenance**](MaintenanceApi.md#update_maintenance) | **PUT** /v1/maintenance/{id} | Update Maintenance


# **cancel_maintenance**
> SuccessResponse cancel_maintenance(id)

Cancel Maintenance

Cancel maintenance with given id

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

api_instance = OpsgenieSdk::MaintenanceApi.new

id = 'id_example' # String | Identifier of the maintenance to be searched


begin
  #Cancel Maintenance
  result = api_instance.cancel_maintenance(id)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling MaintenanceApi->cancel_maintenance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identifier of the maintenance to be searched | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_maintenance**
> CreateMaintenanceResponse create_maintenance(body)

Create Maintenance

Creates a new maintenance

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

api_instance = OpsgenieSdk::MaintenanceApi.new

body = OpsgenieSdk::CreateMaintenancePayload.new # CreateMaintenancePayload | Request payload of the maintenance object


begin
  #Create Maintenance
  result = api_instance.create_maintenance(body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling MaintenanceApi->create_maintenance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateMaintenancePayload**](CreateMaintenancePayload.md)| Request payload of the maintenance object | 

### Return type

[**CreateMaintenanceResponse**](CreateMaintenanceResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_maintenance**
> SuccessResponse delete_maintenance(id)

Delete Maintenance

Delete maintenance with given identifier

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

api_instance = OpsgenieSdk::MaintenanceApi.new

id = 'id_example' # String | Identifier of the maintenance to be searched


begin
  #Delete Maintenance
  result = api_instance.delete_maintenance(id)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling MaintenanceApi->delete_maintenance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identifier of the maintenance to be searched | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_maintenance**
> GetMaintenanceResponse get_maintenance(id)

Get Maintenance

Returns maintenance with given id

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

api_instance = OpsgenieSdk::MaintenanceApi.new

id = 'id_example' # String | Identifier of the maintenance to be searched


begin
  #Get Maintenance
  result = api_instance.get_maintenance(id)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling MaintenanceApi->get_maintenance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identifier of the maintenance to be searched | 

### Return type

[**GetMaintenanceResponse**](GetMaintenanceResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_maintenance**
> ListMaintenanceResponse list_maintenance(opts)

List Maintenance

List maintenance by type

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

api_instance = OpsgenieSdk::MaintenanceApi.new

opts = { 
  type: '[all]' # String | Type of the maintenance list to be searched
}

begin
  #List Maintenance
  result = api_instance.list_maintenance(opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling MaintenanceApi->list_maintenance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of the maintenance list to be searched | [optional] [default to [all]]

### Return type

[**ListMaintenanceResponse**](ListMaintenanceResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_maintenance**
> UpdateMaintenanceResponse update_maintenance(idbody)

Update Maintenance

Update maintenance with given id

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

api_instance = OpsgenieSdk::MaintenanceApi.new

id = 'id_example' # String | Identifier of the maintenance to be searched

body = OpsgenieSdk::UpdateMaintenancePayload.new # UpdateMaintenancePayload | Request payload of the maintenance object


begin
  #Update Maintenance
  result = api_instance.update_maintenance(idbody)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling MaintenanceApi->update_maintenance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identifier of the maintenance to be searched | 
 **body** | [**UpdateMaintenancePayload**](UpdateMaintenancePayload.md)| Request payload of the maintenance object | 

### Return type

[**UpdateMaintenanceResponse**](UpdateMaintenanceResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



