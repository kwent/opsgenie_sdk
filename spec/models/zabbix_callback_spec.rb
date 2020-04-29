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

# Unit tests for OpsgenieSdk::ZabbixCallback
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ZabbixCallback' do
  before do
    # run before each test
    @instance = OpsgenieSdk::ZabbixCallback.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ZabbixCallback' do
    it 'should create an instance of ZabbixCallback' do
      expect(@instance).to be_instance_of(OpsgenieSdk::ZabbixCallback)
    end
  end
  describe 'test attribute "alert_filter"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "alert_actions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "callback_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["bidirectional-callback", "campfire-callback", "flowdock-callback", "flowdock-v2-callback", "planio-callback"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.callback_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "send_alert_actions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "bidirectional_callback_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["connect-wise-callback", "desk-callback", "es-watcher-callback", "hip-chat-add-on-callback", "hip-chat-callback-v2", "icinga2-callback", "icinga-callback", "marid-callback", "mattermost-callback", "nagios-based-v1-callback", "nagios-based-v2-callback", "nagios-xiv1-callback", "nagios-xiv2-callback", "slack-app-callback", "slack-callback", "solarwinds-callback", "solar-winds-web-help-desk-callback", "stackdriver-callback", "status-io-callback", "track-it-callback", "xmpp-callback", "zabbix-callback", "zenoss-callback"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.bidirectional_callback_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "send_via_marid"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "send_via_oec"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
