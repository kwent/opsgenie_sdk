=begin
#Opsgenie REST API

#Opsgenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpsgenieSdk::UserContact
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserContact' do
  before do
    # run before each test
    @instance = OpsgenieSdk::UserContact.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserContact' do
    it 'should create an instance of UserContact' do
      expect(@instance).to be_instance_of(OpsgenieSdk::UserContact)
    end
  end
  describe 'test attribute "to"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "contact_method"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["email", "sms", "voice", "mobile"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.contact_method = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "disabled_reason"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "enabled"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
