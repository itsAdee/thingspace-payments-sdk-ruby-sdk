# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # A JSON object for each device that was included in the upgrade, showing the
  # device IMEI, the status of the upgrade, and additional information about the
  # status.
  class FirmwareUpgradeDeviceListItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Device IMEI.
    # @return [String]
    attr_accessor :device_id

    # The status of the upgrade for this device.
    # @return [String]
    attr_accessor :status

    # Additional details about the status. Not included when status='Request
    # Pending.'
    # @return [String]
    attr_accessor :result_reason

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['device_id'] = 'deviceId'
      @_hash['status'] = 'status'
      @_hash['result_reason'] = 'resultReason'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        device_id
        status
        result_reason
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(device_id = SKIP,
                   status = SKIP,
                   result_reason = SKIP)
      @device_id = device_id unless device_id == SKIP
      @status = status unless status == SKIP
      @result_reason = result_reason unless result_reason == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      device_id = hash.key?('deviceId') ? hash['deviceId'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      result_reason = hash.key?('resultReason') ? hash['resultReason'] : SKIP

      # Create object from extracted values.
      FirmwareUpgradeDeviceListItem.new(device_id,
                                        status,
                                        result_reason)
    end
  end
end
