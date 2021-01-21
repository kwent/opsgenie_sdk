=begin
#Opsgenie REST API

#Opsgenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'uri'

module OpsgenieSdk
  class IncidentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Resolve Incident
    # Resolves incident with given identifier
    # @param identifier Identifier of incident which could be incident id or tiny id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;tiny. Default is id&#39; (default to id)
    # @option opts [ResolveIncidentPayload] :body Request payload of closing incident action
    # @return [SuccessResponse]
    def resolve_incident(identifier, opts = {})
      data, _status_code, _headers = resolve_incident_with_http_info(identifier, opts)
      data
    end

    # Resolve Incident
    # Resolves incident with given identifier
    # @param identifier Identifier of incident which could be incident id or tiny id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;tiny. Default is id&#39;
    # @option opts [ResolveIncidentPayload] :body Request payload of closing incident action
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def resolve_incident_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentApi.resolve_incident ...'
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling IncidentApi.resolve_incident"
      end
      if @api_client.config.client_side_validation && opts[:'identifier_type'] && !['id', 'tiny'].include?(opts[:'identifier_type'])
        fail ArgumentError, 'invalid value for "identifier_type", must be one of id, tiny'
      end
      # resource path
      local_var_path = '/v1/incidents/{identifier}/resolve'.sub('{' + 'identifier' + '}', identifier.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentApi#resolve_incident\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Close Incident
    # Closes incident with given identifier
    # @param identifier Identifier of incident which could be incident id or tiny id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;tiny. Default is id&#39; (default to id)
    # @option opts [CloseIncidentPayload] :body Request payload of closing incident action
    # @return [SuccessResponse]
    def close_incident(identifier, opts = {})
      data, _status_code, _headers = close_incident_with_http_info(identifier, opts)
      data
    end

    # Close Incident
    # Closes incident with given identifier
    # @param identifier Identifier of incident which could be incident id or tiny id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;tiny. Default is id&#39;
    # @option opts [CloseIncidentPayload] :body Request payload of closing incident action
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def close_incident_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentApi.close_incident ...'
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling IncidentApi.close_incident"
      end
      if @api_client.config.client_side_validation && opts[:'identifier_type'] && !['id', 'tiny'].include?(opts[:'identifier_type'])
        fail ArgumentError, 'invalid value for "identifier_type", must be one of id, tiny'
      end
      # resource path
      local_var_path = '/v1/incidents/{identifier}/close'.sub('{' + 'identifier' + '}', identifier.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentApi#close_incident\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create Incident
    # Creates a new incident
    # @param body Request payload of created incident
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def create_incident(body, opts = {})
      data, _status_code, _headers = create_incident_with_http_info(body, opts)
      data
    end

    # Create Incident
    # Creates a new incident
    # @param body Request payload of created incident
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def create_incident_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentApi.create_incident ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling IncidentApi.create_incident"
      end
      # resource path
      local_var_path = '/v1/incidents/create'

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
        @api_client.config.logger.debug "API called: IncidentApi#create_incident\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Incident
    # Deletes an incident using incident id or the tiny id
    # @param identifier Identifier of incident which could be incident id or tiny id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;tiny. Default is id&#39; (default to id)
    # @return [SuccessResponse]
    def delete_incident(identifier, opts = {})
      data, _status_code, _headers = delete_incident_with_http_info(identifier, opts)
      data
    end

    # Delete Incident
    # Deletes an incident using incident id or the tiny id
    # @param identifier Identifier of incident which could be incident id or tiny id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;tiny. Default is id&#39;
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def delete_incident_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentApi.delete_incident ...'
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling IncidentApi.delete_incident"
      end
      if @api_client.config.client_side_validation && opts[:'identifier_type'] && !['id', 'tiny'].include?(opts[:'identifier_type'])
        fail ArgumentError, 'invalid value for "identifier_type", must be one of id, tiny'
      end
      # resource path
      local_var_path = '/v1/incidents/{identifier}'.sub('{' + 'identifier' + '}', identifier.to_s)

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
        @api_client.config.logger.debug "API called: IncidentApi#delete_incident\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Incident
    # Returns incident with given id, tiny id or alias
    # @param identifier Identifier of incident which could be incident id or tiny id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;tiny. Default is id&#39; (default to id)
    # @return [GetIncidentResponse]
    def get_incident(identifier, opts = {})
      data, _status_code, _headers = get_incident_with_http_info(identifier, opts)
      data
    end

    # Get Incident
    # Returns incident with given id, tiny id or alias
    # @param identifier Identifier of incident which could be incident id or tiny id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;tiny. Default is id&#39;
    # @return [Array<(GetIncidentResponse, Fixnum, Hash)>] GetIncidentResponse data, response status code and response headers
    def get_incident_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentApi.get_incident ...'
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling IncidentApi.get_incident"
      end
      if @api_client.config.client_side_validation && opts[:'identifier_type'] && !['id', 'tiny'].include?(opts[:'identifier_type'])
        fail ArgumentError, 'invalid value for "identifier_type", must be one of id, tiny'
      end
      # resource path
      local_var_path = '/v1/incidents/{identifier}'.sub('{' + 'identifier' + '}', identifier.to_s)

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
        :return_type => 'GetIncidentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentApi#get_incident\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Request Status of Incident
    # Used to track the status and incident details (if any) of the request whose identifier is given
    # @param request_id Universally unique identifier of the questioned request
    # @param [Hash] opts the optional parameters
    # @return [GetIncidentRequestStatusResponse]
    def get_incident_request_status(request_id, opts = {})
      data, _status_code, _headers = get_incident_request_status_with_http_info(request_id, opts)
      data
    end

    # Get Request Status of Incident
    # Used to track the status and incident details (if any) of the request whose identifier is given
    # @param request_id Universally unique identifier of the questioned request
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetIncidentRequestStatusResponse, Fixnum, Hash)>] GetIncidentRequestStatusResponse data, response status code and response headers
    def get_incident_request_status_with_http_info(request_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentApi.get_incident_request_status ...'
      end
      # verify the required parameter 'request_id' is set
      if @api_client.config.client_side_validation && request_id.nil?
        fail ArgumentError, "Missing the required parameter 'request_id' when calling IncidentApi.get_incident_request_status"
      end
      # resource path
      local_var_path = '/v1/incidents/requests/{requestId}'.sub('{' + 'requestId' + '}', request_id.to_s)

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
        :return_type => 'GetIncidentRequestStatusResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentApi#get_incident_request_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List incidents
    # Return list of incidents
    # @param query Search query to apply while filtering the incidents.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Start index of the result set (to apply pagination). Minimum value (and also default value) is 0.
    # @option opts [Integer] :limit Maximum number of items to provide in the result. Must be a positive integer value. Default value is 20 and maximum value is 100
    # @option opts [String] :sort Name of the field that result set will be sorted by (default to createdAt)
    # @option opts [String] :order Sorting order of the result set (default to desc)
    # @return [ListIncidentsResponse]
    def list_incidents(query, opts = {})
      data, _status_code, _headers = list_incidents_with_http_info(query, opts)
      data
    end

    # List incidents
    # Return list of incidents
    # @param query Search query to apply while filtering the incidents.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Start index of the result set (to apply pagination). Minimum value (and also default value) is 0.
    # @option opts [Integer] :limit Maximum number of items to provide in the result. Must be a positive integer value. Default value is 20 and maximum value is 100
    # @option opts [String] :sort Name of the field that result set will be sorted by
    # @option opts [String] :order Sorting order of the result set
    # @return [Array<(ListIncidentsResponse, Fixnum, Hash)>] ListIncidentsResponse data, response status code and response headers
    def list_incidents_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentApi.list_incidents ...'
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling IncidentApi.list_incidents"
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling IncidentApi.list_incidents, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling IncidentApi.list_incidents, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling IncidentApi.list_incidents, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'sort'] && !['createdAt', 'tinyId', 'message', 'status', 'isSeen', 'owner'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of createdAt, tinyId, message, status, isSeen, owner'
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['asc', 'desc'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of asc, desc'
      end
      # resource path
      local_var_path = '/v1/incidents/'

      # query parameters
      query_params = {}
      query_params[:'query'] = query
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

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
        :return_type => 'ListIncidentsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentApi#list_incidents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
