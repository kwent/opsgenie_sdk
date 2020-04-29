=begin
#Opsgenie REST API

#Opsgenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'date'

module OpsgenieSdk
  class PrtgCallback
    attr_accessor :alert_filter

    attr_accessor :forwarding_enabled

    attr_accessor :forwarding_action_mappings

    attr_accessor :callback_type

    attr_accessor :updates_action_mappings

    attr_accessor :updates_enabled

    attr_accessor :bidirectional_callback_type

    attr_accessor :username

    attr_accessor :passhash

    attr_accessor :prtg_url

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'alert_filter' => :'alertFilter',
        :'forwarding_enabled' => :'forwardingEnabled',
        :'forwarding_action_mappings' => :'forwardingActionMappings',
        :'callback_type' => :'callback-type',
        :'updates_action_mappings' => :'updatesActionMappings',
        :'updates_enabled' => :'updatesEnabled',
        :'bidirectional_callback_type' => :'bidirectional-callback-type',
        :'username' => :'username',
        :'passhash' => :'passhash',
        :'prtg_url' => :'prtgUrl'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'alert_filter' => :'AlertFilter',
        :'forwarding_enabled' => :'BOOLEAN',
        :'forwarding_action_mappings' => :'Array<ActionMapping>',
        :'callback_type' => :'String',
        :'updates_action_mappings' => :'Array<ActionMapping>',
        :'updates_enabled' => :'BOOLEAN',
        :'bidirectional_callback_type' => :'String',
        :'username' => :'String',
        :'passhash' => :'String',
        :'prtg_url' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'alertFilter')
        self.alert_filter = attributes[:'alertFilter']
      end

      if attributes.has_key?(:'forwardingEnabled')
        self.forwarding_enabled = attributes[:'forwardingEnabled']
      end

      if attributes.has_key?(:'forwardingActionMappings')
        if (value = attributes[:'forwardingActionMappings']).is_a?(Array)
          self.forwarding_action_mappings = value
        end
      end

      if attributes.has_key?(:'callback-type')
        self.callback_type = attributes[:'callback-type']
      end

      if attributes.has_key?(:'updatesActionMappings')
        if (value = attributes[:'updatesActionMappings']).is_a?(Array)
          self.updates_action_mappings = value
        end
      end

      if attributes.has_key?(:'updatesEnabled')
        self.updates_enabled = attributes[:'updatesEnabled']
      end

      if attributes.has_key?(:'bidirectional-callback-type')
        self.bidirectional_callback_type = attributes[:'bidirectional-callback-type']
      end

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.has_key?(:'passhash')
        self.passhash = attributes[:'passhash']
      end

      if attributes.has_key?(:'prtgUrl')
        self.prtg_url = attributes[:'prtgUrl']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      callback_type_validator = EnumAttributeValidator.new('String', ['amazon-sns-callback', 'base-webhook-callback', 'bidirectional-callback-new', 'bmc-remedy-on-demand-callback', 'oec-callback'])
      return false unless callback_type_validator.valid?(@callback_type)
      bidirectional_callback_type_validator = EnumAttributeValidator.new('String', ['bmc-foot-prints-v11-callback', 'bmc-foot-prints-v12-callback', 'bmc-remedy-callback', 'cherwell-callback', 'circonus-callback', 'connect-wise-manage-callback', 'connect-wise-manage-v2-callback', 'datadog-callback', 'dynatrace-app-mon-callback', 'freshdesk-callback', 'freshservice-callback', 'hp-service-manager-callback', 'jira-callback', 'jira-service-desk-callback', 'kayako-callback', 'libre-nms-callback', 'logic-monitor-callback', 'magentrix-callback', 'ms-teams-callback', 'ms-teams-v2-callback', 'op5-callback', 'ops-genie-callback', 'prtg-callback', 'rollbar-callback', 'sales-force-service-cloud-callback', 'service-now-v2-callback', 'service-now-v3-callback', 'solarwinds-msp-ncentral-callback', 'splunk-callback', 'splunk-itsi-callback', 'status-page-io-callback', 'sumo-logic-callback', 'zendesk-callback'])
      return false unless bidirectional_callback_type_validator.valid?(@bidirectional_callback_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] callback_type Object to be assigned
    def callback_type=(callback_type)
      validator = EnumAttributeValidator.new('String', ['amazon-sns-callback', 'base-webhook-callback', 'bidirectional-callback-new', 'bmc-remedy-on-demand-callback', 'oec-callback'])
      unless validator.valid?(callback_type)
        fail ArgumentError, 'invalid value for "callback_type", must be one of #{validator.allowable_values}.'
      end
      @callback_type = callback_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bidirectional_callback_type Object to be assigned
    def bidirectional_callback_type=(bidirectional_callback_type)
      validator = EnumAttributeValidator.new('String', ['bmc-foot-prints-v11-callback', 'bmc-foot-prints-v12-callback', 'bmc-remedy-callback', 'cherwell-callback', 'circonus-callback', 'connect-wise-manage-callback', 'connect-wise-manage-v2-callback', 'datadog-callback', 'dynatrace-app-mon-callback', 'freshdesk-callback', 'freshservice-callback', 'hp-service-manager-callback', 'jira-callback', 'jira-service-desk-callback', 'kayako-callback', 'libre-nms-callback', 'logic-monitor-callback', 'magentrix-callback', 'ms-teams-callback', 'ms-teams-v2-callback', 'op5-callback', 'ops-genie-callback', 'prtg-callback', 'rollbar-callback', 'sales-force-service-cloud-callback', 'service-now-v2-callback', 'service-now-v3-callback', 'solarwinds-msp-ncentral-callback', 'splunk-callback', 'splunk-itsi-callback', 'status-page-io-callback', 'sumo-logic-callback', 'zendesk-callback'])
      unless validator.valid?(bidirectional_callback_type)
        fail ArgumentError, 'invalid value for "bidirectional_callback_type", must be one of #{validator.allowable_values}.'
      end
      @bidirectional_callback_type = bidirectional_callback_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          alert_filter == o.alert_filter &&
          forwarding_enabled == o.forwarding_enabled &&
          forwarding_action_mappings == o.forwarding_action_mappings &&
          callback_type == o.callback_type &&
          updates_action_mappings == o.updates_action_mappings &&
          updates_enabled == o.updates_enabled &&
          bidirectional_callback_type == o.bidirectional_callback_type &&
          username == o.username &&
          passhash == o.passhash &&
          prtg_url == o.prtg_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [alert_filter, forwarding_enabled, forwarding_action_mappings, callback_type, updates_action_mappings, updates_enabled, bidirectional_callback_type, username, passhash, prtg_url].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = OpsgenieSdk.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
