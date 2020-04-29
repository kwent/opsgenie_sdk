=begin
#Opsgenie REST API

#Opsgenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'uri'

module OpsgenieSdk
  class MaintenanceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel Maintenance
    # Cancel maintenance with given id
    # @param id Identifier of the maintenance to be searched
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def cancel_maintenance(id, opts = {})
      data, _status_code, _headers = cancel_maintenance_with_http_info(id, opts)
      data
    end

    # Cancel Maintenance
    # Cancel maintenance with given id
    # @param id Identifier of the maintenance to be searched
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def cancel_maintenance_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaintenanceApi.cancel_maintenance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MaintenanceApi.cancel_maintenance"
      end
      # resource path
      local_var_path = '/v1/maintenance/{id}/cancel'.sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaintenanceApi#cancel_maintenance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create Maintenance
    # Creates a new maintenance
    # @param body Request payload of the maintenance object
    # @param [Hash] opts the optional parameters
    # @return [CreateMaintenanceResponse]
    def create_maintenance(body, opts = {})
      data, _status_code, _headers = create_maintenance_with_http_info(body, opts)
      data
    end

    # Create Maintenance
    # Creates a new maintenance
    # @param body Request payload of the maintenance object
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateMaintenanceResponse, Fixnum, Hash)>] CreateMaintenanceResponse data, response status code and response headers
    def create_maintenance_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaintenanceApi.create_maintenance ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MaintenanceApi.create_maintenance"
      end
      # resource path
      local_var_path = '/v1/maintenance'

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
        :return_type => 'CreateMaintenanceResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaintenanceApi#create_maintenance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Maintenance
    # Delete maintenance with given identifier
    # @param id Identifier of the maintenance to be searched
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def delete_maintenance(id, opts = {})
      data, _status_code, _headers = delete_maintenance_with_http_info(id, opts)
      data
    end

    # Delete Maintenance
    # Delete maintenance with given identifier
    # @param id Identifier of the maintenance to be searched
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def delete_maintenance_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaintenanceApi.delete_maintenance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MaintenanceApi.delete_maintenance"
      end
      # resource path
      local_var_path = '/v1/maintenance/{id}'.sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaintenanceApi#delete_maintenance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Maintenance
    # Returns maintenance with given id
    # @param id Identifier of the maintenance to be searched
    # @param [Hash] opts the optional parameters
    # @return [GetMaintenanceResponse]
    def get_maintenance(id, opts = {})
      data, _status_code, _headers = get_maintenance_with_http_info(id, opts)
      data
    end

    # Get Maintenance
    # Returns maintenance with given id
    # @param id Identifier of the maintenance to be searched
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetMaintenanceResponse, Fixnum, Hash)>] GetMaintenanceResponse data, response status code and response headers
    def get_maintenance_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaintenanceApi.get_maintenance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MaintenanceApi.get_maintenance"
      end
      # resource path
      local_var_path = '/v1/maintenance/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'GetMaintenanceResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaintenanceApi#get_maintenance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Maintenance
    # List maintenance by type
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Type of the maintenance list to be searched (default to [all])
    # @return [ListMaintenanceResponse]
    def list_maintenance(opts = {})
      data, _status_code, _headers = list_maintenance_with_http_info(opts)
      data
    end

    # List Maintenance
    # List maintenance by type
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Type of the maintenance list to be searched
    # @return [Array<(ListMaintenanceResponse, Fixnum, Hash)>] ListMaintenanceResponse data, response status code and response headers
    def list_maintenance_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaintenanceApi.list_maintenance ...'
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['all', 'past', 'non-expired'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of all, past, non-expired'
      end
      # resource path
      local_var_path = '/v1/maintenance'

      # query parameters
      query_params = {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

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
        :return_type => 'ListMaintenanceResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaintenanceApi#list_maintenance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update Maintenance
    # Update maintenance with given id
    # @param id Identifier of the maintenance to be searched
    # @param body Request payload of the maintenance object
    # @param [Hash] opts the optional parameters
    # @return [UpdateMaintenanceResponse]
    def update_maintenance(id, body, opts = {})
      data, _status_code, _headers = update_maintenance_with_http_info(id, body, opts)
      data
    end

    # Update Maintenance
    # Update maintenance with given id
    # @param id Identifier of the maintenance to be searched
    # @param body Request payload of the maintenance object
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpdateMaintenanceResponse, Fixnum, Hash)>] UpdateMaintenanceResponse data, response status code and response headers
    def update_maintenance_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaintenanceApi.update_maintenance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MaintenanceApi.update_maintenance"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MaintenanceApi.update_maintenance"
      end
      # resource path
      local_var_path = '/v1/maintenance/{id}'.sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UpdateMaintenanceResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaintenanceApi#update_maintenance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end