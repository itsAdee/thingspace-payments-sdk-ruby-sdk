# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Status1.
  class Status1Enum
    STATUS1_ENUM = [
      # TODO: Write general description for SUCCESS
      SUCCESS = 'success'.freeze,

      # TODO: Write general description for FAILED
      FAILED = 'failed'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      STATUS1_ENUM.include?(value)
    end
  end
end