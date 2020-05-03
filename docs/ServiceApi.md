# SwaggerClient::ServiceApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_service**](ServiceApi.md#create_service) | **POST** /v1/services | Create Service
[**delete_service**](ServiceApi.md#delete_service) | **DELETE** /v1/services/{identifier} | Delete Service
[**get_service**](ServiceApi.md#get_service) | **GET** /v1/services/{identifier} | Get Service
[**list_services**](ServiceApi.md#list_services) | **GET** /v1/services | List services
[**update_service**](ServiceApi.md#update_service) | **PATCH** /v1/services/{identifier} | Update Service (Partial)


# **create_service**
> SuccessResponse create_service(body)

Create Service

Creates a new service

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: GenieKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::ServiceApi.new

body = SwaggerClient::CreateServicePayload.new # CreateServicePayload | Request payload of created service


begin
  #Create Service
  result = api_instance.create_service(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceApi->create_service: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateServicePayload**](CreateServicePayload.md)| Request payload of created service | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_service**
> SuccessResponse delete_service(identifier, )

Delete Service

Delete service with given id

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: GenieKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::ServiceApi.new

identifier = 'identifier_example' # String | Identifier of the service


begin
  #Delete Service
  result = api_instance.delete_service(identifier, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceApi->delete_service: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the service | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_service**
> GetServiceResponse get_service(identifier, )

Get Service

Returns service with given 'id'

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: GenieKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::ServiceApi.new

identifier = 'identifier_example' # String | Identifier of the service


begin
  #Get Service
  result = api_instance.get_service(identifier, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceApi->get_service: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the service | 

### Return type

[**GetServiceResponse**](GetServiceResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_services**
> ListServicesResponse list_services(opts)

List services

Return list of services

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: GenieKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::ServiceApi.new

opts = { 
  limit: 100, # Integer | Number of users to retrieve
  offset: 0, # Integer | Number of users to skip from start
  sort_field: 'sort_field_example', # String | Field to use in sorting. Should be one of 'username', 'fullName' and 'insertedAt'
  order: 'asc', # String | Direction of sorting. Should be one of 'asc' or 'desc'
  query: 'query_example' # String | Field:value combinations with most of user fields to make more advanced searches. Possible fields are username, fullName, blocked, verified, role, locale, timeZone, userAddress and createdAt
}

begin
  #List services
  result = api_instance.list_services(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceApi->list_services: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of users to retrieve | [optional] [default to 100]
 **offset** | **Integer**| Number of users to skip from start | [optional] [default to 0]
 **sort_field** | **String**| Field to use in sorting. Should be one of &#39;username&#39;, &#39;fullName&#39; and &#39;insertedAt&#39; | [optional] 
 **order** | **String**| Direction of sorting. Should be one of &#39;asc&#39; or &#39;desc&#39; | [optional] [default to asc]
 **query** | **String**| Field:value combinations with most of user fields to make more advanced searches. Possible fields are username, fullName, blocked, verified, role, locale, timeZone, userAddress and createdAt | [optional] 

### Return type

[**ListServicesResponse**](ListServicesResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_service**
> SuccessResponse update_service(identifier, , opts)

Update Service (Partial)

Update service with given id

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: GenieKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::ServiceApi.new

identifier = 'identifier_example' # String | Identifier of the service

opts = { 
  body: SwaggerClient::UpdateServicePayload.new # UpdateServicePayload | Request payload of update service action
}

begin
  #Update Service (Partial)
  result = api_instance.update_service(identifier, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceApi->update_service: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the service | 
 **body** | [**UpdateServicePayload**](UpdateServicePayload.md)| Request payload of update service action | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



