=begin
#Opsgenie REST API

#Opsgenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'spec_helper'
require 'json'

# Unit tests for OpsgenieSdk::MaintenanceApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MaintenanceApi' do
  before do
    # run before each test
    @instance = OpsgenieSdk::MaintenanceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MaintenanceApi' do
    it 'should create an instance of MaintenanceApi' do
      expect(@instance).to be_instance_of(OpsgenieSdk::MaintenanceApi)
    end
  end

  # unit tests for cancel_maintenance
  # Cancel Maintenance
  # Cancel maintenance with given id
  # @param id Identifier of the maintenance to be searched
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'cancel_maintenance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_maintenance
  # Create Maintenance
  # Creates a new maintenance
  # @param body Request payload of the maintenance object
  # @param [Hash] opts the optional parameters
  # @return [CreateMaintenanceResponse]
  describe 'create_maintenance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_maintenance
  # Delete Maintenance
  # Delete maintenance with given identifier
  # @param id Identifier of the maintenance to be searched
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'delete_maintenance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_maintenance
  # Get Maintenance
  # Returns maintenance with given id
  # @param id Identifier of the maintenance to be searched
  # @param [Hash] opts the optional parameters
  # @return [GetMaintenanceResponse]
  describe 'get_maintenance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_maintenance
  # List Maintenance
  # List maintenance by type
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type Type of the maintenance list to be searched
  # @return [ListMaintenanceResponse]
  describe 'list_maintenance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_maintenance
  # Update Maintenance
  # Update maintenance with given id
  # @param id Identifier of the maintenance to be searched
  # @param body Request payload of the maintenance object
  # @param [Hash] opts the optional parameters
  # @return [UpdateMaintenanceResponse]
  describe 'update_maintenance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end