=begin
#Selling Partner API for Reports

#The Selling Partner API for Reports lets you retrieve and manage a variety of reports that can help selling partners manage their businesses.

OpenAPI spec version: 2020-09-04

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

describe AmzSpApi::ReportsApiModel::Configuration do
  let(:config) { AmzSpApi::ReportsApiModel::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    #require 'URI'
    #uri = URI.parse("https://sellingpartnerapi-na.amazon.com/")
    #AmzSpApi::ReportsApiModel.configure do |c|
    #  c.host = uri.host
    #  c.base_path = uri.path
    #end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      #expect(config.base_url).to eq("https://sellingpartnerapi-na.amazon.com/")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        #expect(config.base_url).to eq("https://sellingpartnerapi-na.amazon.com/")
      end
    end
  end
end
