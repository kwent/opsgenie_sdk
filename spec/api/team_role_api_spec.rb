=begin
#Opsgenie REST API

#Opsgenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'spec_helper'
require 'json'

# Unit tests for OpsgenieSdk::TeamRoleApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TeamRoleApi' do
  before do
    # run before each test
    @instance = OpsgenieSdk::TeamRoleApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TeamRoleApi' do
    it 'should create an instance of TeamRoleApi' do
      expect(@instance).to be_instance_of(OpsgenieSdk::TeamRoleApi)
    end
  end

  # unit tests for create_team_role
  # Create Team Role
  # Creates a new team role
  # @param identifier Identifier of the team
  # @param body Request payload of created team role
  # @param [Hash] opts the optional parameters
  # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39;
  # @return [SuccessResponse]
  describe 'create_team_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_team_role
  # Delete Team Role
  # Deletes a team role using team role &#39;id&#39; or &#39;name&#39;
  # @param identifier Identifier of the team
  # @param team_role_identifier Identifier of team role which could be team role &#39;id&#39; or &#39;name&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39;
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39;
  # @return [SuccessResponse]
  describe 'delete_team_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_team_role
  # Get Team Role
  # Returns team role with given &#39;id&#39; or &#39;name&#39;
  # @param identifier Identifier of the team
  # @param team_role_identifier Identifier of team role which could be team role &#39;id&#39; or &#39;name&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39;
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39;
  # @return [GetTeamRoleResponse]
  describe 'get_team_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_team_roles
  # List Team Roles
  # Returns list of team roles
  # @param identifier Identifier of the team
  # @param [Hash] opts the optional parameters
  # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39;
  # @return [ListTeamRoleResponse]
  describe 'list_team_roles test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_team_role
  # Update Team Role (Partial)
  # Updates the team role using team role &#39;id&#39; or &#39;name&#39;
  # @param identifier Identifier of the team
  # @param team_role_identifier Identifier of team role which could be team role &#39;id&#39; or &#39;name&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39;
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39;
  # @option opts [UpdateTeamRolePayload] :body Request payload of update team role
  # @return [SuccessResponse]
  describe 'update_team_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
