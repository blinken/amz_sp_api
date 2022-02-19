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
  # An event related to a rental transaction.
  class RentalTransactionEvent
    # An Amazon-defined identifier for an order.
    attr_accessor :amazon_order_id

    # The type of rental event.  Possible values:  * RentalCustomerPayment-Buyout - Transaction type that represents when the customer wants to buy out a rented item.  * RentalCustomerPayment-Extension - Transaction type that represents when the customer wants to extend the rental period.  * RentalCustomerRefund-Buyout - Transaction type that represents when the customer requests a refund for the buyout of the rented item.  * RentalCustomerRefund-Extension - Transaction type that represents when the customer requests a refund over the extension on the rented item.  * RentalHandlingFee - Transaction type that represents the fee that Amazon charges sellers who rent through Amazon.  * RentalChargeFailureReimbursement - Transaction type that represents when Amazon sends money to the seller to compensate for a failed charge.  * RentalLostItemReimbursement - Transaction type that represents when Amazon sends money to the seller to compensate for a lost item.
    attr_accessor :rental_event_type

    # The number of days that the buyer extended an already rented item. This value is only returned for RentalCustomerPayment-Extension and RentalCustomerRefund-Extension events.
    attr_accessor :extension_length

    # The date and time when the financial event was posted.
    attr_accessor :posted_date

    # A list of charges associated with the rental event.
    attr_accessor :rental_charge_list

    # A list of fees associated with the rental event.
    attr_accessor :rental_fee_list

    # The name of the marketplace.
    attr_accessor :marketplace_name

    # The amount of money the customer originally paid to rent the item. This value is only returned for RentalChargeFailureReimbursement and RentalLostItemReimbursement events.
    attr_accessor :rental_initial_value

    # The amount of money Amazon sends the seller to compensate for a lost item or a failed charge. This value is only returned for RentalChargeFailureReimbursement and RentalLostItemReimbursement events.
    attr_accessor :rental_reimbursement

    # A list of taxes withheld information for a rental item.
    attr_accessor :rental_tax_withheld_list


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amazon_order_id' => :'AmazonOrderId',
        :'rental_event_type' => :'RentalEventType',
        :'extension_length' => :'ExtensionLength',
        :'posted_date' => :'PostedDate',
        :'rental_charge_list' => :'RentalChargeList',
        :'rental_fee_list' => :'RentalFeeList',
        :'marketplace_name' => :'MarketplaceName',
        :'rental_initial_value' => :'RentalInitialValue',
        :'rental_reimbursement' => :'RentalReimbursement',
        :'rental_tax_withheld_list' => :'RentalTaxWithheldList'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'amazon_order_id' => :'String',
        :'rental_event_type' => :'String',
        :'extension_length' => :'Integer',
        :'posted_date' => :'Date',
        :'rental_charge_list' => :'ChargeComponentList',
        :'rental_fee_list' => :'FeeComponentList',
        :'marketplace_name' => :'String',
        :'rental_initial_value' => :'Currency',
        :'rental_reimbursement' => :'Currency',
        :'rental_tax_withheld_list' => :'TaxWithheldComponentList'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AmazonOrderId')
        self.amazon_order_id = attributes[:'AmazonOrderId']
      end

      if attributes.has_key?(:'RentalEventType')
        self.rental_event_type = attributes[:'RentalEventType']
      end

      if attributes.has_key?(:'ExtensionLength')
        self.extension_length = attributes[:'ExtensionLength']
      end

      if attributes.has_key?(:'PostedDate')
        self.posted_date = attributes[:'PostedDate']
      end

      if attributes.has_key?(:'RentalChargeList')
        self.rental_charge_list = attributes[:'RentalChargeList']
      end

      if attributes.has_key?(:'RentalFeeList')
        self.rental_fee_list = attributes[:'RentalFeeList']
      end

      if attributes.has_key?(:'MarketplaceName')
        self.marketplace_name = attributes[:'MarketplaceName']
      end

      if attributes.has_key?(:'RentalInitialValue')
        self.rental_initial_value = attributes[:'RentalInitialValue']
      end

      if attributes.has_key?(:'RentalReimbursement')
        self.rental_reimbursement = attributes[:'RentalReimbursement']
      end

      if attributes.has_key?(:'RentalTaxWithheldList')
        self.rental_tax_withheld_list = attributes[:'RentalTaxWithheldList']
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
          amazon_order_id == o.amazon_order_id &&
          rental_event_type == o.rental_event_type &&
          extension_length == o.extension_length &&
          posted_date == o.posted_date &&
          rental_charge_list == o.rental_charge_list &&
          rental_fee_list == o.rental_fee_list &&
          marketplace_name == o.marketplace_name &&
          rental_initial_value == o.rental_initial_value &&
          rental_reimbursement == o.rental_reimbursement &&
          rental_tax_withheld_list == o.rental_tax_withheld_list
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [amazon_order_id, rental_event_type, extension_length, posted_date, rental_charge_list, rental_fee_list, marketplace_name, rental_initial_value, rental_reimbursement, rental_tax_withheld_list].hash
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
