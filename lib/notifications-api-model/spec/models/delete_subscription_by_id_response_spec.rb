=begin
#Selling Partner API for Notifications

#The Selling Partner API for Notifications lets you subscribe to notifications that are relevant to a selling partner's business. Using this API you can create a destination to receive notifications, subscribe to notifications, delete notification subscriptions, and more.  For more information, see the [Notifications Use Case Guide](https://github.com/amzn/selling-partner-api-docs/blob/main/guides/en-US/use-case-guides/notifications-api-use-case-guide/notifications-use-case-guide-v1.md)

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

# Unit tests for AmzSpApi::NotificationsApiModel::DeleteSubscriptionByIdResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DeleteSubscriptionByIdResponse' do
  before do
    # run before each test
    @instance = AmzSpApi::NotificationsApiModel::DeleteSubscriptionByIdResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DeleteSubscriptionByIdResponse' do
    it 'should create an instact of DeleteSubscriptionByIdResponse' do
      expect(@instance).to be_instance_of(AmzSpApi::NotificationsApiModel::DeleteSubscriptionByIdResponse)
    end
  end
  describe 'test attribute "errors"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

