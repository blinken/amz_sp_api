=begin
#Selling Partner API for Direct Fulfillment Orders

#The Selling Partner API for Direct Fulfillment Orders provides programmatic access to a direct fulfillment vendor's order data.

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
require 'date'

# Unit tests for AmzSpApi::VendorDirectFulfillmentOrdersApiModel::TaxLineItem
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TaxLineItem' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentOrdersApiModel::TaxLineItem.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TaxLineItem' do
    it 'should create an instact of TaxLineItem' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentOrdersApiModel::TaxLineItem)
    end
  end
end

