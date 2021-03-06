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

# Unit tests for OpsgenieSdk::IncidentActionPayload
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'IncidentActionPayload' do
  before do
    # run before each test
    @instance = OpsgenieSdk::IncidentActionPayload.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IncidentActionPayload' do
    it 'should create an instance of IncidentActionPayload' do
      expect(@instance).to be_instance_of(OpsgenieSdk::IncidentActionPayload)
    end
  end
  describe 'test attribute "note"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
