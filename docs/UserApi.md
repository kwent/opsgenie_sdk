# OpsgenieSdk::UserApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](UserApi.md#create_user) | **POST** /v2/users | Create User
[**delete_user**](UserApi.md#delete_user) | **DELETE** /v2/users/{identifier} | Delete User
[**get_user**](UserApi.md#get_user) | **GET** /v2/users/{identifier} | Get User
[**list_user_escalations**](UserApi.md#list_user_escalations) | **GET** /v2/users/{identifier}/escalations | List User Escalations
[**list_user_forwarding_rules**](UserApi.md#list_user_forwarding_rules) | **GET** /v2/users/{identifier}/forwarding-rules | List User Forwarding Rules
[**list_user_schedules**](UserApi.md#list_user_schedules) | **GET** /v2/users/{identifier}/schedules | List User Schedules
[**list_user_teams**](UserApi.md#list_user_teams) | **GET** /v2/users/{identifier}/teams | List User Teams
[**list_users**](UserApi.md#list_users) | **GET** /v2/users | List users
[**update_user**](UserApi.md#update_user) | **PATCH** /v2/users/{identifier} | Update User (Partial)


# **create_user**
> SuccessResponse create_user(body)

Create User

Creates a user with the given payload

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

api_instance = OpsgenieSdk::UserApi.new

body = OpsgenieSdk::CreateUserPayload.new # CreateUserPayload | Request payload of the user object


begin
  #Create User
  result = api_instance.create_user(body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling UserApi->create_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateUserPayload**](CreateUserPayload.md)| Request payload of the user object | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_user**
> SuccessResponse delete_user(identifier, )

Delete User

Delete user with the given identifier

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

api_instance = OpsgenieSdk::UserApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched


begin
  #Delete User
  result = api_instance.delete_user(identifier, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling UserApi->delete_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user**
> GetUserResponse get_user(identifier, , opts)

Get User

Get user for the given identifier

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

api_instance = OpsgenieSdk::UserApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

opts = { 
  expand: ['expand_example'] # Array<String> | Comma separated list of strings to create a more detailed response. The only expandable field for user api is 'contact'
}

begin
  #Get User
  result = api_instance.get_user(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling UserApi->get_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **expand** | [**Array&lt;String&gt;**](String.md)| Comma separated list of strings to create a more detailed response. The only expandable field for user api is &#39;contact&#39; | [optional] 

### Return type

[**GetUserResponse**](GetUserResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_user_escalations**
> ListUserEscalationsResponse list_user_escalations(identifier, )

List User Escalations

List escalations of the user for the given identifier

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

api_instance = OpsgenieSdk::UserApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched


begin
  #List User Escalations
  result = api_instance.list_user_escalations(identifier, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling UserApi->list_user_escalations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 

### Return type

[**ListUserEscalationsResponse**](ListUserEscalationsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_user_forwarding_rules**
> ListUserForwardingRulesResponse list_user_forwarding_rules(identifier, )

List User Forwarding Rules

List user forwarding rules for the given user identifier

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

api_instance = OpsgenieSdk::UserApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched


begin
  #List User Forwarding Rules
  result = api_instance.list_user_forwarding_rules(identifier, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling UserApi->list_user_forwarding_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 

### Return type

[**ListUserForwardingRulesResponse**](ListUserForwardingRulesResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_user_schedules**
> ListUserSchedulesResponse list_user_schedules(identifier, )

List User Schedules

List schedules of the user for the given identifier

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

api_instance = OpsgenieSdk::UserApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched


begin
  #List User Schedules
  result = api_instance.list_user_schedules(identifier, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling UserApi->list_user_schedules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 

### Return type

[**ListUserSchedulesResponse**](ListUserSchedulesResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_user_teams**
> ListUserTeamsResponse list_user_teams(identifier, )

List User Teams

List user teams for the given user identifier

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

api_instance = OpsgenieSdk::UserApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched


begin
  #List User Teams
  result = api_instance.list_user_teams(identifier, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling UserApi->list_user_teams: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 

### Return type

[**ListUserTeamsResponse**](ListUserTeamsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_users**
> ListUsersResponse list_users(opts)

List users

List users with given parameters

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

api_instance = OpsgenieSdk::UserApi.new

opts = { 
  limit: 100, # Integer | Number of users to retrieve
  offset: 0, # Integer | Number of users to skip from start
  sort_field: 'sort_field_example', # String | Field to use in sorting. Should be one of 'username', 'fullName' and 'insertedAt'
  order: 'asc', # String | Direction of sorting. Should be one of 'asc' or 'desc'
  query: 'query_example' # String | Field:value combinations with most of user fields to make more advanced searches. Possible fields are username, fullName, blocked, verified, role, locale, timeZone, userAddress and createdAt
}

begin
  #List users
  result = api_instance.list_users(opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling UserApi->list_users: #{e}"
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

[**ListUsersResponse**](ListUsersResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_user**
> SuccessResponse update_user(identifier, , opts)

Update User (Partial)

Update user with the given identifier

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

api_instance = OpsgenieSdk::UserApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

opts = { 
  body: OpsgenieSdk::UpdateUserPayload.new # UpdateUserPayload | Request payload of the user object
}

begin
  #Update User (Partial)
  result = api_instance.update_user(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling UserApi->update_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **body** | [**UpdateUserPayload**](UpdateUserPayload.md)| Request payload of the user object | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



