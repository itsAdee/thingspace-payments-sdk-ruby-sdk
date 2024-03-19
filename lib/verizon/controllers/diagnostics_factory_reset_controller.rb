# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # DiagnosticsFactoryResetController
  class DiagnosticsFactoryResetController < BaseController
    # Performs a device reboot or a factory reset on the modem portion of the
    # device.
    # @param [DeviceResetRequest] body Required parameter: A request to perform
    # a device reboot.
    # @return [DiagnosticsObservationResult] response from the API call
    def decives_restart(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/devices/actions/restart',
                                     Server::DEVICE_DIAGNOSTICS)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('oAuth2')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(DiagnosticsObservationResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('default',
                                'Error response.',
                                DeviceDiagnosticsResultException))
        .execute
    end
  end
end
