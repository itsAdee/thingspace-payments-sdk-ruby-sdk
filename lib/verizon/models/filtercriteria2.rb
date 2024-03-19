# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Filtercriteria2 Model.
  class Filtercriteria2 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[Object]]
    attr_accessor :filter_criteria

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['filter_criteria'] = 'filterCriteria'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        filter_criteria
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(filter_criteria = SKIP)
      @filter_criteria = filter_criteria unless filter_criteria == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      filter_criteria =
        hash.key?('filterCriteria') ? hash['filterCriteria'] : SKIP

      # Create object from extracted values.
      Filtercriteria2.new(filter_criteria)
    end
  end
end
