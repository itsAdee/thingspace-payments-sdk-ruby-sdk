# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ManagedAccountCancelResponse Model.
  class ManagedAccountCancelResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Transaction identifier
    # @return [String]
    attr_accessor :txid

    # Managed account identifier
    # @return [String]
    attr_accessor :account_name

    # Primary account identifier
    # @return [String]
    attr_accessor :paccount_name

    # Service name
    # @return [ServiceNameEnum]
    attr_accessor :service_name

    # Deactivate/cancel status, Success or Fail
    # @return [String]
    attr_accessor :status

    # Detailed reason
    # @return [String]
    attr_accessor :reason

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['txid'] = 'txid'
      @_hash['account_name'] = 'accountName'
      @_hash['paccount_name'] = 'paccountName'
      @_hash['service_name'] = 'serviceName'
      @_hash['status'] = 'status'
      @_hash['reason'] = 'reason'
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

    def initialize(txid = nil,
                   account_name = nil,
                   paccount_name = nil,
                   service_name = ServiceNameEnum::LOCATION,
                   status = nil,
                   reason = nil)
      @txid = txid
      @account_name = account_name
      @paccount_name = paccount_name
      @service_name = service_name
      @status = status
      @reason = reason
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      txid = hash.key?('txid') ? hash['txid'] : nil
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      paccount_name = hash.key?('paccountName') ? hash['paccountName'] : nil
      service_name = hash['serviceName'] ||= ServiceNameEnum::LOCATION
      status = hash.key?('status') ? hash['status'] : nil
      reason = hash.key?('reason') ? hash['reason'] : nil

      # Create object from extracted values.
      ManagedAccountCancelResponse.new(txid,
                                       account_name,
                                       paccount_name,
                                       service_name,
                                       status,
                                       reason)
    end
  end
end
