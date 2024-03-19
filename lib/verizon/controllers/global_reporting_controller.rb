# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # GlobalReportingController
  class GlobalReportingController < BaseController
    # Retreive the provisioning history of a specific device or devices.
    # @param [ESIMProvhistoryRequest] body Required parameter: Device
    # Provisioning History
    # @return [ESIMRequestResponse] response from the API call
    def deviceprovhistory_using_post(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/m2m/v2/devices/history/actions/list',
                                     Server::THINGSPACE)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('oAuth2')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ESIMRequestResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Bad request',
                                ESIMRestErrorResponseException)
                   .local_error('401',
                                'Unauthorized',
                                ESIMRestErrorResponseException)
                   .local_error('403',
                                'Forbidden',
                                ESIMRestErrorResponseException)
                   .local_error('404',
                                'Not Found / Does not exist',
                                ESIMRestErrorResponseException)
                   .local_error('406',
                                'Format / Request Unacceptable',
                                ESIMRestErrorResponseException)
                   .local_error('429',
                                'Too many requests',
                                ESIMRestErrorResponseException)
                   .local_error('default',
                                'Error response',
                                ESIMRestErrorResponseException))
        .execute
    end

    # Get the status of a request made with the Device Actions.
    # @param [String] accountname Required parameter: Example:
    # @param [String] request_id Required parameter: Example:
    # @return [ESIMStatusResponse] response from the API call
    def requeststatususing_get(accountname,
                               request_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/m2m/v2/accounts/{accountname}/requests/{requestID}/status',
                                     Server::THINGSPACE)
                   .template_param(new_parameter(accountname, key: 'accountname')
                                    .should_encode(true))
                   .template_param(new_parameter(request_id, key: 'requestID')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('oAuth2')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ESIMStatusResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Bad request',
                                ESIMRestErrorResponseException)
                   .local_error('401',
                                'Unauthorized',
                                ESIMRestErrorResponseException)
                   .local_error('403',
                                'Forbidden',
                                ESIMRestErrorResponseException)
                   .local_error('404',
                                'Not Found / Does not exist',
                                ESIMRestErrorResponseException)
                   .local_error('406',
                                'Format / Request Unacceptable',
                                ESIMRestErrorResponseException)
                   .local_error('429',
                                'Too many requests',
                                ESIMRestErrorResponseException)
                   .local_error('default',
                                'Error response',
                                ESIMRestErrorResponseException))
        .execute
    end
  end
end