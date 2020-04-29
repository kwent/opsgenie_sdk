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

# Unit tests for OpsgenieSdk::AuthenticateIntegrationPayload
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthenticateIntegrationPayload' do
  before do
    # run before each test
    @instance = OpsgenieSdk::AuthenticateIntegrationPayload.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthenticateIntegrationPayload' do
    it 'should create an instance of AuthenticateIntegrationPayload' do
      expect(@instance).to be_instance_of(OpsgenieSdk::AuthenticateIntegrationPayload)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Airbrake", "AlertLogic", "AlertSite", "AmazonCloudTrail", "AmazonEc2AutoScaling", "AmazonRds", "AmazonRoute53HealthCheck", "AmazonSes", "AmazonSns", "AmazonSnsOutgoing", "AmazonSecurityHub", "API", "Apica", "Apimetrics", "AppDynamics", "AppOptics", "AppSignal", "AppSignalV2", "Atatus", "AtlassianBambooEmail", "AutotaskAEMEmail", "AutoTaskEmail", "Azure", "AzureAutoScale", "AzureOMS", "AzureServiceHealth", "AzureResourceHealth", "BigPanda", "Bitbucket", "BlueMatador", "BMCFootPrintsV11", "BMCFootPrintsV12", "BMCRemedy", "BMCRemedyForce", "BMCRemedyOnDemand", "Boundary", "Campfire", "Catchpoint", "CheckMK", "Cherwell", "CircleCi", "Circonus", "CloudMonix", "CloudSploit", "CloudWatch", "CloudWatchEvents", "Codeship", "Compose", "ConnectWise", "ConnectWiseManage", "ConnectWiseManageV2", "ConnectWiseAutomate", "Consul", "CopperEgg", "Crashlytics", "Datadog", "DataloopIO", "Desk", "Detectify", "DNSCheck", "DripStat", "Ruxit", "DynatraceV2", "DynatraceAppMon", "Email", "Errorception", "ESWatcher", "EvidentIO", "Flock", "Flowdock", "FlowdockV2", "Freshdesk", "Freshservice", "GhostInspector", "GitHub", "GitLab", "GoogleStackdriver", "Grafana", "GrafanaV2", "Graylog", "Heartbeat", "HipChat", "HipChatV2", "HipChatAddOn", "Honeybadger", "HostedGraphite", "HPServiceManager", "Humio", "Icinga", "Icinga2", "IncomingCall", "Instana", "Jenkins", "Jira", "JiraServiceDesk", "Kapacitor", "Kayako", "Kore", "LabTechEmail", "Librato", "LibreNMS", "Lightstep", "Logentries", "Loggly", "LogicMonitor", "Logstash", "LogzIO", "Looker", "Loom", "Magentrix", "Marid", "OEC", "Mattermost", "MongoDBCloud", "Monitis", "MonitisEmail", "Moxtra", "MSTeams", "MSTeamsV2", "Nagios", "NagiosV2", "NagiosXI", "NagiosXIV2", "NeustarEmail", "Netuitive", "NewRelic", "NewRelicV2", "NewRelicSyntheticsEmail", "NodePing", "Observium", "ObserviumV2", "OEM", "OEMEmail", "OP5", "OpsDash", "OpsGenie", "Opsview", "PagerDutyCompatibility", "Panopta", "Papertrail", "Pingdom", "PingdomV2", "PingdomWebhook", "Pingometer", "Planio", "Prometheus", "Prtg", "Rackspace", "Raygun", "RedGateSqlMonitorEmail", "Riemann", "Rigor", "RingCentralEmail", "RingCentralGlip", "Rollbar", "Runscope", "SalesForceServiceCloud", "SaltStack", "Scalyr", "Sentry", "SCOM", "Scout", "SematextSpm", "Sensu", "ServerDensity", "ServerGuard24", "ServiceNow", "ServiceNowV2", "ServiceNowV3", "Signalfx", "SignalFXV2", "SignalSciences", "Site24x7", "Slack", "SlackApp", "Soasta", "Solarwinds", "SolarwindsMSPNCentral", "SolarWindsWebHelpDesk", "Splunk", "SplunkITSI", "Stackdriver", "StackStorm", "StatusCake", "StatusHub", "StatusIO", "StatusPageIO", "Statusy", "StruxureWare", "SumoLogic", "SysdigCloud", "ThousandEyes", "ThreatStack", "Thundra", "Tideways", "Trace", "TrackIt", "TravisCI", "Twilio", "UpdownIO", "UptimeRobot", "UptimeRobotEmail", "UptimeWebhook", "UptrendsEmail", "VCenter", "VCSA", "VividCortex", "Wavefront", "WhatsUpGold", "Webhook", "Workato", "XLRelease", "Xmpp", "Zabbix", "Zapier", "Zendesk", "Zenoss", "ZyrionEmail", "ManageEngine"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.type = value }.not_to raise_error
      # end
    end
  end

end
