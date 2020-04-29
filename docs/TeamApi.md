# OpsgenieSdk::TeamApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_team**](TeamApi.md#create_team) | **POST** /v2/teams | Create Team
[**delete_team**](TeamApi.md#delete_team) | **DELETE** /v2/teams/{identifier} | Delete Team
[**get_team**](TeamApi.md#get_team) | **GET** /v2/teams/{identifier} | Get Team
[**list_team_logs**](TeamApi.md#list_team_logs) | **GET** /v2/teams/{identifier}/logs | List Team Logs
[**list_teams**](TeamApi.md#list_teams) | **GET** /v2/teams | List Teams
[**update_team**](TeamApi.md#update_team) | **PATCH** /v2/teams/{identifier} | Update Team (Partial)


# **create_team**
> SuccessResponse create_team(body)

Create Team

Creates a new team

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

api_instance = OpsgenieSdk::TeamApi.new

body = OpsgenieSdk::CreateTeamPayload.new # CreateTeamPayload | Request payload of created team


begin
  #Create Team
  result = api_instance.create_team(body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamApi->create_team: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateTeamPayload**](CreateTeamPayload.md)| Request payload of created team | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_team**
> SuccessResponse delete_team(identifier, , opts)

Delete Team

Delete team with given id or name

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

api_instance = OpsgenieSdk::TeamApi.new

identifier = 'identifier_example' # String | Identifier of the team

opts = { 
  identifier_type: 'id', # String | Type of the identifier. Possible values are 'id' and 'name'. Default value is 'id'
}

begin
  #Delete Team
  result = api_instance.delete_team(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamApi->delete_team: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the team | 
 **identifier_type** | **String**| Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_team**
> GetTeamResponse get_team(identifier, , opts)

Get Team

Returns team with given 'id' or 'name'

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

api_instance = OpsgenieSdk::TeamApi.new

identifier = 'identifier_example' # String | Identifier of the team

opts = { 
  identifier_type: 'id', # String | Type of the identifier. Possible values are 'id' and 'name'. Default value is 'id'
}

begin
  #Get Team
  result = api_instance.get_team(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamApi->get_team: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the team | 
 **identifier_type** | **String**| Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; | [optional] [default to id]

### Return type

[**GetTeamResponse**](GetTeamResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_team_logs**
> ListTeamLogsResponse list_team_logs(identifier, , opts)

List Team Logs

Return logs of a team given with identifier

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

api_instance = OpsgenieSdk::TeamApi.new

identifier = 'identifier_example' # String | Identifier of the team

opts = { 
  identifier_type: 'id', # String | Type of the identifier. Possible values are 'id' and 'name'. Default value is 'id'
  limit: 56, # Integer | Maximum number of items to provide in the result. Must be a positive integer value.
  order: 'desc', # String | Sorting order of the result set
  offset: 'offset_example' # String | Key which will be used in pagination
}

begin
  #List Team Logs
  result = api_instance.list_team_logs(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamApi->list_team_logs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the team | 
 **identifier_type** | **String**| Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; | [optional] [default to id]
 **limit** | **Integer**| Maximum number of items to provide in the result. Must be a positive integer value. | [optional] 
 **order** | **String**| Sorting order of the result set | [optional] [default to desc]
 **offset** | **String**| Key which will be used in pagination | [optional] 

### Return type

[**ListTeamLogsResponse**](ListTeamLogsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_teams**
> ListTeamsResponse list_teams

List Teams

Return list of teams

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

api_instance = OpsgenieSdk::TeamApi.new

begin
  #List Teams
  result = api_instance.list_teams
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamApi->list_teams: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListTeamsResponse**](ListTeamsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_team**
> SuccessResponse update_team(identifier, , opts)

Update Team (Partial)

Update team with given id

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

api_instance = OpsgenieSdk::TeamApi.new

identifier = 'identifier_example' # String | Identifier of the team

opts = { 
  body: OpsgenieSdk::UpdateTeamPayload.new # UpdateTeamPayload | Request payload of update team action
}

begin
  #Update Team (Partial)
  result = api_instance.update_team(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamApi->update_team: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the team | 
 **body** | [**UpdateTeamPayload**](UpdateTeamPayload.md)| Request payload of update team action | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



