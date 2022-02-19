=begin
#Selling Partner APIs for Fulfillment Outbound

#The Selling Partner API for Fulfillment Outbound lets you create applications that help a seller fulfill Multi-Channel Fulfillment orders using their inventory in Amazon's fulfillment network. You can get information on both potential and existing fulfillment orders.

OpenAPI spec version: 2020-07-01

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

# Unit tests for AmzSpApi::FulfillmentOutboundApiModel::FeatureSettings
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeatureSettings' do
  before do
    # run before each test
    @instance = AmzSpApi::FulfillmentOutboundApiModel::FeatureSettings.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeatureSettings' do
    it 'should create an instact of FeatureSettings' do
      expect(@instance).to be_instance_of(AmzSpApi::FulfillmentOutboundApiModel::FeatureSettings)
    end
  end
  describe 'test attribute "feature_name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "feature_fulfillment_policy"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Required", "NotRequired"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.feature_fulfillment_policy = value }.not_to raise_error
       #end
    end
  end

end

