# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Utility class for OAuth 2 authorization and token management.
  class OAuth2 < CoreLibrary::HeaderAuth
    include CoreLibrary
    # Display error message on occurrence of authentication failure.
    # @returns [String] The oAuth error message.
    def error_message
      'ClientCredentialsAuth: OAuthToken is undefined or expired.'
    end

    # Initialization constructor.
    def initialize(client_credentials_auth_credentials, config)
      auth_params = {}
      @_oauth_client_id = client_credentials_auth_credentials.oauth_client_id unless
        client_credentials_auth_credentials.nil? || client_credentials_auth_credentials.oauth_client_id.nil?
      @_oauth_client_secret = client_credentials_auth_credentials.oauth_client_secret unless
        client_credentials_auth_credentials.nil? || client_credentials_auth_credentials.oauth_client_secret.nil?
      @_oauth_token = client_credentials_auth_credentials.oauth_token unless
        client_credentials_auth_credentials.nil? || client_credentials_auth_credentials.oauth_token.nil?
      @_oauth_scopes = client_credentials_auth_credentials.oauth_scopes unless
        client_credentials_auth_credentials.nil? || client_credentials_auth_credentials.oauth_scopes.nil?
      @_o_auth_api = OauthAuthorizationController.new(config)
      auth_params['Authorization'] = "Bearer #{@_oauth_token.access_token}" unless @_oauth_token.nil?

      super auth_params
    end

    # Validates the oAuth token.
    # @return [Boolean] true if the token is present and not expired.
    def valid
      !@_oauth_token.nil? && !token_expired?(@_oauth_token)
    end

    # Builds the basic auth header for endpoints in the OAuth Authorization Controller.
    # @return [String] The value of the Authentication header.
    def build_basic_auth_header
      "Basic #{AuthHelper.get_base64_encoded_value(@_oauth_client_id, @_oauth_client_secret)}"
    end

    # Fetches the token.
    # @param [Hash] additional_params Any additional form parameters.
    # @return [OAuthToken] The oAuth token instance.
    def fetch_token(additional_params: nil)
      token = @_o_auth_api.request_token(
        build_basic_auth_header,
        scope: !@_oauth_scopes.nil? ? Array(@_oauth_scopes).compact.join(' ') : @_oauth_scopes,
        _field_parameters: additional_params
      ).data
      if token.respond_to?('expires_in') && !token.expires_in.nil?
        token.expiry = AuthHelper.get_token_expiry(token.expires_in, Time.now.utc.to_i)
      end
      token
    end

    # Checks if OAuth token has expired.
    # @param [OAuthToken] token The oAuth token instance.
    # @return [Boolean] true if the token's expiry exist and also the token is expired, false otherwise.
    def token_expired?(token)
      token.respond_to?('expiry') && AuthHelper.token_expired?(token.expiry)
    end
  end

  # Data class for ClientCredentialsAuthCredentials.
  class ClientCredentialsAuthCredentials
    attr_reader :oauth_client_id, :oauth_client_secret, :oauth_token,
                :oauth_scopes

    def initialize(oauth_client_id:, oauth_client_secret:, oauth_token: nil,
                   oauth_scopes: nil)
      raise ArgumentError, 'oauth_client_id cannot be nil' if oauth_client_id.nil?
      raise ArgumentError, 'oauth_client_secret cannot be nil' if oauth_client_secret.nil?

      @oauth_client_id = oauth_client_id
      @oauth_client_secret = oauth_client_secret
      @oauth_token = oauth_token
      @oauth_scopes = oauth_scopes
    end

    def clone_with(oauth_client_id: nil, oauth_client_secret: nil,
                   oauth_token: nil, oauth_scopes: nil)
      oauth_client_id ||= self.oauth_client_id
      oauth_client_secret ||= self.oauth_client_secret
      oauth_token ||= self.oauth_token
      oauth_scopes ||= self.oauth_scopes

      ClientCredentialsAuthCredentials.new(
        oauth_client_id: oauth_client_id,
        oauth_client_secret: oauth_client_secret, oauth_token: oauth_token,
        oauth_scopes: oauth_scopes
      )
    end
  end
end
