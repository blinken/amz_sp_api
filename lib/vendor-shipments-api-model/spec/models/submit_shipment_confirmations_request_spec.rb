=begin
#Selling Partner API for Retail Procurement Shipments

#The Selling Partner API for Retail Procurement Shipments provides programmatic access to retail shipping data for vendors.

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

# Unit tests for AmzSpApi::VendorShipmentsApiModel::SubmitShipmentConfirmationsRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SubmitShipmentConfirmationsRequest' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorShipmentsApiModel::SubmitShipmentConfirmationsRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SubmitShipmentConfirmationsRequest' do
    it 'should create an instact of SubmitShipmentConfirmationsRequest' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorShipmentsApiModel::SubmitShipmentConfirmationsRequest)
    end
  end
  describe 'test attribute "shipment_confirmations"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

