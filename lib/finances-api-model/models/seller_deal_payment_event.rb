=begin
#Selling Partner API for Finances

#The Selling Partner API for Finances helps you obtain financial information relevant to a seller's business. You can obtain financial events for a given order, financial event group, or date range without having to wait until a statement period closes. You can also obtain financial event groups for a given date range.

OpenAPI spec version: v0

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

require 'date'

module AmzSpApi::FinancesApiModel
  # An event linked to the payment of a fee related to the specified deal.
  class SellerDealPaymentEvent
    # The date and time when the financial event was posted.
    attr_accessor :posted_date

    # The unique identifier of the deal.
    attr_accessor :deal_id

    # The internal description of the deal.
    attr_accessor :deal_description

    # The type of event: SellerDealComplete.
    attr_accessor :event_type

    # The type of fee: RunLightningDealFee.
    attr_accessor :fee_type

    # The monetary amount of the fee.
    attr_accessor :fee_amount

    # The monetary amount of the tax applied.
    attr_accessor :tax_amount

    # The total monetary amount paid.
    attr_accessor :total_amount


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'posted_date' => :'postedDate',
        :'deal_id' => :'dealId',
        :'deal_description' => :'dealDescription',
        :'event_type' => :'eventType',
        :'fee_type' => :'feeType',
        :'fee_amount' => :'feeAmount',
        :'tax_amount' => :'taxAmount',
        :'total_amount' => :'totalAmount'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'posted_date' => :'Date',
        :'deal_id' => :'String',
        :'deal_description' => :'String',
        :'event_type' => :'String',
        :'fee_type' => :'String',
        :'fee_amount' => :'Currency',
        :'tax_amount' => :'Currency',
        :'total_amount' => :'Currency'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'postedDate')
        self.posted_date = attributes[:'postedDate']
      end

      if attributes.has_key?(:'dealId')
        self.deal_id = attributes[:'dealId']
      end

      if attributes.has_key?(:'dealDescription')
        self.deal_description = attributes[:'dealDescription']
      end

      if attributes.has_key?(:'eventType')
        self.event_type = attributes[:'eventType']
      end

      if attributes.has_key?(:'feeType')
        self.fee_type = attributes[:'feeType']
      end

      if attributes.has_key?(:'feeAmount')
        self.fee_amount = attributes[:'feeAmount']
      end

      if attributes.has_key?(:'taxAmount')
        self.tax_amount = attributes[:'taxAmount']
      end

      if attributes.has_key?(:'totalAmount')
        self.total_amount = attributes[:'totalAmount']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          posted_date == o.posted_date &&
          deal_id == o.deal_id &&
          deal_description == o.deal_description &&
          event_type == o.event_type &&
          fee_type == o.fee_type &&
          fee_amount == o.fee_amount &&
          tax_amount == o.tax_amount &&
          total_amount == o.total_amount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [posted_date, deal_id, deal_description, event_type, fee_type, fee_amount, tax_amount, total_amount].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = AmzSpApi::FinancesApiModel.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
