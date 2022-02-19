=begin
#Selling Partner API for Retail Procurement Payments

#The Selling Partner API for Retail Procurement Payments provides programmatic access to vendors payments data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'

# Unit tests for AmzSpApi::VendorInvoicesApiModel::VendorPaymentsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VendorPaymentsApi' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorInvoicesApiModel::VendorPaymentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VendorPaymentsApi' do
    it 'should create an instact of VendorPaymentsApi' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorInvoicesApiModel::VendorPaymentsApi)
    end
  end

  # unit tests for submit_invoices
  # 
  # Submit new invoices to Amazon.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 10 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [SubmitInvoicesResponse]
  describe 'submit_invoices test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
