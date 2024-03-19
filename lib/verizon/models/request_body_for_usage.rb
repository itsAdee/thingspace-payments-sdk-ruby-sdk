# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Verizon
  # RequestBodyForUsage Model.
  class RequestBodyForUsage < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[ReadySimDeviceId]]
    attr_accessor :device_id

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :start_time

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :end_time

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['device_id'] = 'deviceId'
      @_hash['start_time'] = 'startTime'
      @_hash['end_time'] = 'endTime'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        device_id
        start_time
        end_time
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(device_id = SKIP,
                   start_time = SKIP,
                   end_time = SKIP)
      @device_id = device_id unless device_id == SKIP
      @start_time = start_time unless start_time == SKIP
      @end_time = end_time unless end_time == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      device_id = nil
      unless hash['deviceId'].nil?
        device_id = []
        hash['deviceId'].each do |structure|
          device_id << (ReadySimDeviceId.from_hash(structure) if structure)
        end
      end

      device_id = SKIP unless hash.key?('deviceId')
      start_time = if hash.key?('startTime')
                     (DateTimeHelper.from_rfc3339(hash['startTime']) if hash['startTime'])
                   else
                     SKIP
                   end
      end_time = if hash.key?('endTime')
                   (DateTimeHelper.from_rfc3339(hash['endTime']) if hash['endTime'])
                 else
                   SKIP
                 end

      # Create object from extracted values.
      RequestBodyForUsage.new(device_id,
                              start_time,
                              end_time)
    end

    def to_custom_start_time
      DateTimeHelper.to_rfc3339(start_time)
    end

    def to_custom_end_time
      DateTimeHelper.to_rfc3339(end_time)
    end
  end
end
