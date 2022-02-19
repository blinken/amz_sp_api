=begin
#Selling Partner API for Authorization

#The Selling Partner API for Authorization helps developers manage authorizations and check the specific permissions associated with a given authorization.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

# Common files
require 'authorization-api-model/api_client'
require 'authorization-api-model/api_error'
require 'authorization-api-model/version'
require 'authorization-api-model/configuration'

# Models
require 'authorization-api-model/models/authorization_code'
require 'authorization-api-model/models/error'
require 'authorization-api-model/models/error_list'
require 'authorization-api-model/models/get_authorization_code_response'

# APIs
require 'authorization-api-model/api/authorization_api'

module AmzSpApi::AuthorizationApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::AuthorizationApiModel.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
