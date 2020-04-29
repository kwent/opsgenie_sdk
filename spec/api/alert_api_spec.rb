=begin
#Opsgenie REST API

#Opsgenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'spec_helper'
require 'json'

# Unit tests for OpsgenieSdk::AlertApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AlertApi' do
  before do
    # run before each test
    @instance = OpsgenieSdk::AlertApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AlertApi' do
    it 'should create an instance of AlertApi' do
      expect(@instance).to be_instance_of(OpsgenieSdk::AlertApi)
    end
  end

  # unit tests for acknowledge_alert
  # Acknowledge Alert
  # Acknowledges alert with given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @option opts [AcknowledgeAlertPayload] :body Request payload of acknowledging alert action
  # @return [SuccessResponse]
  describe 'acknowledge_alert test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_attachment
  # Add Alert Attachment
  # Add Alert Attachment to related alert
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param file Attachment file to be uploaded
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alert_identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @option opts [String] :user Display name of the request owner
  # @option opts [String] :index_file Name of html file which will be shown when attachment clicked on UI
  # @return [SuccessResponse]
  describe 'add_attachment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_details
  # Add Details
  # Add details to the alert with given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param body Request payload of adding alert details action
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @return [SuccessResponse]
  describe 'add_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_note
  # Add Note
  # Adds note to alert with given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param body Request payload of adding note to alert action
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @return [SuccessResponse]
  describe 'add_note test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_responder
  # Add Responder
  # Add responder to alert with given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param body Request payload of adding responder to alert action
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @return [SuccessResponse]
  describe 'add_responder test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_tags
  # Add Tags
  # Add tags to the alert with given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param body Request payload of creating alert tags action
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @return [SuccessResponse]
  describe 'add_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_team
  # Add Team
  # Add team to alert with given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param body Request payload of adding team to alert action
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @return [SuccessResponse]
  describe 'add_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for assign_alert
  # Assign Alert
  # Assign alert with given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param body Request payload of assigning alert action
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @return [SuccessResponse]
  describe 'assign_alert test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for close_alert
  # Close Alert
  # Closes alert with given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @option opts [CloseAlertPayload] :body Request payload of closing alert action
  # @return [SuccessResponse]
  describe 'close_alert test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for count_alerts
  # Count Alerts
  # Count alerts in Opsgenie
  # @param [Hash] opts the optional parameters
  # @option opts [String] :query Search query to apply while filtering the alerts
  # @option opts [String] :search_identifier Identifier of the saved search query to apply while filtering the alerts
  # @option opts [String] :search_identifier_type Identifier type of the saved search query. Possible values are id and name. Default value is id. If searchIdentifier is not provided, this value is ignored.
  # @return [GetCountAlertsResponse]
  describe 'count_alerts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_alert
  # Create Alert
  # Creates a new alert
  # @param body Request payload of created alert
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'create_alert test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_saved_searches
  # Create Saved Search
  # Create saved search with given fields
  # @param body Request payload of creating saved search
  # @param [Hash] opts the optional parameters
  # @return [CreateSavedSearchResponse]
  describe 'create_saved_searches test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_alert
  # Delete Alert
  # Deletes an alert using alert id, tiny id or alias
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @option opts [String] :user Display name of the request owner
  # @option opts [String] :source Display name of the request source
  # @return [SuccessResponse]
  describe 'delete_alert test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_saved_search
  # Delete Saved Search
  # Deletes saved search using given search identifier
  # @param identifier Identifier of the saved search which could be &#39;id&#39; or &#39;name&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, or &#39;name&#39;
  # @return [SuccessResponse]
  describe 'delete_saved_search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for escalate_alert
  # Escalate Alert
  # Escalate alert with given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param body Request payload of escalating alert action
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @return [SuccessResponse]
  describe 'escalate_alert test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for execute_custom_alert_action
  # Custom Alert Action
  # Custom actions for the alert
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param action_name Name of the action to execute
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @option opts [ExecuteCustomAlertActionPayload] :body Request payload of executing custom alert action
  # @return [SuccessResponse]
  describe 'execute_custom_alert_action test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_alert
  # Get Alert
  # Returns alert with given id, tiny id or alias
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @return [GetAlertResponse]
  describe 'get_alert test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_attachment
  # Get Alert Attachment
  # Get alert attachment name and url for the given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param attachment_id Identifier of alert attachment
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alert_identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @return [GetAlertAttachmentResponse]
  describe 'get_attachment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_request_status
  # Get Request Status of Alert
  # Used to track the status and alert details (if any) of the request whose identifier is given
  # @param request_id Universally unique identifier of the questioned request
  # @param [Hash] opts the optional parameters
  # @return [GetRequestStatusResponse]
  describe 'get_request_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_saved_search
  # Get Saved Search
  # Get saved search for the given search identifier
  # @param identifier Identifier of the saved search which could be &#39;id&#39; or &#39;name&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, or &#39;name&#39;
  # @return [GetSavedSearchResponse]
  describe 'get_saved_search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_alerts
  # List Alerts
  # Returns list of alerts
  # @param [Hash] opts the optional parameters
  # @option opts [String] :query Search query to apply while filtering the alerts
  # @option opts [String] :search_identifier Identifier of the saved search query to apply while filtering the alerts
  # @option opts [String] :search_identifier_type Identifier type of the saved search query. Possible values are &#39;id&#39;, or &#39;name&#39;
  # @option opts [Integer] :offset Start index of the result set (to apply pagination). Minimum value (and also default value) is 0
  # @option opts [Integer] :limit Maximum number of items to provide in the result. Must be a positive integer value. Default value is 20 and maximum value is 100
  # @option opts [String] :sort Name of the field that result set will be sorted by
  # @option opts [String] :order Sorting order of the result set
  # @return [ListAlertsResponse]
  describe 'list_alerts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_attachments
  # List Alert Attachments
  # List alert attachment names and urls for related alert
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alert_identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @return [ListAlertAttachmentsResponse]
  describe 'list_attachments test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_logs
  # List Alert Logs
  # List alert logs for the given alert identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @option opts [String] :offset Starting value of the offset property
  # @option opts [String] :direction Page direction to apply for the given offset with &#39;next&#39; and &#39;prev&#39;
  # @option opts [Integer] :limit Maximum number of items to provide in the result. Must be a positive integer value. Default value is 20 and maximum value is 100
  # @option opts [String] :order Sorting order of the result set
  # @return [ListAlertLogsResponse]
  describe 'list_logs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_notes
  # List Alert Notes
  # List alert notes for the given alert identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @option opts [String] :offset Starting value of the offset property
  # @option opts [String] :direction Page direction to apply for the given offset with &#39;next&#39; and &#39;prev&#39;
  # @option opts [Integer] :limit Maximum number of items to provide in the result. Must be a positive integer value. Default value is 20 and maximum value is 100
  # @option opts [String] :order Sorting order of the result set
  # @return [ListAlertNotesResponse]
  describe 'list_notes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_recipients
  # List Alert Recipients
  # List alert recipients for the given alert identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @return [ListAlertRecipientsResponse]
  describe 'list_recipients test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_saved_searches
  # Lists Saved Searches
  # List all saved searches
  # @param [Hash] opts the optional parameters
  # @return [ListSavedSearchesResponse]
  describe 'list_saved_searches test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_attachment
  # Remove Alert Attachment
  # Remove alert attachment for the given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param attachment_id Identifier of alert attachment
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alert_identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @option opts [String] :user Display name of the request owner
  # @return [SuccessResponse]
  describe 'remove_attachment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_details
  # Remove Details
  # Remove details of the alert with given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param keys Comma separated list of keys to remove from the custom properties of the alert (e.g. &#39;key1,key2&#39;)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @option opts [String] :user Display name of the request owner
  # @option opts [String] :note Additional alert note to add
  # @option opts [String] :source Display name of the request source
  # @return [SuccessResponse]
  describe 'remove_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_tags
  # Remove Tags
  # Remove tags of the alert with given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param tags Tags field of the given alert as comma seperated values (e.g. &#39;tag1, tag2&#39;)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @option opts [String] :user Display name of the request owner
  # @option opts [String] :note Additional alert note to add
  # @option opts [String] :source Display name of the request source
  # @return [SuccessResponse]
  describe 'remove_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for snooze_alert
  # Snooze Alert
  # Snooze alert with given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param body Request payload of snoozing alert action
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @return [SuccessResponse]
  describe 'snooze_alert test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for un_acknowledge_alert
  # UnAcknowledge Alert
  # UnAcknowledge alert with given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @option opts [UnAcknowledgeAlertPayload] :body Request payload of unacknowledging alert action
  # @return [SuccessResponse]
  describe 'un_acknowledge_alert test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_alert_description
  # Update Alert Description
  # Update the description of the alert with given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param body Request payload of update alert description
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @return [SuccessResponse]
  describe 'update_alert_description test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_alert_message
  # Update Alert Message
  # Update the message of the alert with given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param body Request payload of update alert message
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @return [SuccessResponse]
  describe 'update_alert_message test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_alert_priority
  # Update Alert Priority
  # Update the priority of the alert with given identifier
  # @param identifier Identifier of alert which could be alert id, tiny id or alert alias
  # @param body Request payload of update alert priority
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39;
  # @return [SuccessResponse]
  describe 'update_alert_priority test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_saved_search
  # Update Saved Search
  # Update saved search for the given search identifier
  # @param identifier Identifier of the saved search which could be &#39;id&#39; or &#39;name&#39;
  # @param body Request payload of updating saved search
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, or &#39;name&#39;
  # @return [GetSavedSearchResponse]
  describe 'update_saved_search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
