# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ChangePmecDeviceProfileBulkRequest Model.
  class ChangePmecDeviceProfileBulkRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :account_name

    # TODO: Write general description for this method
    # @return [Array[MECDeviceList]]
    attr_accessor :device_list

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :new_profile

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['device_list'] = 'deviceList'
      @_hash['new_profile'] = 'newProfile'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = nil,
                   device_list = nil,
                   new_profile = nil)
      @account_name = account_name
      @device_list = device_list
      @new_profile = new_profile
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      # Parameter is an array, so we need to iterate through it
      device_list = nil
      unless hash['deviceList'].nil?
        device_list = []
        hash['deviceList'].each do |structure|
          device_list << (MECDeviceList.from_hash(structure) if structure)
        end
      end

      device_list = nil unless hash.key?('deviceList')
      new_profile = hash.key?('newProfile') ? hash['newProfile'] : nil

      # Create object from extracted values.
      ChangePmecDeviceProfileBulkRequest.new(account_name,
                                             device_list,
                                             new_profile)
    end
  end
end
