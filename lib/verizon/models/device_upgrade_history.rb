# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Firmware upgrade information.
  class DeviceUpgradeHistory < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Device IMEI.
    # @return [String]
    attr_accessor :device_id

    # The unique identifier for the upgrade.
    # @return [String]
    attr_accessor :id

    # The name (number) of the billing account that the device belongs to.
    # @return [String]
    attr_accessor :account_name

    # The firmware version that was on the device before the upgrade.
    # @return [String]
    attr_accessor :firmware_from

    # The name of the firmware version that was on the device after the upgrade.
    # @return [String]
    attr_accessor :firmware_to

    # The date of the upgrade.
    # @return [String]
    attr_accessor :start_date

    # The date and time that the upgrade actually started for this device.
    # @return [String]
    attr_accessor :upgrade_start_time

    # The status of the upgrade for this device.
    # @return [String]
    attr_accessor :status

    # More information about the status.
    # @return [String]
    attr_accessor :reason

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['device_id'] = 'deviceId'
      @_hash['id'] = 'id'
      @_hash['account_name'] = 'accountName'
      @_hash['firmware_from'] = 'firmwareFrom'
      @_hash['firmware_to'] = 'firmwareTo'
      @_hash['start_date'] = 'startDate'
      @_hash['upgrade_start_time'] = 'upgradeStartTime'
      @_hash['status'] = 'status'
      @_hash['reason'] = 'reason'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        device_id
        id
        account_name
        firmware_from
        firmware_to
        start_date
        upgrade_start_time
        status
        reason
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(device_id = SKIP,
                   id = SKIP,
                   account_name = SKIP,
                   firmware_from = SKIP,
                   firmware_to = SKIP,
                   start_date = SKIP,
                   upgrade_start_time = SKIP,
                   status = SKIP,
                   reason = SKIP)
      @device_id = device_id unless device_id == SKIP
      @id = id unless id == SKIP
      @account_name = account_name unless account_name == SKIP
      @firmware_from = firmware_from unless firmware_from == SKIP
      @firmware_to = firmware_to unless firmware_to == SKIP
      @start_date = start_date unless start_date == SKIP
      @upgrade_start_time = upgrade_start_time unless upgrade_start_time == SKIP
      @status = status unless status == SKIP
      @reason = reason unless reason == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      device_id = hash.key?('deviceId') ? hash['deviceId'] : SKIP
      id = hash.key?('id') ? hash['id'] : SKIP
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP
      firmware_from = hash.key?('firmwareFrom') ? hash['firmwareFrom'] : SKIP
      firmware_to = hash.key?('firmwareTo') ? hash['firmwareTo'] : SKIP
      start_date = hash.key?('startDate') ? hash['startDate'] : SKIP
      upgrade_start_time =
        hash.key?('upgradeStartTime') ? hash['upgradeStartTime'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      reason = hash.key?('reason') ? hash['reason'] : SKIP

      # Create object from extracted values.
      DeviceUpgradeHistory.new(device_id,
                               id,
                               account_name,
                               firmware_from,
                               firmware_to,
                               start_date,
                               upgrade_start_time,
                               status,
                               reason)
    end
  end
end
