=begin
#Opsgenie REST API

#Opsgenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'date'

module OpsgenieSdk
  class TraceIntegration
    # Type of the integration. (For instance, \"API\" for API Integration)
    attr_accessor :type

    attr_accessor :id

    # Name of the integration. Name must be unique for each integration
    attr_accessor :name

    # This parameter is for specifying whether the integration will be enabled or not
    attr_accessor :enabled

    attr_accessor :owner_team

    attr_accessor :is_global

    attr_accessor :_read_only

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
        :'type' => :'type',
        :'id' => :'id',
        :'name' => :'name',
        :'enabled' => :'enabled',
        :'owner_team' => :'ownerTeam',
        :'is_global' => :'isGlobal',
        :'_read_only' => :'_readOnly'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String',
        :'id' => :'String',
        :'name' => :'String',
        :'enabled' => :'BOOLEAN',
        :'owner_team' => :'TeamMeta',
        :'is_global' => :'BOOLEAN',
        :'_read_only' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.has_key?(:'ownerTeam')
        self.owner_team = attributes[:'ownerTeam']
      end

      if attributes.has_key?(:'isGlobal')
        self.is_global = attributes[:'isGlobal']
      end

      if attributes.has_key?(:'_readOnly')
        if (value = attributes[:'_readOnly']).is_a?(Array)
          self._read_only = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ['Airbrake', 'AlertLogic', 'AlertSite', 'AmazonCloudTrail', 'AmazonEc2AutoScaling', 'AmazonRds', 'AmazonRoute53HealthCheck', 'AmazonSecurityHub', 'AmazonSes', 'AmazonSns', 'AmazonSnsOutgoing', 'API', 'Apica', 'Apimetrics', 'AppDynamics', 'AppOptics', 'AppSignal', 'AppSignalV2', 'Atatus', 'AtlassianBambooEmail', 'AutotaskAEMEmail', 'AutoTaskEmail', 'Azure', 'AzureAutoScale', 'AzureOMS', 'AzureResourceHealth', 'AzureServiceHealth', 'BigPanda', 'Bitbucket', 'BlueMatador', 'BMCFootPrintsV11', 'BMCFootPrintsV12', 'BMCRemedy', 'BMCRemedyForce', 'BMCRemedyOnDemand', 'Boundary', 'Campfire', 'Catchpoint', 'CheckMK', 'Cherwell', 'CircleCi', 'Circonus', 'CloudMonix', 'CloudSploit', 'CloudWatch', 'CloudWatchEvents', 'Codeship', 'Compose', 'ConnectWise', 'ConnectWiseAutomate', 'ConnectWiseManage', 'ConnectWiseManageV2', 'Consul', 'CopperEgg', 'Crashlytics', 'Datadog', 'DataloopIO', 'Desk', 'Detectify', 'DNSCheck', 'DripStat', 'DynatraceAppMon', 'DynatraceV2', 'Email', 'Errorception', 'ESWatcher', 'EvidentIO', 'Flock', 'Flowdock', 'FlowdockV2', 'Freshdesk', 'Freshservice', 'GhostInspector', 'GitHub', 'GitLab', 'GoogleStackdriver', 'Grafana', 'GrafanaV2', 'Graylog', 'Heartbeat', 'HipChat', 'HipChatAddOn', 'HipChatV2', 'Honeybadger', 'HostedGraphite', 'HPServiceManager', 'Humio', 'Icinga', 'Icinga2', 'IncomingCall', 'Instana', 'Jenkins', 'Jira', 'JiraServiceDesk', 'Kapacitor', 'Kayako', 'Kore', 'LabTechEmail', 'Librato', 'LibreNMS', 'Lightstep', 'Logentries', 'Loggly', 'LogicMonitor', 'Logstash', 'LogzIO', 'Looker', 'Loom', 'Magentrix', 'ManageEngine', 'Marid', 'Mattermost', 'MongoDBCloud', 'Monitis', 'MonitisEmail', 'Moxtra', 'MSTeams', 'MSTeamsV2', 'Nagios', 'NagiosV2', 'NagiosXI', 'NagiosXIV2', 'Netuitive', 'NeustarEmail', 'NewRelic', 'NewRelicV2', 'NodePing', 'Observium', 'ObserviumV2', 'OEC', 'OEM', 'OEMEmail', 'OP5', 'OpsDash', 'OpsGenie', 'Opsview', 'PagerDutyCompatibility', 'Panopta', 'Papertrail', 'Pingdom', 'PingdomV2', 'PingdomWebhook', 'Pingometer', 'Planio', 'Prometheus', 'Prtg', 'Rackspace', 'Raygun', 'RedGateSqlMonitorEmail', 'Riemann', 'Rigor', 'RingCentralEmail', 'RingCentralGlip', 'Rollbar', 'Runscope', 'Ruxit', 'SalesForceServiceCloud', 'SaltStack', 'Scalyr', 'SCOM', 'Scout', 'SematextSpm', 'Sensu', 'Sentry', 'ServerDensity', 'ServerGuard24', 'ServiceNow', 'ServiceNowV2', 'ServiceNowV3', 'Signalfx', 'SignalFXV2', 'SignalSciences', 'Site24x7', 'Slack', 'SlackApp', 'Soasta', 'Solarwinds', 'SolarwindsMSPNCentral', 'SolarWindsWebHelpDesk', 'Splunk', 'SplunkITSI', 'Stackdriver', 'StackStorm', 'StatusCake', 'StatusHub', 'StatusIO', 'StatusPageIO', 'Statusy', 'StruxureWare', 'SumoLogic', 'SysdigCloud', 'ThousandEyes', 'ThreatStack', 'Thundra', 'Tideways', 'Trace', 'TrackIt', 'TravisCI', 'Twilio', 'UpdownIO', 'UptimeRobot', 'UptimeRobotEmail', 'UptimeWebhook', 'UptrendsEmail', 'VCenter', 'VCSA', 'VividCortex', 'Wavefront', 'Webhook', 'WhatsUpGold', 'Workato', 'XLRelease', 'Xmpp', 'Zabbix', 'Zapier', 'Zendesk', 'Zenoss', 'ZyrionEmail'])
      return false unless type_validator.valid?(@type)
      return false if @name.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['Airbrake', 'AlertLogic', 'AlertSite', 'AmazonCloudTrail', 'AmazonEc2AutoScaling', 'AmazonRds', 'AmazonRoute53HealthCheck', 'AmazonSecurityHub', 'AmazonSes', 'AmazonSns', 'AmazonSnsOutgoing', 'API', 'Apica', 'Apimetrics', 'AppDynamics', 'AppOptics', 'AppSignal', 'AppSignalV2', 'Atatus', 'AtlassianBambooEmail', 'AutotaskAEMEmail', 'AutoTaskEmail', 'Azure', 'AzureAutoScale', 'AzureOMS', 'AzureResourceHealth', 'AzureServiceHealth', 'BigPanda', 'Bitbucket', 'BlueMatador', 'BMCFootPrintsV11', 'BMCFootPrintsV12', 'BMCRemedy', 'BMCRemedyForce', 'BMCRemedyOnDemand', 'Boundary', 'Campfire', 'Catchpoint', 'CheckMK', 'Cherwell', 'CircleCi', 'Circonus', 'CloudMonix', 'CloudSploit', 'CloudWatch', 'CloudWatchEvents', 'Codeship', 'Compose', 'ConnectWise', 'ConnectWiseAutomate', 'ConnectWiseManage', 'ConnectWiseManageV2', 'Consul', 'CopperEgg', 'Crashlytics', 'Datadog', 'DataloopIO', 'Desk', 'Detectify', 'DNSCheck', 'DripStat', 'DynatraceAppMon', 'DynatraceV2', 'Email', 'Errorception', 'ESWatcher', 'EvidentIO', 'Flock', 'Flowdock', 'FlowdockV2', 'Freshdesk', 'Freshservice', 'GhostInspector', 'GitHub', 'GitLab', 'GoogleStackdriver', 'Grafana', 'GrafanaV2', 'Graylog', 'Heartbeat', 'HipChat', 'HipChatAddOn', 'HipChatV2', 'Honeybadger', 'HostedGraphite', 'HPServiceManager', 'Humio', 'Icinga', 'Icinga2', 'IncomingCall', 'Instana', 'Jenkins', 'Jira', 'JiraServiceDesk', 'Kapacitor', 'Kayako', 'Kore', 'LabTechEmail', 'Librato', 'LibreNMS', 'Lightstep', 'Logentries', 'Loggly', 'LogicMonitor', 'Logstash', 'LogzIO', 'Looker', 'Loom', 'Magentrix', 'ManageEngine', 'Marid', 'Mattermost', 'MongoDBCloud', 'Monitis', 'MonitisEmail', 'Moxtra', 'MSTeams', 'MSTeamsV2', 'Nagios', 'NagiosV2', 'NagiosXI', 'NagiosXIV2', 'Netuitive', 'NeustarEmail', 'NewRelic', 'NewRelicV2', 'NodePing', 'Observium', 'ObserviumV2', 'OEC', 'OEM', 'OEMEmail', 'OP5', 'OpsDash', 'OpsGenie', 'Opsview', 'PagerDutyCompatibility', 'Panopta', 'Papertrail', 'Pingdom', 'PingdomV2', 'PingdomWebhook', 'Pingometer', 'Planio', 'Prometheus', 'Prtg', 'Rackspace', 'Raygun', 'RedGateSqlMonitorEmail', 'Riemann', 'Rigor', 'RingCentralEmail', 'RingCentralGlip', 'Rollbar', 'Runscope', 'Ruxit', 'SalesForceServiceCloud', 'SaltStack', 'Scalyr', 'SCOM', 'Scout', 'SematextSpm', 'Sensu', 'Sentry', 'ServerDensity', 'ServerGuard24', 'ServiceNow', 'ServiceNowV2', 'ServiceNowV3', 'Signalfx', 'SignalFXV2', 'SignalSciences', 'Site24x7', 'Slack', 'SlackApp', 'Soasta', 'Solarwinds', 'SolarwindsMSPNCentral', 'SolarWindsWebHelpDesk', 'Splunk', 'SplunkITSI', 'Stackdriver', 'StackStorm', 'StatusCake', 'StatusHub', 'StatusIO', 'StatusPageIO', 'Statusy', 'StruxureWare', 'SumoLogic', 'SysdigCloud', 'ThousandEyes', 'ThreatStack', 'Thundra', 'Tideways', 'Trace', 'TrackIt', 'TravisCI', 'Twilio', 'UpdownIO', 'UptimeRobot', 'UptimeRobotEmail', 'UptimeWebhook', 'UptrendsEmail', 'VCenter', 'VCSA', 'VividCortex', 'Wavefront', 'Webhook', 'WhatsUpGold', 'Workato', 'XLRelease', 'Xmpp', 'Zabbix', 'Zapier', 'Zendesk', 'Zenoss', 'ZyrionEmail'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          id == o.id &&
          name == o.name &&
          enabled == o.enabled &&
          owner_team == o.owner_team &&
          is_global == o.is_global &&
          _read_only == o._read_only
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, id, name, enabled, owner_team, is_global, _read_only].hash
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
