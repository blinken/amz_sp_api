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
  # A shipment, refund, guarantee claim, or chargeback.
  class ShipmentEvent
    # An Amazon-defined identifier for an order.
    attr_accessor :amazon_order_id

    # A seller-defined identifier for an order.
    attr_accessor :seller_order_id

    # The name of the marketplace where the event occurred.
    attr_accessor :marketplace_name

    # A list of order-level charges. These charges are applicable to Multi-Channel Fulfillment COD orders.
    attr_accessor :order_charge_list

    # A list of order-level charge adjustments. These adjustments are applicable to Multi-Channel Fulfillment COD orders.
    attr_accessor :order_charge_adjustment_list

    # A list of shipment-level fees.
    attr_accessor :shipment_fee_list

    # A list of shipment-level fee adjustments.
    attr_accessor :shipment_fee_adjustment_list

    # A list of order-level fees. These charges are applicable to Multi-Channel Fulfillment orders.
    attr_accessor :order_fee_list

    # A list of order-level fee adjustments. These adjustments are applicable to Multi-Channel Fulfillment orders.
    attr_accessor :order_fee_adjustment_list

    # A list of transactions where buyers pay Amazon through one of the credit cards offered by Amazon or where buyers pay a seller directly through COD.
    attr_accessor :direct_payment_list

    # The date and time when the financial event was posted.
    attr_accessor :posted_date

    attr_accessor :shipment_item_list

    # A list of shipment item adjustments.
    attr_accessor :shipment_item_adjustment_list


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amazon_order_id' => :'AmazonOrderId',
        :'seller_order_id' => :'SellerOrderId',
        :'marketplace_name' => :'MarketplaceName',
        :'order_charge_list' => :'OrderChargeList',
        :'order_charge_adjustment_list' => :'OrderChargeAdjustmentList',
        :'shipment_fee_list' => :'ShipmentFeeList',
        :'shipment_fee_adjustment_list' => :'ShipmentFeeAdjustmentList',
        :'order_fee_list' => :'OrderFeeList',
        :'order_fee_adjustment_list' => :'OrderFeeAdjustmentList',
        :'direct_payment_list' => :'DirectPaymentList',
        :'posted_date' => :'PostedDate',
        :'shipment_item_list' => :'ShipmentItemList',
        :'shipment_item_adjustment_list' => :'ShipmentItemAdjustmentList'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'amazon_order_id' => :'String',
        :'seller_order_id' => :'String',
        :'marketplace_name' => :'String',
        :'order_charge_list' => :'ChargeComponentList',
        :'order_charge_adjustment_list' => :'ChargeComponentList',
        :'shipment_fee_list' => :'FeeComponentList',
        :'shipment_fee_adjustment_list' => :'FeeComponentList',
        :'order_fee_list' => :'FeeComponentList',
        :'order_fee_adjustment_list' => :'FeeComponentList',
        :'direct_payment_list' => :'DirectPaymentList',
        :'posted_date' => :'Date',
        :'shipment_item_list' => :'ShipmentItemList',
        :'shipment_item_adjustment_list' => :'ShipmentItemList'
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

      if attributes.has_key?(:'SellerOrderId')
        self.seller_order_id = attributes[:'SellerOrderId']
      end

      if attributes.has_key?(:'MarketplaceName')
        self.marketplace_name = attributes[:'MarketplaceName']
      end

      if attributes.has_key?(:'OrderChargeList')
        self.order_charge_list = attributes[:'OrderChargeList']
      end

      if attributes.has_key?(:'OrderChargeAdjustmentList')
        self.order_charge_adjustment_list = attributes[:'OrderChargeAdjustmentList']
      end

      if attributes.has_key?(:'ShipmentFeeList')
        self.shipment_fee_list = attributes[:'ShipmentFeeList']
      end

      if attributes.has_key?(:'ShipmentFeeAdjustmentList')
        self.shipment_fee_adjustment_list = attributes[:'ShipmentFeeAdjustmentList']
      end

      if attributes.has_key?(:'OrderFeeList')
        self.order_fee_list = attributes[:'OrderFeeList']
      end

      if attributes.has_key?(:'OrderFeeAdjustmentList')
        self.order_fee_adjustment_list = attributes[:'OrderFeeAdjustmentList']
      end

      if attributes.has_key?(:'DirectPaymentList')
        self.direct_payment_list = attributes[:'DirectPaymentList']
      end

      if attributes.has_key?(:'PostedDate')
        self.posted_date = attributes[:'PostedDate']
      end

      if attributes.has_key?(:'ShipmentItemList')
        self.shipment_item_list = attributes[:'ShipmentItemList']
      end

      if attributes.has_key?(:'ShipmentItemAdjustmentList')
        self.shipment_item_adjustment_list = attributes[:'ShipmentItemAdjustmentList']
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
          seller_order_id == o.seller_order_id &&
          marketplace_name == o.marketplace_name &&
          order_charge_list == o.order_charge_list &&
          order_charge_adjustment_list == o.order_charge_adjustment_list &&
          shipment_fee_list == o.shipment_fee_list &&
          shipment_fee_adjustment_list == o.shipment_fee_adjustment_list &&
          order_fee_list == o.order_fee_list &&
          order_fee_adjustment_list == o.order_fee_adjustment_list &&
          direct_payment_list == o.direct_payment_list &&
          posted_date == o.posted_date &&
          shipment_item_list == o.shipment_item_list &&
          shipment_item_adjustment_list == o.shipment_item_adjustment_list
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [amazon_order_id, seller_order_id, marketplace_name, order_charge_list, order_charge_adjustment_list, shipment_fee_list, shipment_fee_adjustment_list, order_fee_list, order_fee_adjustment_list, direct_payment_list, posted_date, shipment_item_list, shipment_item_adjustment_list].hash
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
