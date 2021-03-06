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

# Unit tests for OpsgenieSdk::DelayAction
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DelayAction' do
  before do
    # run before each test
    @instance = OpsgenieSdk::DelayAction.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DelayAction' do
    it 'should create an instance of DelayAction' do
      expect(@instance).to be_instance_of(OpsgenieSdk::DelayAction)
    end
  end
  describe 'test attribute "delay_option"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["for-duration", "next-time", "next-weekday", "next-monday", "next-tuesday", "next-wednesday", "next-thursday", "next-friday", "next-saturday", "next-sunday"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.delay_option = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "until_hour"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "until_minute"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "duration"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
