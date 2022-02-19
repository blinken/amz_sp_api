=begin
#Selling Partner API for FBA Small And Light

#The Selling Partner API for FBA Small and Light lets you help sellers manage their listings in the Small and Light program. The program reduces the cost of fulfilling orders for small and lightweight FBA inventory. You can enroll or remove items from the program and check item eligibility and enrollment status. You can also preview the estimated program fees charged to a seller for items sold while enrolled in the program.

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

# Unit tests for AmzSpApi::FbaSmallAndLightApiModel::SmallAndLightEnrollmentStatus
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SmallAndLightEnrollmentStatus' do
  before do
    # run before each test
    @instance = AmzSpApi::FbaSmallAndLightApiModel::SmallAndLightEnrollmentStatus.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SmallAndLightEnrollmentStatus' do
    it 'should create an instact of SmallAndLightEnrollmentStatus' do
      expect(@instance).to be_instance_of(AmzSpApi::FbaSmallAndLightApiModel::SmallAndLightEnrollmentStatus)
    end
  end
end

