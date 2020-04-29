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

# Unit tests for OpsgenieSdk::BMCFootPrintsV12Callback
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BMCFootPrintsV12Callback' do
  before do
    # run before each test
    @instance = OpsgenieSdk::BMCFootPrintsV12Callback.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BMCFootPrintsV12Callback' do
    it 'should create an instance of BMCFootPrintsV12Callback' do
      expect(@instance).to be_instance_of(OpsgenieSdk::BMCFootPrintsV12Callback)
    end
  end
  describe 'test attribute "alert_filter"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "forwarding_enabled"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "forwarding_action_mappings"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "callback_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["amazon-sns-callback", "base-webhook-callback", "bidirectional-callback-new", "bmc-remedy-on-demand-callback", "oec-callback"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.callback_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "updates_action_mappings"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "updates_enabled"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "bidirectional_callback_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["bmc-foot-prints-v11-callback", "bmc-foot-prints-v12-callback", "bmc-remedy-callback", "cherwell-callback", "circonus-callback", "connect-wise-manage-callback", "connect-wise-manage-v2-callback", "datadog-callback", "dynatrace-app-mon-callback", "freshdesk-callback", "freshservice-callback", "hp-service-manager-callback", "jira-callback", "jira-service-desk-callback", "kayako-callback", "libre-nms-callback", "logic-monitor-callback", "magentrix-callback", "ms-teams-callback", "ms-teams-v2-callback", "op5-callback", "ops-genie-callback", "prtg-callback", "rollbar-callback", "sales-force-service-cloud-callback", "service-now-v2-callback", "service-now-v3-callback", "solarwinds-msp-ncentral-callback", "splunk-callback", "splunk-itsi-callback", "status-page-io-callback", "sumo-logic-callback", "zendesk-callback"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.bidirectional_callback_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "username"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "password"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "workspace_name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
