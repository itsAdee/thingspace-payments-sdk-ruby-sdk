# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ThingSpaceQualityOfServiceAPIActionsController
  class ThingSpaceQualityOfServiceAPIActionsController < BaseController
    # Creates a QoS elevation subscription ID and activates the subscription.
    # @param [SubscribeRequest] body Required parameter: The request details to
    # create a ThingSpace Quality of Service API subscription.
    # @return [M201success] response from the API call
    def create_a_thing_space_quality_of_service_api_subscription(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/m2m/v1/devices/actions/enhanceQoS',
                                     Server::THINGSPACE)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('oAuth2')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(M201success.method(:from_hash))
                   .is_api_response(true)
                   .local_error('default',
                                'Error Response',
                                DefaultResponseException))
        .execute
    end

    # Stops an active ThingSpace Quality of Service API subscription using the
    # account name and the subscription ID.
    # @param [String] account_name Required parameter: Example:
    # @param [String] qos_subscription_id Required parameter: Example:
    # @return [M201success] response from the API call
    def stop_a_thing_space_quality_of_service_api_subscription(account_name,
                                                               qos_subscription_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/m2m/v1/devices/actions/enhanceQoS',
                                     Server::THINGSPACE)
                   .query_param(new_parameter(account_name, key: 'accountName'))
                   .query_param(new_parameter(qos_subscription_id, key: 'qosSubscriptionId'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('oAuth2')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(M201success.method(:from_hash))
                   .is_api_response(true)
                   .local_error('default',
                                'Error Response',
                                DefaultResponseException))
        .execute
    end
  end
end