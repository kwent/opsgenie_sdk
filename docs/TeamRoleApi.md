# OpsgenieSdk::TeamRoleApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_team_role**](TeamRoleApi.md#create_team_role) | **POST** /v2/teams/{identifier}/roles | Create Team Role
[**delete_team_role**](TeamRoleApi.md#delete_team_role) | **DELETE** /v2/teams/{identifier}/roles/{teamRoleIdentifier} | Delete Team Role
[**get_team_role**](TeamRoleApi.md#get_team_role) | **GET** /v2/teams/{identifier}/roles/{teamRoleIdentifier} | Get Team Role
[**list_team_roles**](TeamRoleApi.md#list_team_roles) | **GET** /v2/teams/{identifier}/roles | List Team Roles
[**update_team_role**](TeamRoleApi.md#update_team_role) | **PATCH** /v2/teams/{identifier}/roles/{teamRoleIdentifier} | Update Team Role (Partial)


# **create_team_role**
> SuccessResponse create_team_role(identifier, body, opts)

Create Team Role

Creates a new team role

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

api_instance = OpsgenieSdk::TeamRoleApi.new

identifier = 'identifier_example' # String | Identifier of the team

body = OpsgenieSdk::CreateTeamRolePayload.new # CreateTeamRolePayload | Request payload of created team role

opts = { 
  team_identifier_type: 'id' # String | Type of the identifier. Possible values are 'id' and 'name'. Default value is 'id'
}

begin
  #Create Team Role
  result = api_instance.create_team_role(identifier, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamRoleApi->create_team_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the team | 
 **body** | [**CreateTeamRolePayload**](CreateTeamRolePayload.md)| Request payload of created team role | 
 **team_identifier_type** | **String**| Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_team_role**
> SuccessResponse delete_team_role(identifier, team_role_identifier, opts)

Delete Team Role

Deletes a team role using team role 'id' or 'name'

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

api_instance = OpsgenieSdk::TeamRoleApi.new

identifier = 'identifier_example' # String | Identifier of the team

team_role_identifier = 'team_role_identifier_example' # String | Identifier of team role which could be team role 'id' or 'name'

opts = { 
  team_identifier_type: 'id' # String | Type of the identifier. Possible values are 'id' and 'name'. Default value is 'id'
  identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #Delete Team Role
  result = api_instance.delete_team_role(identifier, team_role_identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamRoleApi->delete_team_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the team | 
 **team_role_identifier** | **String**| Identifier of team role which could be team role &#39;id&#39; or &#39;name&#39; | 
 **team_identifier_type** | **String**| Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; | [optional] [default to id]
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_team_role**
> GetTeamRoleResponse get_team_role(identifier, team_role_identifier, opts)

Get Team Role

Returns team role with given 'id' or 'name'

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

api_instance = OpsgenieSdk::TeamRoleApi.new

identifier = 'identifier_example' # String | Identifier of the team

team_role_identifier = 'team_role_identifier_example' # String | Identifier of team role which could be team role 'id' or 'name'

opts = { 
  team_identifier_type: 'id' # String | Type of the identifier. Possible values are 'id' and 'name'. Default value is 'id'
  identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #Get Team Role
  result = api_instance.get_team_role(identifier, team_role_identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamRoleApi->get_team_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the team | 
 **team_role_identifier** | **String**| Identifier of team role which could be team role &#39;id&#39; or &#39;name&#39; | 
 **team_identifier_type** | **String**| Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; | [optional] [default to id]
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**GetTeamRoleResponse**](GetTeamRoleResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_team_roles**
> ListTeamRoleResponse list_team_roles(identifier, , opts)

List Team Roles

Returns list of team roles

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

api_instance = OpsgenieSdk::TeamRoleApi.new

identifier = 'identifier_example' # String | Identifier of the team

opts = { 
  team_identifier_type: 'id' # String | Type of the identifier. Possible values are 'id' and 'name'. Default value is 'id'
}

begin
  #List Team Roles
  result = api_instance.list_team_roles(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamRoleApi->list_team_roles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the team | 
 **team_identifier_type** | **String**| Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; | [optional] [default to id]

### Return type

[**ListTeamRoleResponse**](ListTeamRoleResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_team_role**
> SuccessResponse update_team_role(identifier, team_role_identifier, opts)

Update Team Role (Partial)

Updates the team role using team role 'id' or 'name'

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

api_instance = OpsgenieSdk::TeamRoleApi.new

identifier = 'identifier_example' # String | Identifier of the team

team_role_identifier = 'team_role_identifier_example' # String | Identifier of team role which could be team role 'id' or 'name'

opts = { 
  team_identifier_type: 'id' # String | Type of the identifier. Possible values are 'id' and 'name'. Default value is 'id'
  identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
  body: OpsgenieSdk::UpdateTeamRolePayload.new # UpdateTeamRolePayload | Request payload of update team role
}

begin
  #Update Team Role (Partial)
  result = api_instance.update_team_role(identifier, team_role_identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamRoleApi->update_team_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the team | 
 **team_role_identifier** | **String**| Identifier of team role which could be team role &#39;id&#39; or &#39;name&#39; | 
 **team_identifier_type** | **String**| Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; | [optional] [default to id]
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]
 **body** | [**UpdateTeamRolePayload**](UpdateTeamRolePayload.md)| Request payload of update team role | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



