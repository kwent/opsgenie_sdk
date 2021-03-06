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

# Unit tests for OpsgenieSdk::TeamLog
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TeamLog' do
  before do
    # run before each test
    @instance = OpsgenieSdk::TeamLog.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TeamLog' do
    it 'should create an instance of TeamLog' do
      expect(@instance).to be_instance_of(OpsgenieSdk::TeamLog)
    end
  end
  describe 'test attribute "offset"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "logs"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
