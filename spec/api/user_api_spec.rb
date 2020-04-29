=begin
#Opsgenie REST API

#Opsgenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'spec_helper'
require 'json'

# Unit tests for OpsgenieSdk::UserApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserApi' do
  before do
    # run before each test
    @instance = OpsgenieSdk::UserApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserApi' do
    it 'should create an instance of UserApi' do
      expect(@instance).to be_instance_of(OpsgenieSdk::UserApi)
    end
  end

  # unit tests for create_user
  # Create User
  # Creates a user with the given payload
  # @param body Request payload of the user object
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'create_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_user
  # Delete User
  # Delete user with the given identifier
  # @param identifier Identifier of the user to be searched
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'delete_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user
  # Get User
  # Get user for the given identifier
  # @param identifier Identifier of the user to be searched
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :expand Comma separated list of strings to create a more detailed response. The only expandable field for user api is &#39;contact&#39;
  # @return [GetUserResponse]
  describe 'get_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_user_escalations
  # List User Escalations
  # List escalations of the user for the given identifier
  # @param identifier Identifier of the user to be searched
  # @param [Hash] opts the optional parameters
  # @return [ListUserEscalationsResponse]
  describe 'list_user_escalations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_user_forwarding_rules
  # List User Forwarding Rules
  # List user forwarding rules for the given user identifier
  # @param identifier Identifier of the user to be searched
  # @param [Hash] opts the optional parameters
  # @return [ListUserForwardingRulesResponse]
  describe 'list_user_forwarding_rules test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_user_schedules
  # List User Schedules
  # List schedules of the user for the given identifier
  # @param identifier Identifier of the user to be searched
  # @param [Hash] opts the optional parameters
  # @return [ListUserSchedulesResponse]
  describe 'list_user_schedules test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_user_teams
  # List User Teams
  # List user teams for the given user identifier
  # @param identifier Identifier of the user to be searched
  # @param [Hash] opts the optional parameters
  # @return [ListUserTeamsResponse]
  describe 'list_user_teams test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_users
  # List users
  # List users with given parameters
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of users to retrieve
  # @option opts [Integer] :offset Number of users to skip from start
  # @option opts [String] :sort_field Field to use in sorting. Should be one of &#39;username&#39;, &#39;fullName&#39; and &#39;insertedAt&#39;
  # @option opts [String] :order Direction of sorting. Should be one of &#39;asc&#39; or &#39;desc&#39;
  # @option opts [String] :query Field:value combinations with most of user fields to make more advanced searches. Possible fields are username, fullName, blocked, verified, role, locale, timeZone, userAddress and createdAt
  # @return [ListUsersResponse]
  describe 'list_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user
  # Update User (Partial)
  # Update user with the given identifier
  # @param identifier Identifier of the user to be searched
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateUserPayload] :body Request payload of the user object
  # @return [SuccessResponse]
  describe 'update_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
