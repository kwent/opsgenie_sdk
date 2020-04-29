=begin
#Opsgenie REST API

#Opsgenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'date'

module OpsgenieSdk
  class EmailBasedIncomingFeature
    # If enabled, notifications that come from alerts will be suppressed. Defaults to false
    attr_accessor :suppress_notifications

    # If enabled, the integration will ignore teams sent in request payloads. Defaults to false
    attr_accessor :ignore_teams_from_payload

    # If enabled, the integration will ignore recipients sent in request payloads. Defaults to false
    attr_accessor :ignore_recipients_from_payload

    # Optional user, schedule, teams or escalation names to calculate which users will receive the notifications of the alert. Recipients which are exceeding the limit are ignored
    attr_accessor :recipients

    attr_accessor :is_advanced

    attr_accessor :ignore_responders_from_payload

    attr_accessor :ignore_tags_from_payload

    attr_accessor :ignore_extra_properties_from_payload

    attr_accessor :responders

    attr_accessor :priority

    attr_accessor :custom_priority

    attr_accessor :tags

    attr_accessor :extra_properties

    attr_accessor :assigned_team

    attr_accessor :feature_type

    attr_accessor :email_address

    # The username part of the email address. It must be unique for each integration
    attr_accessor :email_username

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
        :'suppress_notifications' => :'suppressNotifications',
        :'ignore_teams_from_payload' => :'ignoreTeamsFromPayload',
        :'ignore_recipients_from_payload' => :'ignoreRecipientsFromPayload',
        :'recipients' => :'recipients',
        :'is_advanced' => :'isAdvanced',
        :'ignore_responders_from_payload' => :'ignoreRespondersFromPayload',
        :'ignore_tags_from_payload' => :'ignoreTagsFromPayload',
        :'ignore_extra_properties_from_payload' => :'ignoreExtraPropertiesFromPayload',
        :'responders' => :'responders',
        :'priority' => :'priority',
        :'custom_priority' => :'customPriority',
        :'tags' => :'tags',
        :'extra_properties' => :'extraProperties',
        :'assigned_team' => :'assignedTeam',
        :'feature_type' => :'feature-type',
        :'email_address' => :'emailAddress',
        :'email_username' => :'emailUsername'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'suppress_notifications' => :'BOOLEAN',
        :'ignore_teams_from_payload' => :'BOOLEAN',
        :'ignore_recipients_from_payload' => :'BOOLEAN',
        :'recipients' => :'Array<Recipient>',
        :'is_advanced' => :'BOOLEAN',
        :'ignore_responders_from_payload' => :'BOOLEAN',
        :'ignore_tags_from_payload' => :'BOOLEAN',
        :'ignore_extra_properties_from_payload' => :'BOOLEAN',
        :'responders' => :'Array<Recipient>',
        :'priority' => :'String',
        :'custom_priority' => :'String',
        :'tags' => :'Array<String>',
        :'extra_properties' => :'Hash<String, String>',
        :'assigned_team' => :'TeamMeta',
        :'feature_type' => :'String',
        :'email_address' => :'String',
        :'email_username' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'suppressNotifications')
        self.suppress_notifications = attributes[:'suppressNotifications']
      end

      if attributes.has_key?(:'ignoreTeamsFromPayload')
        self.ignore_teams_from_payload = attributes[:'ignoreTeamsFromPayload']
      end

      if attributes.has_key?(:'ignoreRecipientsFromPayload')
        self.ignore_recipients_from_payload = attributes[:'ignoreRecipientsFromPayload']
      end

      if attributes.has_key?(:'recipients')
        if (value = attributes[:'recipients']).is_a?(Array)
          self.recipients = value
        end
      end

      if attributes.has_key?(:'isAdvanced')
        self.is_advanced = attributes[:'isAdvanced']
      end

      if attributes.has_key?(:'ignoreRespondersFromPayload')
        self.ignore_responders_from_payload = attributes[:'ignoreRespondersFromPayload']
      end

      if attributes.has_key?(:'ignoreTagsFromPayload')
        self.ignore_tags_from_payload = attributes[:'ignoreTagsFromPayload']
      end

      if attributes.has_key?(:'ignoreExtraPropertiesFromPayload')
        self.ignore_extra_properties_from_payload = attributes[:'ignoreExtraPropertiesFromPayload']
      end

      if attributes.has_key?(:'responders')
        if (value = attributes[:'responders']).is_a?(Array)
          self.responders = value
        end
      end

      if attributes.has_key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.has_key?(:'customPriority')
        self.custom_priority = attributes[:'customPriority']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'extraProperties')
        if (value = attributes[:'extraProperties']).is_a?(Hash)
          self.extra_properties = value
        end
      end

      if attributes.has_key?(:'assignedTeam')
        self.assigned_team = attributes[:'assignedTeam']
      end

      if attributes.has_key?(:'feature-type')
        self.feature_type = attributes[:'feature-type']
      end

      if attributes.has_key?(:'emailAddress')
        self.email_address = attributes[:'emailAddress']
      end

      if attributes.has_key?(:'emailUsername')
        self.email_username = attributes[:'emailUsername']
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
      feature_type_validator = EnumAttributeValidator.new('String', ['email-based', 'token-based'])
      return false unless feature_type_validator.valid?(@feature_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] feature_type Object to be assigned
    def feature_type=(feature_type)
      validator = EnumAttributeValidator.new('String', ['email-based', 'token-based'])
      unless validator.valid?(feature_type)
        fail ArgumentError, 'invalid value for "feature_type", must be one of #{validator.allowable_values}.'
      end
      @feature_type = feature_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          suppress_notifications == o.suppress_notifications &&
          ignore_teams_from_payload == o.ignore_teams_from_payload &&
          ignore_recipients_from_payload == o.ignore_recipients_from_payload &&
          recipients == o.recipients &&
          is_advanced == o.is_advanced &&
          ignore_responders_from_payload == o.ignore_responders_from_payload &&
          ignore_tags_from_payload == o.ignore_tags_from_payload &&
          ignore_extra_properties_from_payload == o.ignore_extra_properties_from_payload &&
          responders == o.responders &&
          priority == o.priority &&
          custom_priority == o.custom_priority &&
          tags == o.tags &&
          extra_properties == o.extra_properties &&
          assigned_team == o.assigned_team &&
          feature_type == o.feature_type &&
          email_address == o.email_address &&
          email_username == o.email_username
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [suppress_notifications, ignore_teams_from_payload, ignore_recipients_from_payload, recipients, is_advanced, ignore_responders_from_payload, ignore_tags_from_payload, ignore_extra_properties_from_payload, responders, priority, custom_priority, tags, extra_properties, assigned_team, feature_type, email_address, email_username].hash
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
