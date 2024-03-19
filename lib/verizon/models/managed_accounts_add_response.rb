# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ManagedAccountsAddResponse Model.
  class ManagedAccountsAddResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Transaction identifier
    # @return [String]
    attr_accessor :tx_id

    # Transaction identifier
    # @return [Array[StatusList]]
    attr_accessor :status_list

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['tx_id'] = 'TxId'
      @_hash['status_list'] = 'statusList'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        tx_id
        status_list
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(tx_id = SKIP,
                   status_list = SKIP)
      @tx_id = tx_id unless tx_id == SKIP
      @status_list = status_list unless status_list == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      tx_id = hash.key?('TxId') ? hash['TxId'] : SKIP
      # Parameter is an array, so we need to iterate through it
      status_list = nil
      unless hash['statusList'].nil?
        status_list = []
        hash['statusList'].each do |structure|
          status_list << (StatusList.from_hash(structure) if structure)
        end
      end

      status_list = SKIP unless hash.key?('statusList')

      # Create object from extracted values.
      ManagedAccountsAddResponse.new(tx_id,
                                     status_list)
    end
  end
end
