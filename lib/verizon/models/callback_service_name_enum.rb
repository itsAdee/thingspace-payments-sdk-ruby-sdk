# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # The name of the callback service.
  class CallbackServiceNameEnum
    CALLBACK_SERVICE_NAME_ENUM = [
      # TODO: Write general description for LOCATION
      LOCATION = 'Location'.freeze,

      # TODO: Write general description for DEVICELOCATION
      DEVICELOCATION = 'DeviceLocation'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CALLBACK_SERVICE_NAME_ENUM.include?(value)
    end
  end
end