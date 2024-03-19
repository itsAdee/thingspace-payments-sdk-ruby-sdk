# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Result for a request to obtain device extended diagnostics.
  class DeviceExtendedDiagnosticsResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The response includes various types of information about the device,
    # grouped into categories. Each category object contains the category name
    # and a list of Extended Attribute objects as key-value pairs.
    # @return [Array[DiagnosticsCategory]]
    attr_accessor :categories

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['categories'] = 'categories'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        categories
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(categories = SKIP)
      @categories = categories unless categories == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      categories = nil
      unless hash['categories'].nil?
        categories = []
        hash['categories'].each do |structure|
          categories << (DiagnosticsCategory.from_hash(structure) if structure)
        end
      end

      categories = SKIP unless hash.key?('categories')

      # Create object from extracted values.
      DeviceExtendedDiagnosticsResult.new(categories)
    end
  end
end
