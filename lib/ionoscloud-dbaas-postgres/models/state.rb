=begin
#IONOS DBaaS PostgreSQL REST API

#An enterprise-grade Database is provided as a Service (DBaaS) solution that can be managed through a browser-based \"Data Center Designer\" (DCD) tool or via an easy to use API.  The API allows you to create additional PostgreSQL database clusters or modify existing ones. It is designed to allow users to leverage the same power and flexibility found within the DCD visual tool. Both tools are consistent with their concepts and lend well to making the experience smooth and intuitive. 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'date'
require 'time'

module IonoscloudDbaasPostgres
  class State
    AVAILABLE = "AVAILABLE".freeze
    BUSY = "BUSY".freeze
    DESTROYING = "DESTROYING".freeze
    DEGRADED = "DEGRADED".freeze
    FAILED = "FAILED".freeze
    UNKNOWN = "UNKNOWN".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = State.constants.select { |c| State::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #State" if constantValues.empty?
      value
    end
  end
end
