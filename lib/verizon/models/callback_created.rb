# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # CallbackCreated Model.
  class CallbackCreated < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The billing account number for which callback messages will be sent.
    # @return [String]
    attr_accessor :aname

    # The name of the callback service, which identifies the type and format of
    # messages that will be sent to the registered URL.
    # @return [String]
    attr_accessor :name

    # The address of the callback listening service where the ThingSpace
    # Platform will send callback messages for the service type.
    # @return [String]
    attr_accessor :url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['aname'] = 'aname'
      @_hash['name'] = 'name'
      @_hash['url'] = 'url'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        url
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(aname = nil,
                   name = nil,
                   url = SKIP)
      @aname = aname
      @name = name
      @url = url unless url == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      aname = hash.key?('aname') ? hash['aname'] : nil
      name = hash.key?('name') ? hash['name'] : nil
      url = hash.key?('url') ? hash['url'] : SKIP

      # Create object from extracted values.
      CallbackCreated.new(aname,
                          name,
                          url)
    end
  end
end
