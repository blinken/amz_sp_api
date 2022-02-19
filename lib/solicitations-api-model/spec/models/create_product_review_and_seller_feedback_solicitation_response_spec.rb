=begin
#Selling Partner API for Solicitations

#With the Solicitations API you can build applications that send non-critical solicitations to buyers. You can get a list of solicitation types that are available for an order that you specify, then call an operation that sends a solicitation to the buyer for that order. Buyers cannot respond to solicitations sent by this API, and these solicitations do not appear in the Messaging section of Seller Central or in the recipient's Message Center. The Solicitations API returns responses that are formed according to the <a href=https://tools.ietf.org/html/draft-kelly-json-hal-08>JSON Hypertext Application Language</a> (HAL) standard.

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

# Unit tests for AmzSpApi::SolicitationsApiModel::CreateProductReviewAndSellerFeedbackSolicitationResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreateProductReviewAndSellerFeedbackSolicitationResponse' do
  before do
    # run before each test
    @instance = AmzSpApi::SolicitationsApiModel::CreateProductReviewAndSellerFeedbackSolicitationResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateProductReviewAndSellerFeedbackSolicitationResponse' do
    it 'should create an instact of CreateProductReviewAndSellerFeedbackSolicitationResponse' do
      expect(@instance).to be_instance_of(AmzSpApi::SolicitationsApiModel::CreateProductReviewAndSellerFeedbackSolicitationResponse)
    end
  end
  describe 'test attribute "errors"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

