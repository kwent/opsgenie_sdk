=begin
#Opsgenie REST API

#Opsgenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'spec_helper'
require 'json'

# Unit tests for OpsgenieSdk::ForwardingRuleApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ForwardingRuleApi' do
  before do
    # run before each test
    @instance = OpsgenieSdk::ForwardingRuleApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ForwardingRuleApi' do
    it 'should create an instance of ForwardingRuleApi' do
      expect(@instance).to be_instance_of(OpsgenieSdk::ForwardingRuleApi)
    end
  end

  # unit tests for create_forwarding_rule
  # Create Forwarding Rule
  # Creates a new forwarding rule
  # @param body Request payload to created forwarding rule
  # @param [Hash] opts the optional parameters
  # @return [CreateForwardingRuleResponse]
  describe 'create_forwarding_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_forwarding_rule
  # Delete Forwarding Rule
  # Deletes forwarding rule with given identifier
  # @param identifier Identifier of the forwarding rule which could be forwarding rule &#39;id&#39; or &#39;alias&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;alias&#39;
  # @return [SuccessResponse]
  describe 'delete_forwarding_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_forwarding_rule
  # Get Forwarding Rule
  # Returns forwarding rule with given id or alias
  # @param identifier Identifier of the forwarding rule which could be forwarding rule &#39;id&#39; or &#39;alias&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;alias&#39;
  # @return [GetForwardingRuleResponse]
  describe 'get_forwarding_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_forwarding_rules
  # List Forwarding Rules
  # Returns list of forwarding rules
  # @param [Hash] opts the optional parameters
  # @return [ListForwardingRulesResponse]
  describe 'list_forwarding_rules test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_forwarding_rule
  # Update Forwarding Rule
  # Update forwarding rule with given rule id or alias
  # @param identifier Identifier of the forwarding rule which could be forwarding rule &#39;id&#39; or &#39;alias&#39;
  # @param body Request payload of update forwarding rule action
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;alias&#39;
  # @return [SuccessResponse]
  describe 'update_forwarding_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
