=begin
#Opsgenie REST API

#Opsgenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'date'

module OpsgenieSdk
  class ZabbixCallback
    attr_accessor :alert_filter

    attr_accessor :alert_actions

    attr_accessor :callback_type

    attr_accessor :send_alert_actions

    attr_accessor :bidirectional_callback_type

    attr_accessor :send_via_marid

    attr_accessor :send_via_oec

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
        :'alert_actions' => :'alertActions',
        :'callback_type' => :'callback-type',
        :'send_alert_actions' => :'sendAlertActions',
        :'bidirectional_callback_type' => :'bidirectional-callback-type',
        :'send_via_marid' => :'sendViaMarid',
        :'send_via_oec' => :'sendViaOEC'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'alert_filter' => :'AlertFilter',
        :'alert_actions' => :'Array<String>',
        :'callback_type' => :'String',
        :'send_alert_actions' => :'BOOLEAN',
        :'bidirectional_callback_type' => :'String',
        :'send_via_marid' => :'BOOLEAN',
        :'send_via_oec' => :'BOOLEAN'
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

      if attributes.has_key?(:'alertActions')
        if (value = attributes[:'alertActions']).is_a?(Array)
          self.alert_actions = value
        end
      end

      if attributes.has_key?(:'callback-type')
        self.callback_type = attributes[:'callback-type']
      end

      if attributes.has_key?(:'sendAlertActions')
        self.send_alert_actions = attributes[:'sendAlertActions']
      end

      if attributes.has_key?(:'bidirectional-callback-type')
        self.bidirectional_callback_type = attributes[:'bidirectional-callback-type']
      end

      if attributes.has_key?(:'sendViaMarid')
        self.send_via_marid = attributes[:'sendViaMarid']
      end

      if attributes.has_key?(:'sendViaOEC')
        self.send_via_oec = attributes[:'sendViaOEC']
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
      callback_type_validator = EnumAttributeValidator.new('String', ['bidirectional-callback', 'campfire-callback', 'flowdock-callback', 'flowdock-v2-callback', 'planio-callback'])
      return false unless callback_type_validator.valid?(@callback_type)
      bidirectional_callback_type_validator = EnumAttributeValidator.new('String', ['connect-wise-callback', 'desk-callback', 'es-watcher-callback', 'hip-chat-add-on-callback', 'hip-chat-callback-v2', 'icinga2-callback', 'icinga-callback', 'marid-callback', 'mattermost-callback', 'nagios-based-v1-callback', 'nagios-based-v2-callback', 'nagios-xiv1-callback', 'nagios-xiv2-callback', 'slack-app-callback', 'slack-callback', 'solarwinds-callback', 'solar-winds-web-help-desk-callback', 'stackdriver-callback', 'status-io-callback', 'track-it-callback', 'xmpp-callback', 'zabbix-callback', 'zenoss-callback'])
      return false unless bidirectional_callback_type_validator.valid?(@bidirectional_callback_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] callback_type Object to be assigned
    def callback_type=(callback_type)
      validator = EnumAttributeValidator.new('String', ['bidirectional-callback', 'campfire-callback', 'flowdock-callback', 'flowdock-v2-callback', 'planio-callback'])
      unless validator.valid?(callback_type)
        fail ArgumentError, 'invalid value for "callback_type", must be one of #{validator.allowable_values}.'
      end
      @callback_type = callback_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bidirectional_callback_type Object to be assigned
    def bidirectional_callback_type=(bidirectional_callback_type)
      validator = EnumAttributeValidator.new('String', ['connect-wise-callback', 'desk-callback', 'es-watcher-callback', 'hip-chat-add-on-callback', 'hip-chat-callback-v2', 'icinga2-callback', 'icinga-callback', 'marid-callback', 'mattermost-callback', 'nagios-based-v1-callback', 'nagios-based-v2-callback', 'nagios-xiv1-callback', 'nagios-xiv2-callback', 'slack-app-callback', 'slack-callback', 'solarwinds-callback', 'solar-winds-web-help-desk-callback', 'stackdriver-callback', 'status-io-callback', 'track-it-callback', 'xmpp-callback', 'zabbix-callback', 'zenoss-callback'])
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
          alert_actions == o.alert_actions &&
          callback_type == o.callback_type &&
          send_alert_actions == o.send_alert_actions &&
          bidirectional_callback_type == o.bidirectional_callback_type &&
          send_via_marid == o.send_via_marid &&
          send_via_oec == o.send_via_oec
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [alert_filter, alert_actions, callback_type, send_alert_actions, bidirectional_callback_type, send_via_marid, send_via_oec].hash
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
