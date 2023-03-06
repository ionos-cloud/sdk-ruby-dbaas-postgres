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
  # Properties of a database cluster.
  class ClusterProperties
  
    # The friendly name of your cluster.
    attr_accessor :display_name


    # The PostgreSQL version of your cluster.
    attr_accessor :postgres_version


    # The physical location where the cluster will be created. This will be where all of your instances live. Property cannot be modified after datacenter creation. 
    attr_accessor :location


    # The DNS name pointing to your cluster.
    attr_accessor :dns_name


    # The S3 location where the backups will be stored.
    attr_accessor :backup_location


    # The total number of instances in the cluster (one master and n-1 standbys). 
    attr_accessor :instances


    # The amount of memory per instance in megabytes. Has to be a multiple of 1024.
    attr_accessor :ram


    # The number of CPU cores per instance.
    attr_accessor :cores


    # The amount of storage per instance in megabytes.
    attr_accessor :storage_size


    attr_accessor :storage_type


    attr_accessor :connections


    attr_accessor :maintenance_window


    attr_accessor :synchronization_mode

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'display_name' => :'displayName',

        :'postgres_version' => :'postgresVersion',

        :'location' => :'location',

        :'dns_name' => :'dnsName',

        :'backup_location' => :'backupLocation',

        :'instances' => :'instances',

        :'ram' => :'ram',

        :'cores' => :'cores',

        :'storage_size' => :'storageSize',

        :'storage_type' => :'storageType',

        :'connections' => :'connections',

        :'maintenance_window' => :'maintenanceWindow',

        :'synchronization_mode' => :'synchronizationMode'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        
        :'display_name' => :'String',

        :'postgres_version' => :'String',

        :'location' => :'String',

        :'dns_name' => :'String',

        :'backup_location' => :'String',

        :'instances' => :'Integer',

        :'ram' => :'Integer',

        :'cores' => :'Integer',

        :'storage_size' => :'Integer',

        :'storage_type' => :'StorageType',

        :'connections' => :'Array<Connection>',

        :'maintenance_window' => :'MaintenanceWindow',

        :'synchronization_mode' => :'SynchronizationMode'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        












      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IonoscloudDbaasPostgres::ClusterProperties` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IonoscloudDbaasPostgres::ClusterProperties`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }
      

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end


      if attributes.key?(:'postgres_version')
        self.postgres_version = attributes[:'postgres_version']
      end


      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end


      if attributes.key?(:'dns_name')
        self.dns_name = attributes[:'dns_name']
      end


      if attributes.key?(:'backup_location')
        self.backup_location = attributes[:'backup_location']
      end


      if attributes.key?(:'instances')
        self.instances = attributes[:'instances']
      end


      if attributes.key?(:'ram')
        self.ram = attributes[:'ram']
      end


      if attributes.key?(:'cores')
        self.cores = attributes[:'cores']
      end


      if attributes.key?(:'storage_size')
        self.storage_size = attributes[:'storage_size']
      end


      if attributes.key?(:'storage_type')
        self.storage_type = attributes[:'storage_type']
      end


      if attributes.key?(:'connections') && (value = attributes[:'connections']).is_a?(Array)
        self.connections = value
      end


      if attributes.key?(:'maintenance_window')
        self.maintenance_window = attributes[:'maintenance_window']
      end


      if attributes.key?(:'synchronization_mode')
        self.synchronization_mode = attributes[:'synchronization_mode']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      





      if !@instances.nil? && @instances > 5
        invalid_properties.push('invalid value for "instances", must be smaller than or equal to 5.')
      end

      if !@instances.nil? && @instances < 1
        invalid_properties.push('invalid value for "instances", must be greater than or equal to 1.')
      end


      if !@ram.nil? && @ram < 2048
        invalid_properties.push('invalid value for "ram", must be greater than or equal to 2048.')
      end


      if !@cores.nil? && @cores < 1
        invalid_properties.push('invalid value for "cores", must be greater than or equal to 1.')
      end


      if !@storage_size.nil? && @storage_size > 2097152
        invalid_properties.push('invalid value for "storage_size", must be smaller than or equal to 2097152.')
      end

      if !@storage_size.nil? && @storage_size < 2048
        invalid_properties.push('invalid value for "storage_size", must be greater than or equal to 2048.')
      end



      if !@connections.nil? && @connections.length > 1
        invalid_properties.push('invalid value for "connections", number of items must be less than or equal to 1.')
      end

      if !@connections.nil? && @connections.length < 1
        invalid_properties.push('invalid value for "connections", number of items must be greater than or equal to 1.')
      end



      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      





      return false if !@instances.nil? && @instances > 5
      return false if !@instances.nil? && @instances < 1

      return false if !@ram.nil? && @ram < 2048

      return false if !@cores.nil? && @cores < 1

      return false if !@storage_size.nil? && @storage_size > 2097152
      return false if !@storage_size.nil? && @storage_size < 2048


      return false if !@connections.nil? && @connections.length > 1
      return false if !@connections.nil? && @connections.length < 1


      true
    end

    





    # Custom attribute writer method with validation
    # @param [Object] instances Value to be assigned
    def instances=(instances)
      if !instances.nil? && instances > 5
        fail ArgumentError, 'invalid value for "instances", must be smaller than or equal to 5.'
      end

      if !instances.nil? && instances < 1
        fail ArgumentError, 'invalid value for "instances", must be greater than or equal to 1.'
      end

      @instances = instances
    end


    # Custom attribute writer method with validation
    # @param [Object] ram Value to be assigned
    def ram=(ram)
      if !ram.nil? && ram < 2048
        fail ArgumentError, 'invalid value for "ram", must be greater than or equal to 2048.'
      end

      @ram = ram
    end


    # Custom attribute writer method with validation
    # @param [Object] cores Value to be assigned
    def cores=(cores)
      if !cores.nil? && cores < 1
        fail ArgumentError, 'invalid value for "cores", must be greater than or equal to 1.'
      end

      @cores = cores
    end


    # Custom attribute writer method with validation
    # @param [Object] storage_size Value to be assigned
    def storage_size=(storage_size)
      if !storage_size.nil? && storage_size > 2097152
        fail ArgumentError, 'invalid value for "storage_size", must be smaller than or equal to 2097152.'
      end

      if !storage_size.nil? && storage_size < 2048
        fail ArgumentError, 'invalid value for "storage_size", must be greater than or equal to 2048.'
      end

      @storage_size = storage_size
    end



    # Custom attribute writer method with validation
    # @param [Object] connections Value to be assigned
    def connections=(connections)
      if !connections.nil? && connections.length > 1
        fail ArgumentError, 'invalid value for "connections", number of items must be less than or equal to 1.'
      end

      if !connections.nil? && connections.length < 1
        fail ArgumentError, 'invalid value for "connections", number of items must be greater than or equal to 1.'
      end

      @connections = connections
    end



    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
        display_name == o.display_name &&
        postgres_version == o.postgres_version &&
        location == o.location &&
        dns_name == o.dns_name &&
        backup_location == o.backup_location &&
        instances == o.instances &&
        ram == o.ram &&
        cores == o.cores &&
        storage_size == o.storage_size &&
        storage_type == o.storage_type &&
        connections == o.connections &&
        maintenance_window == o.maintenance_window &&
        synchronization_mode == o.synchronization_mode
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [display_name, postgres_version, location, dns_name, backup_location, instances, ram, cores, storage_size, storage_type, connections, maintenance_window, synchronization_mode].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = IonoscloudDbaasPostgres.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
