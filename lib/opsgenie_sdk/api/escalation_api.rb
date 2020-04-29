=begin
#Opsgenie REST API

#Opsgenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'uri'

module OpsgenieSdk
  class EscalationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Escalation
    # Creates a new escalation
    # @param body Request payload of created escalation
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def create_escalation(body, opts = {})
      data, _status_code, _headers = create_escalation_with_http_info(body, opts)
      data
    end

    # Create Escalation
    # Creates a new escalation
    # @param body Request payload of created escalation
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def create_escalation_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EscalationApi.create_escalation ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling EscalationApi.create_escalation"
      end
      # resource path
      local_var_path = '/v2/escalations'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['GenieKey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EscalationApi#create_escalation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Escalation
    # Deletes an escalation using escalation 'id' or 'name'
    # @param identifier Identifier of escalation which could be escalation &#39;id&#39; or &#39;name&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; (default to id)
    # @return [SuccessResponse]
    def delete_escalation(identifier, opts = {})
      data, _status_code, _headers = delete_escalation_with_http_info(identifier, opts)
      data
    end

    # Delete Escalation
    # Deletes an escalation using escalation &#39;id&#39; or &#39;name&#39;
    # @param identifier Identifier of escalation which could be escalation &#39;id&#39; or &#39;name&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39;
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def delete_escalation_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EscalationApi.delete_escalation ...'
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling EscalationApi.delete_escalation"
      end
      if @api_client.config.client_side_validation && opts[:'identifier_type'] && !['id', 'name'].include?(opts[:'identifier_type'])
        fail ArgumentError, 'invalid value for "identifier_type", must be one of id, name'
      end
      # resource path
      local_var_path = '/v2/escalations/{identifier}'.sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}
      query_params[:'identifierType'] = opts[:'identifier_type'] if !opts[:'identifier_type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['GenieKey']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EscalationApi#delete_escalation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Escalation
    # Returns escalation with given 'id' or 'name'
    # @param identifier Identifier of escalation which could be escalation &#39;id&#39; or &#39;name&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; (default to id)
    # @return [GetEscalationResponse]
    def get_escalation(identifier, opts = {})
      data, _status_code, _headers = get_escalation_with_http_info(identifier, opts)
      data
    end

    # Get Escalation
    # Returns escalation with given &#39;id&#39; or &#39;name&#39;
    # @param identifier Identifier of escalation which could be escalation &#39;id&#39; or &#39;name&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39;
    # @return [Array<(GetEscalationResponse, Fixnum, Hash)>] GetEscalationResponse data, response status code and response headers
    def get_escalation_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EscalationApi.get_escalation ...'
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling EscalationApi.get_escalation"
      end
      if @api_client.config.client_side_validation && opts[:'identifier_type'] && !['id', 'name'].include?(opts[:'identifier_type'])
        fail ArgumentError, 'invalid value for "identifier_type", must be one of id, name'
      end
      # resource path
      local_var_path = '/v2/escalations/{identifier}'.sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}
      query_params[:'identifierType'] = opts[:'identifier_type'] if !opts[:'identifier_type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['GenieKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetEscalationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EscalationApi#get_escalation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Escalations
    # Returns list of escalations
    # @param [Hash] opts the optional parameters
    # @return [ListEscalationsResponse]
    def list_escalations(opts = {})
      data, _status_code, _headers = list_escalations_with_http_info(opts)
      data
    end

    # List Escalations
    # Returns list of escalations
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListEscalationsResponse, Fixnum, Hash)>] ListEscalationsResponse data, response status code and response headers
    def list_escalations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EscalationApi.list_escalations ...'
      end
      # resource path
      local_var_path = '/v2/escalations'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['GenieKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListEscalationsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EscalationApi#list_escalations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update Escalation (Partial)
    # Updates the escalation using escalation 'id' or 'name'
    # @param identifier Identifier of escalation which could be escalation &#39;id&#39; or &#39;name&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; (default to id)
    # @option opts [UpdateEscalationPayload] :body Request payload of update escalation
    # @return [SuccessResponse]
    def update_escalation(identifier, opts = {})
      data, _status_code, _headers = update_escalation_with_http_info(identifier, opts)
      data
    end

    # Update Escalation (Partial)
    # Updates the escalation using escalation &#39;id&#39; or &#39;name&#39;
    # @param identifier Identifier of escalation which could be escalation &#39;id&#39; or &#39;name&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39;
    # @option opts [UpdateEscalationPayload] :body Request payload of update escalation
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def update_escalation_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EscalationApi.update_escalation ...'
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling EscalationApi.update_escalation"
      end
      if @api_client.config.client_side_validation && opts[:'identifier_type'] && !['id', 'name'].include?(opts[:'identifier_type'])
        fail ArgumentError, 'invalid value for "identifier_type", must be one of id, name'
      end
      # resource path
      local_var_path = '/v2/escalations/{identifier}'.sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}
      query_params[:'identifierType'] = opts[:'identifier_type'] if !opts[:'identifier_type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['GenieKey']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EscalationApi#update_escalation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
