=begin
#Opsgenie REST API

#Opsgenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'date'

module OpsgenieSdk
  class Alert
    attr_accessor :id

    attr_accessor :tiny_id

    attr_accessor :_alias

    attr_accessor :message

    attr_accessor :status

    attr_accessor :acknowledged

    attr_accessor :is_seen

    attr_accessor :tags

    attr_accessor :snoozed

    attr_accessor :snoozed_until

    attr_accessor :count

    attr_accessor :last_occurred_at

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :source

    attr_accessor :owner

    attr_accessor :priority

    attr_accessor :responders

    attr_accessor :integration

    attr_accessor :report

    attr_accessor :actions

    attr_accessor :entity

    attr_accessor :description

    attr_accessor :details

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'tiny_id' => :'tinyId',
        :'_alias' => :'alias',
        :'message' => :'message',
        :'status' => :'status',
        :'acknowledged' => :'acknowledged',
        :'is_seen' => :'isSeen',
        :'tags' => :'tags',
        :'snoozed' => :'snoozed',
        :'snoozed_until' => :'snoozedUntil',
        :'count' => :'count',
        :'last_occurred_at' => :'lastOccurredAt',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'source' => :'source',
        :'owner' => :'owner',
        :'priority' => :'priority',
        :'responders' => :'responders',
        :'integration' => :'integration',
        :'report' => :'report',
        :'actions' => :'actions',
        :'entity' => :'entity',
        :'description' => :'description',
        :'details' => :'details'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'tiny_id' => :'String',
        :'_alias' => :'String',
        :'message' => :'String',
        :'status' => :'String',
        :'acknowledged' => :'BOOLEAN',
        :'is_seen' => :'BOOLEAN',
        :'tags' => :'Array<String>',
        :'snoozed' => :'BOOLEAN',
        :'snoozed_until' => :'DateTime',
        :'count' => :'Integer',
        :'last_occurred_at' => :'DateTime',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'source' => :'String',
        :'owner' => :'String',
        :'priority' => :'String',
        :'responders' => :'Array<Responder>',
        :'integration' => :'AlertIntegration',
        :'report' => :'AlertReport',
        :'actions' => :'Array<String>',
        :'entity' => :'String',
        :'description' => :'String',
        :'details' => :'Hash<String, String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'tinyId')
        self.tiny_id = attributes[:'tinyId']
      end

      if attributes.has_key?(:'alias')
        self._alias = attributes[:'alias']
      end

      if attributes.has_key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'acknowledged')
        self.acknowledged = attributes[:'acknowledged']
      end

      if attributes.has_key?(:'isSeen')
        self.is_seen = attributes[:'isSeen']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'snoozed')
        self.snoozed = attributes[:'snoozed']
      end

      if attributes.has_key?(:'snoozedUntil')
        self.snoozed_until = attributes[:'snoozedUntil']
      end

      if attributes.has_key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.has_key?(:'lastOccurredAt')
        self.last_occurred_at = attributes[:'lastOccurredAt']
      end

      if attributes.has_key?(:'createdAt')
        self.created_at = attributes[:'createdAt']
      end

      if attributes.has_key?(:'updatedAt')
        self.updated_at = attributes[:'updatedAt']
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.has_key?(:'owner')
        self.owner = attributes[:'owner']
      end

      if attributes.has_key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.has_key?(:'responders')
        if (value = attributes[:'responders']).is_a?(Array)
          self.responders = value
        end
      end

      if attributes.has_key?(:'integration')
        self.integration = attributes[:'integration']
      end

      if attributes.has_key?(:'report')
        self.report = attributes[:'report']
      end

      if attributes.has_key?(:'actions')
        if (value = attributes[:'actions']).is_a?(Array)
          self.actions = value
        end
      end

      if attributes.has_key?(:'entity')
        self.entity = attributes[:'entity']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'details')
        if (value = attributes[:'details']).is_a?(Hash)
          self.details = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          tiny_id == o.tiny_id &&
          _alias == o._alias &&
          message == o.message &&
          status == o.status &&
          acknowledged == o.acknowledged &&
          is_seen == o.is_seen &&
          tags == o.tags &&
          snoozed == o.snoozed &&
          snoozed_until == o.snoozed_until &&
          count == o.count &&
          last_occurred_at == o.last_occurred_at &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          source == o.source &&
          owner == o.owner &&
          priority == o.priority &&
          responders == o.responders &&
          integration == o.integration &&
          report == o.report &&
          actions == o.actions &&
          entity == o.entity &&
          description == o.description &&
          details == o.details
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, tiny_id, _alias, message, status, acknowledged, is_seen, tags, snoozed, snoozed_until, count, last_occurred_at, created_at, updated_at, source, owner, priority, responders, integration, report, actions, entity, description, details].hash
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
