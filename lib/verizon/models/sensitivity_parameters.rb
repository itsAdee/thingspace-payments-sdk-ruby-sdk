# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Details for sensitivity parameters.
  class SensitivityParameters < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The maximum value of the threshold in the units being measured.
    # @return [Float]
    attr_accessor :abnormal_max_value

    # If abnormal values are being monitored.<br />true - Monitor for abnormal
    # values<br />false - Do not monitor for abnormal values.
    # @return [TrueClass | FalseClass]
    attr_accessor :enable_abnormal

    # If very abnormal values are being monitored.<br />true - Monitor for very
    # abnormal values<br />false - Do not monitor for very abnormal values.
    # @return [TrueClass | FalseClass]
    attr_accessor :enable_very_abnormal

    # The maximum value of the threshold in the units being measured.
    # @return [Float]
    attr_accessor :very_abnormal_max_value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['abnormal_max_value'] = 'abnormalMaxValue'
      @_hash['enable_abnormal'] = 'enableAbnormal'
      @_hash['enable_very_abnormal'] = 'enableVeryAbnormal'
      @_hash['very_abnormal_max_value'] = 'veryAbnormalMaxValue'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        abnormal_max_value
        enable_abnormal
        enable_very_abnormal
        very_abnormal_max_value
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(abnormal_max_value = SKIP,
                   enable_abnormal = SKIP,
                   enable_very_abnormal = SKIP,
                   very_abnormal_max_value = SKIP)
      @abnormal_max_value = abnormal_max_value unless abnormal_max_value == SKIP
      @enable_abnormal = enable_abnormal unless enable_abnormal == SKIP
      @enable_very_abnormal = enable_very_abnormal unless enable_very_abnormal == SKIP
      @very_abnormal_max_value = very_abnormal_max_value unless very_abnormal_max_value == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      abnormal_max_value =
        hash.key?('abnormalMaxValue') ? hash['abnormalMaxValue'] : SKIP
      enable_abnormal =
        hash.key?('enableAbnormal') ? hash['enableAbnormal'] : SKIP
      enable_very_abnormal =
        hash.key?('enableVeryAbnormal') ? hash['enableVeryAbnormal'] : SKIP
      very_abnormal_max_value =
        hash.key?('veryAbnormalMaxValue') ? hash['veryAbnormalMaxValue'] : SKIP

      # Create object from extracted values.
      SensitivityParameters.new(abnormal_max_value,
                                enable_abnormal,
                                enable_very_abnormal,
                                very_abnormal_max_value)
    end
  end
end