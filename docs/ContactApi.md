# OpsgenieSdk::ContactApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_contact**](ContactApi.md#create_contact) | **POST** /v2/users/{identifier}/contacts | Create Contact
[**delete_contact**](ContactApi.md#delete_contact) | **DELETE** /v2/users/{identifier}/contacts/{contactId} | Delete Contact
[**disable_contact**](ContactApi.md#disable_contact) | **POST** /v2/users/{identifier}/contacts/{contactId}/disable | Disable Contact
[**enable_contact**](ContactApi.md#enable_contact) | **POST** /v2/users/{identifier}/contacts/{contactId}/enable | Enable Contact
[**get_contact**](ContactApi.md#get_contact) | **GET** /v2/users/{identifier}/contacts/{contactId} | Get Contact
[**list_contacts**](ContactApi.md#list_contacts) | **GET** /v2/users/{identifier}/contacts | List Contacts
[**update_contact**](ContactApi.md#update_contact) | **PATCH** /v2/users/{identifier}/contacts/{contactId} | Update Contact (Partial)


# **create_contact**
> SuccessResponse create_contact(identifier, , opts)

Create Contact

Creates a new contact

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

api_instance = OpsgenieSdk::ContactApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

opts = { 
  body: OpsgenieSdk::CreateContactPayload.new # CreateContactPayload | Request payload of creating contact action
}

begin
  #Create Contact
  result = api_instance.create_contact(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ContactApi->create_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **body** | [**CreateContactPayload**](CreateContactPayload.md)| Request payload of creating contact action | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_contact**
> SuccessResponse delete_contact(identifier, contact_id)

Delete Contact

Delete contact using contact id

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

api_instance = OpsgenieSdk::ContactApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

contact_id = 'contact_id_example' # String | Id of the contact


begin
  #Delete Contact
  result = api_instance.delete_contact(identifier, contact_id)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ContactApi->delete_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **contact_id** | **String**| Id of the contact | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disable_contact**
> SuccessResponse disable_contact(identifier, contact_id)

Disable Contact

Disable the contact of the user

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

api_instance = OpsgenieSdk::ContactApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

contact_id = 'contact_id_example' # String | Id of the contact


begin
  #Disable Contact
  result = api_instance.disable_contact(identifier, contact_id)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ContactApi->disable_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **contact_id** | **String**| Id of the contact | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **enable_contact**
> SuccessResponse enable_contact(identifier, contact_id)

Enable Contact

Enable the contact of the user

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

api_instance = OpsgenieSdk::ContactApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

contact_id = 'contact_id_example' # String | Id of the contact


begin
  #Enable Contact
  result = api_instance.enable_contact(identifier, contact_id)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ContactApi->enable_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **contact_id** | **String**| Id of the contact | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_contact**
> GetContactResponse get_contact(identifier, contact_id)

Get Contact

Returns contact with given id

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

api_instance = OpsgenieSdk::ContactApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

contact_id = 'contact_id_example' # String | Id of the contact


begin
  #Get Contact
  result = api_instance.get_contact(identifier, contact_id)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ContactApi->get_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **contact_id** | **String**| Id of the contact | 

### Return type

[**GetContactResponse**](GetContactResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_contacts**
> ListContactsResponse list_contacts(identifier, )

List Contacts

Returns list of contacts

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

api_instance = OpsgenieSdk::ContactApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched


begin
  #List Contacts
  result = api_instance.list_contacts(identifier, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ContactApi->list_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 

### Return type

[**ListContactsResponse**](ListContactsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_contact**
> SuccessResponse update_contact(identifier, contact_id, opts)

Update Contact (Partial)

Update contact of the user

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

api_instance = OpsgenieSdk::ContactApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

contact_id = 'contact_id_example' # String | Id of the contact

opts = { 
  body: OpsgenieSdk::UpdateContactPayload.new # UpdateContactPayload | Request payload of update contact action
}

begin
  #Update Contact (Partial)
  result = api_instance.update_contact(identifier, contact_id, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ContactApi->update_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **contact_id** | **String**| Id of the contact | 
 **body** | [**UpdateContactPayload**](UpdateContactPayload.md)| Request payload of update contact action | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



